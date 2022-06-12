package com.acwd.pfs;

import java.util.ArrayList;

public class BusinessLead extends BusinessEmployee{
    public int headCount;
    private ArrayList<Accountant> team;
    private double bonusBudget;

    public BusinessLead(String name) {
        super(name);
        this.setBaseSalary(getBaseSalary() * 2);
        this.headCount=10;
        this.team = new ArrayList<Accountant>();
    }

    public double getBonusBudget() {
        return bonusBudget;
    }

    public void setBonusBudget(double bonusBudget) {
        this.bonusBudget = bonusBudget;
    }

    public boolean hasHeadCount() {
        return team.size() < this.headCount;
    }

    public boolean addReport(Accountant e, TechnicalLead supportTeam) {
        if (hasHeadCount()) {
            team.add(e);
            e.setManager(this);
            e.supportTeam(supportTeam);
            supportTeam.setAccoutant(e);
            this.setBonusBudget(this.getBaseSalary() + (e.getBaseSalary() * 1.1));
            return true;
        } else {
            return false;
        }
    }

    public boolean requestBonus(Employee e, double bonus) {
        if (bonus <= this.getBonusBudget()) {
            this.setBonusBudget(this.getBonusBudget() - bonus);
            return true;
        } else {
            return false;
        }
    }

    public boolean approveBonus(Employee e, double bonus) {
        TechnicalLead t1 = (TechnicalLead) e.getManager();
        Accountant accountant;
        accountant = t1.getAccountant();
        if (team.contains(accountant)) {
            if (accountant.approveBonus(bonus)) {
                accountant.setBonusBudget(accountant.getBonusBudget() - bonus);
                return true;
            }
        }
        return false;
    }

    public String getTeamStatus(){

        if (team.size()==0){
            return this.employeeStatus()+ " and no direct reports yet";
        } else {
            String teamStatus="";
            for (int i=0;i<team.size();i++){
                teamStatus+=("    "+team.get(i).employeeStatus()+"\n");
            }
            return this.employeeStatus()+" and is managing: \n"+teamStatus;

        }
    }
}
