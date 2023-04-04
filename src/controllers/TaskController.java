package controllers;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;
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

	@Override
	public void update() {
		TaskQuery taskQuery = TaskQuery.create();
		tasks = taskQuery
				.where().currentUserCanWorkOn()
				.orderBy().state().ascending().taskId().descending().executor().results();
	}

	public List<ITask> getTasks() {
		return tasks;
	}

	public void setTasks(List<ITask> tasks) {
		this.tasks = tasks;
	}

}