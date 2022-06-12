package com.acwd.pfs;
public class SoftwareEngineer extends TechnicalEmployee {   //Jey
//    private boolean managerApproval;
    private boolean codeAccess;
    int successfulCheckIns;

    public SoftwareEngineer(String name) {   //Jey
        super(name);   //Jey
        successfulCheckIns = 0;
    }
    //methods


    public boolean isCodeAccess() { //Assignment
        return codeAccess;
    }

    public void setCodeAccess(boolean access) { //Assignment
        this.codeAccess = access;
    }

    public int getSuccessfulCheckIns() { //Assignment
        return ++successfulCheckIns;
    }

    public boolean checkInCode() {  //Day 1
        boolean managerApproval = false;  //Day 1

        Employee manager = this.getManager();  //Day 1
        if (manager == null)  //Day 1
            return true;  //Day 1

        TechnicalLead t1 = (TechnicalLead) manager;  //Day 1

        managerApproval = t1.approveCheckIn(this);  //Day 1
        if (managerApproval && this.isCodeAccess()) {  //Day 1
            this.setCheckIns(this.getSuccessfulCheckIns() + 1);  //Day 1
            return true;  //Day 1
        }else  //Day 1
            return false;  //Day 1
    }

//
//    public String employeeStatus(){
//        return String.format("%d %s have %d check-ins, access to code %s.", this.getEmpolyeeID(), this.getName(), this.getSuccessfulCheckIns(), this.checkInCode());
//    }



}
