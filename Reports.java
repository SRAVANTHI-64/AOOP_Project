package neighbhourhoodwatchapp.model;

import java.sql.Timestamp;

public class Reports {
    private String title;
    private String description;
    private String location;
    private Timestamp reportedAt;

    // Constructors
    public Reports() {}

    public Reports(String title, String description, String location, Timestamp reportedAt) {
        this.title = title;
        this.description = description;
        this.location = location;
        this.reportedAt = reportedAt;
    }

    // Getters & Setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }

    public Timestamp getReportedAt() { return reportedAt; }
    public void setReportedAt(Timestamp reportedAt) { this.reportedAt = reportedAt; }
}
