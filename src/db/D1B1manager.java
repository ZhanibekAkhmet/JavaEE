package db;

import models.Task;

import java.util.ArrayList;

public class D1B1manager {
    public static ArrayList<Task> tasks=new ArrayList<>();
    public static long id=1L;

    public static void addTask(Task task){
        tasks.add(task);
        task.setId(id);
        id++;
    }
    public static ArrayList<Task> getTasks(){
        return tasks;
    }
    public static Task getTask1(Long id){
        for(Task task: tasks){
            if(task.getId()==id){
                return task;
            }
        }
        return null;
    }
    public static void deleteTask(Long id){
        for (Task tas:tasks){
            if(tas.getId().equals(id)){
                tasks.remove(tas);
                break;
            }
        }
    }
    public static void editTask(Long id,Task task){
        int x=0;
        for (Task tas:tasks){
            x=x+1;
            if(tas.getId().equals(id)){
                tasks.set(x-1,task);
                break;
            }
        }
    }
}
