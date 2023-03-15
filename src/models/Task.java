package models;

public class Task {
    private Long id;
    private String name;
    private String description;
    private String deadlineDate;
     private boolean vipolneno;

    public Task(Long id, String name, String description, String deadlineDate, boolean vipolneno) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
        this.vipolneno= vipolneno;
    }

    public Task() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public boolean isVipolneno() {
        return vipolneno;
    }

    public void setVipolneno(boolean vipolneno) {
        this.vipolneno = vipolneno;
    }
}
