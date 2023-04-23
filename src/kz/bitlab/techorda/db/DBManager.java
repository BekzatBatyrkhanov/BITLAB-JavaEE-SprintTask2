package kz.bitlab.techorda.db;

import java.util.ArrayList;

public class DBManager {
    private static final ArrayList<Tasks> tasks = new ArrayList<>();
    private static int id = 0;

    static {

    }

     public static void addTask(Tasks task) {
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Tasks getTask(int id) {
        return tasks.stream().filter(tasks -> tasks.getId()==id).findFirst().orElse(null);
    }

    public static ArrayList<Tasks> getAllTasks() {
        return tasks;
    }

    public static void deleteTask(int id) {
        for(int i = 0; i < tasks.size(); i++) {
            if(tasks.get(i).getId() == id) {
                tasks.remove(i);
                break;
            }
        }
    }

    public static void updateTask(Tasks task1) {
        for(int i = 0; i < tasks.size(); i++) {
            if(tasks.get(i).getId() == task1.getId()) {
                tasks.set(i, task1);
                break;
            }
        }
    }




}
