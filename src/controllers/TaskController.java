package controllers;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.query.TaskQuery;

@ManagedBean
@SessionScoped
public class TaskController implements Serializable {

	private static final long serialVersionUID = 1L;

	List<ITask> tasks;

	@PostConstruct
	public void init() {
		update();
		Ivy.log().error("Init task: " + tasks);
	}

	public void redirect() {
		Ivy.getInstance().log.info("Redirect to Task Page");
		update();
		try {
			FacesContext.getCurrentInstance().getExternalContext().redirect("TaskPage.xhtml");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void update() {
		TaskQuery taskQuery = TaskQuery.create();
		tasks = taskQuery.orderBy().name().ascending().executor().results();
	}

	public List<ITask> getTasks() {
		return tasks;
	}

	public void setTasks(List<ITask> tasks) {
		this.tasks = tasks;
	}

}