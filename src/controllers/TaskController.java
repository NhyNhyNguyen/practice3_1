package controllers;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.query.TaskQuery;

@ManagedBean
public class TaskController extends AbstractController implements Serializable {

	private static final long serialVersionUID = 1L;

	List<ITask> tasks;

	@PostConstruct
	public void init() {
		update();
		Ivy.log().error("Init task: " + tasks);
	}

	public String getRequestPath(ITask iTask) {
		return String.format("/ivy/pro/%s?taskId=%s", iTask.getFullRequestPath(), String.valueOf(iTask.getId()));
	}

	public void redirect() {
		super.redirect("TaskPage.xhtml");
	}

	public void redirectProcess(ITask iTask) {
		try {
			FacesContext.getCurrentInstance().getExternalContext().redirect(getRequestPath(iTask));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void update() {
		TaskQuery taskQuery = TaskQuery.create();
		List<Long> roles = Ivy.session().getSessionRole().getChildRoles().stream().map(t -> t.getId()).collect(Collectors.toList());

		tasks = taskQuery
				.orderBy().state().ascending().taskId().descending().executor().results();
		tasks = tasks.stream().filter(t -> t.getActivator()  != null && roles.contains(t.getActivator().getId())).collect(Collectors.toList());
	}

	public List<ITask> getTasks() {
		return tasks;
	}

	public void setTasks(List<ITask> tasks) {
		this.tasks = tasks;
	}

}