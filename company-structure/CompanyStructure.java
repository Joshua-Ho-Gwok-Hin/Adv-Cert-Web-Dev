package com.acwd.pfs;

import java.sql.SQLOutput;

public class CompanyStructure {     //Day 1
    public static void main(String[] args) {

//        SoftwareEngineer charlie = new SoftwareEngineer("Charlie");     //Day 1
//
//        TechnicalLead t1 = new TechnicalLead("John");
//        SoftwareEngineer se = new SoftwareEngineer("Alice");
//        BusinessLead bg = new BusinessLead("Bill Gates");
//
//        System.out.println(t1.employeeStatus());
//        System.out.println((t1.getName()));
//        System.out.println(se.employeeStatus());
//        System.out.println(se.getName() + " " + se.getBaseSalary());

        TechnicalLead CTO = new TechnicalLead("Satya Nadella");
        SoftwareEngineer seA = new SoftwareEngineer("Kasey");
        SoftwareEngineer seB = new SoftwareEngineer("Breana");
        SoftwareEngineer seC = new SoftwareEngineer("Eric");

        CTO.addReport(seA);
        CTO.addReport(seB);
        CTO.addReport(seC);
        System.out.println(CTO.getTeamStatus());

        TechnicalLead VPofENG = new TechnicalLead("Bill Gates");
        SoftwareEngineer seD = new SoftwareEngineer("Winter");
        SoftwareEngineer seE = new SoftwareEngineer("Libby");
        SoftwareEngineer seF = new SoftwareEngineer("Gizan");
        SoftwareEngineer seG = new SoftwareEngineer("Zaynah");

        VPofENG.addReport(seD);
        VPofENG.addReport(seF);
        VPofENG.addReport(seE);
        VPofENG.addReport(seG);
        System.out.println(VPofENG.getTeamStatus());

        BusinessLead CFO = new BusinessLead("Amy Hood");
        Accountant actA = new Accountant("Niky");
        Accountant actB = new Accountant("Andrew");

        CFO.addReport(actA, CTO);
        CFO.addReport(actB,VPofENG);
        System.out.println(CFO.getTeamStatus());



    }









}
