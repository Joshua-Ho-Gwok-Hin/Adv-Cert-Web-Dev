package com.acwd.pfs;

public class BusinessEmployee extends Employee {     //Day 1
    public int checkIns;   //Jey
    private double bonusBudget;   //Jey

    public BusinessEmployee(String name) {
        super(name, 50000);
    }

    @Override
    public String employeeStatus(){     //Day 1
        return String.format("%d %s with a budget of %.1f",     //Day 1
                this.getEmpolyeeID(), this.getName(), this.bonusBudget);     //Day 1
    }

    @Override
    protected void setAccoutant(Accountant e) {

    }

    @Override
    protected Accountant getAccountant() {
        return null;
    }

    public double getBonusBudget() {
        return bonusBudget;
    }   //Jey

}
