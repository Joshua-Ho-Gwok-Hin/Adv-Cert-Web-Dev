package com.aaa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="known_error_database")
public class KEDB {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	
	@Column(name="author")
	private String author;
	
	@Column(name="description")
	private String problemDescription;
	
	@Column(name="priority")
	private String priority;
	
	@Column(name="status")
	private String status;
	
	@Column(name="resolution_description")
	private String resolution;
	
	@Column(name="date_resolved")
	private String resolutionDate;
	
	@Column(name="create_timestamp")
	private String problemCreateDate;
	
	@Column(name="last_edit_timestamp")
	private String problemLastUpdate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getResolution() {
		return resolution;
	}

	public void setResolution(String resolution) {
		this.resolution = resolution;
	}

	public String getProblemDescription() {
		return problemDescription;
	}

	public void setProblemDescription(String problemDescription) {
		this.problemDescription = problemDescription;
	}

	public String getResolutionDate() {
		return resolutionDate;
	}

	public void setResolutionDate(String resolutionDate) {
		this.resolutionDate = resolutionDate;
	}

	public String getProblemCreateDate() {
		return problemCreateDate;
	}

	public void setProblemCreateDate(String problemCreateDate) {
		this.problemCreateDate = problemCreateDate;
	}

	public String getProblemLastUpdate() {
		return problemLastUpdate;
	}

	public void setProblemLastUpdate(String problemLastUpdate) {
		this.problemLastUpdate = problemLastUpdate;
	}

	@Override
	public String toString() {
		return "KEDB [id=" + id + ", author=" + author + ", problemDescription=" + problemDescription + ", priority="
				+ priority + ", status=" + status + ", resolution=" + resolution + ", resolutionDate=" + resolutionDate
				+ ", problemCreateDate=" + problemCreateDate + ", problemLastUpdate=" + problemLastUpdate + "]";
	}	
}
