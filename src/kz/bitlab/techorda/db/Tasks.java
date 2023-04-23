package kz.bitlab.techorda.db;

public class Tasks {
    int id;
    String name;
    String description;
    String deadlineDate;
    boolean done;

    public Tasks() {}

    public Tasks(int id, String name, String description, String deadlineDate) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getDone() {
        if(done) return "Да";
        else return "Нет";
    }
    public void setDone(String done1) {
        if(done1.equals("Да")) {
            done = true;
        }
        else done = false;
    }
}
