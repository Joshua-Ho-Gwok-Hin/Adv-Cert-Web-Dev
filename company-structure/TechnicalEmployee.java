package com.acwd.pfs;

public class TechnicalEmployee extends Employee {     //Day 1
    private int checkIns;   //Jey

    //Contructor
    public TechnicalEmployee(String name) {    //Assignment
        super(name, 75000);
        checkIns = 0;
    }

    @Override
    public String employeeStatus(){     //Day 1
        return String.format("%d %s has %d successful check ins",     //Day 1
                this.getEmpolyeeID(), this.getName(), this.checkIns);     //Day 1
    }

    @Override
    protected void setAccoutant(Accountant e) {

    }

    @Override
    protected Accountant getAccountant() {
        return null;
    }

    public int getCheckIns() {
        return checkIns;
    }
    public void setCheckIns(int checkIns) {
        this.checkIns = checkIns;
    }
}
