package com.acwd.pfs;

import java.util.ArrayList;

public class TechnicalLead extends TechnicalEmployee {   //Jey
    private ArrayList<SoftwareEngineer> team;   //Jey
    public int headCount;   //Jey

    //constructor

    public TechnicalLead(String name) {   //Jey
        super(name);   //Jey
        this.setBaseSalary(this.getBaseSalary() * 1.3);   //Jey
        this.headCount = 4;   //Jey
        team = new ArrayList<SoftwareEngineer>();
    }

    public boolean hasHeadCount() {  //Day 1
        return team.size() < this.headCount;  //Day 1
    }

    public boolean addReport(SoftwareEngineer e) {   //Jey
        if (hasHeadCount()) {   //Jey
            team.add(e);   //Jey
            e.setManager(this);   //Jey
            return true;   //Jey
        } else {   //Jey
            return false;   //Jey
        }
    }

    public boolean approveCheckIn(SoftwareEngineer e) { //Assignment
        if ((team.contains(e)) && (e.isCodeAccess())) { //Assignment
            this.setCheckIns(this.getCheckIns() + 1); //Assignment
            return true; //Assignment
        } else { //Assignment
            return false; //Assignment
        }
    }

    public String getTeamStatus() {
        String teamStatus;
        if (team.size() == 0) {
            return this.employeeStatus() + " and no direct reports yet.";
        } else {
            teamStatus = "";
            for (int n = 0; n < team.size(); n++) {
                teamStatus += ("    " + team.get(n).employeeStatus() + "\n");
            }
        }
        return this.employeeStatus() + " and is managing: \n" + teamStatus;
    }

    public boolean requestBonus(Employee e, double bonus) {
       //Should check if the bonus amount requested would be
        //approved by the BusinessLead supporting this
        //TechnicalLead. If it is, that employee should get that bonus
        //and true should be returned. False should be returned
        //otherwise
        BusinessLead businessLead = (BusinessLead) getAccountSupport().getManager();
        if (businessLead.approveBonus(e, bonus)) {
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<SoftwareEngineer> getTeam() {
        return team;
    }

    public void setTeam(ArrayList<SoftwareEngineer> team) {
        this.team = team;
    }

}


