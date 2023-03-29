package controllers;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.query.TaskQuery;

@ManagedBean
@SessionScoped
public class TaskController extends AbstractController implements Serializable {

	private static final long serialVersionUID = 1L;

	List<ITask> tasks;

	@PostConstruct
	public void init() {
		update();
		Ivy.log().error("Init task: " + tasks);
	}

	public void redirect() {
		super.redirect("TaskPage.xhtml");
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