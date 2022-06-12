package com.acwd.pfs;

public class Accountant extends BusinessEmployee{
    private double bonusBudget;
    private TechnicalLead teamSupported;
    public double budget;
    public double bonus;

    public Accountant(String name) {    //Day 2
        super(name);    //Day 2
        this.setBonusBudget(0);    //Day 2

    }

    void setBonusBudget(double bonusBudget) {
        this.bonusBudget = bonusBudget;
    }

    public TechnicalLead getTeamSupported() {    //Day 2
        return teamSupported;    //Day 2
    }

    public void supportTeam(TechnicalLead lead) {    //Day 2
        this.teamSupported = lead;
        double budget = 0;
        for(SoftwareEngineer e:lead.getTeam()) {
            budget += e.getBaseSalary();
            budget += budget * 1.1;
            this.setBonusBudget(budget);
        }
    }

    public boolean approveBonus(double bonusBudget) {    //Day 2
        return (bonus <= this.getBonusBudget());

    }

    @Override
    public String employeeStatus() {    //Day 2
    String result;    //Day 2
    result = super.employeeStatus();    //Day 2
    result += " supporting " + teamSupported.getName();    //Day 2
    return result;    //Day 2
    }
}
