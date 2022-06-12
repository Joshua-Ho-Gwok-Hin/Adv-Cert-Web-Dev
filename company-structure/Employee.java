package com.acwd.pfs;

public abstract class Employee {     //Day 1

    static int counter = 1;
    private int empolyeeID;     //Day 1
    private String name;     //Day 1
    private double baseSalary;     //Day 1
    private Employee manager;   //Day 1
    public Accountant accountSupport;

    public Employee(String name, double baseSalary){    //Assignment
        this.name = name;   //Jey
        this.baseSalary = baseSalary;   //Jey
        this.empolyeeID = counter;   //Jey
        ++counter;   //Jey
    }

    public int getEmpolyeeID() {
        return empolyeeID;
    }     //Day 1

    public String getName() {
        return name;
    }     //Day 1

    public double getBaseSalary() {
        return baseSalary;
    }     //Day 1

    protected void setBaseSalary(double baseSalary) {
        this.baseSalary = baseSalary;
    }

    protected Employee getManager() {
        return manager;
    }     //Day 1

    public void setManager(Employee manager) {
        this.manager = manager;
    }     //Day 1

    public Employee getAccountSupport() {
        return accountSupport;
    }

    public abstract String employeeStatus();     //Day 1

    public boolean equals(Employee other){   //Jey
        return this.empolyeeID == other.empolyeeID;   //Jey
    }

    public String toString() {return this.empolyeeID + " " + this.name;   //Jey
    }

    public static int getCounter() {
        return counter;
    }

    protected abstract void setAccoutant(Accountant e);

    protected abstract Accountant getAccountant();
}
