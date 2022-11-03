/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;


/**
 *
 * @author ngoan
 */
public class Student {

    private int id;
    private String name;
    private boolean gender;
    private Date dob;
    private java.util.Date created_time;
    private Department dept;
    private ArrayList<Group> groups = new ArrayList<>();
    private ArrayList<Attandance> atts = new ArrayList<>();
    private ArrayList<Skill> skills = new ArrayList<>();
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

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    public ArrayList<Attandance> getAtts() {
        return atts;
    }

    public void setAtts(ArrayList<Attandance> atts) {
        this.atts = atts;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public java.util.Date getCreated_time() {
        return created_time;
    }

    public void setCreated_time(java.util.Date created_time) {
        this.created_time = created_time;
    }

    public Department getDept() {
        return dept;
    }

    public void setDept(Department dept) {
        this.dept = dept;
    }

    public ArrayList<Skill> getSkills() {
        return skills;
    }

    public void setSkills(ArrayList<Skill> skills) {
        this.skills = skills;
    }

}