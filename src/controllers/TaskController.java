package controllers;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.query.TaskQuery;

@ManagedBean
@SessionScoped
public class TaskController extends AbstractController implements Serializable {

	private static final long serialVersionUID = 1L;

	List<ITask> tasks;
	List<ITask> fitlerTasks = new ArrayList<>();

	TaskState[] states = TaskState.values();

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

	public TaskState[] getStates() {
		return states;
	}

	public List<ITask> getFitlerTasks() {
		return fitlerTasks;
	}

	public void setFitlerTasks(List<ITask> fitlerTasks) {
		this.fitlerTasks = fitlerTasks;
	}

	public void setStates(TaskState[] states) {
		this.states = states;
	}
	
	
	

	
}