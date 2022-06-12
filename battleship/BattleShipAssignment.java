package com.acwd.pfs;
import java.util.InputMismatchException;
import java.util.Scanner;

public class BattleShipAssignment {

    private static final int TOTAL_SHIPS = 5;
    private static final char NULL_CHAR = '\u0000';
    private static final char PLAYER_SHIP = '1';
    private static final char COMPUTER_SHIP = '2';
    private static final char PLAYER_MISSED = '-';
    private static final char SUNK_PLAYER = 'x';
    private static final char SUNK_COMPUTER = '!';

    private static int numShipsPlayer;
    private static int numShipsComputer;
    private static char[][] myGrid;

    public static void main(String[] args) {
        myGrid = new char[10][10];
        printWelcomeMsg();
        printOceanMap();
        deployShips();
        deployComputerShips();
        startBattle();
    }// main()

    private static void printWelcomeMsg() {
        System.out.println();
        System.out.println("**** Welcome to Battle Ships Game ****");
        System.out.println();
        System.out.println("Right now, sea is empty.");
        System.out.println();
    }// printWelcomeMsg()

    private static void printOceanMap() {
        printRow();
        for (int i = 0; i < myGrid.length; i++) {
            System.out.print(i + "|");
            for (int j = 0; j < myGrid[i].length; j++) {
                switch (myGrid[i][j]) {
                    case NULL_CHAR:
                    case COMPUTER_SHIP:
                        System.out.print(" ");
                        break;
                    case PLAYER_SHIP:
                        System.out.print("@");
                        break;
                    default:
                        System.out.print(myGrid[i][j]);
                        break;
                }// switch case
            }// print row by row
            System.out.print("|" + i);
            System.out.println();
        }// [][]
        printRow();
        System.out.println();
    }// printOceanMap()

    private static void printRow() {
        System.out.println("  0123456789");
    }// printRow()

   private static void printDash() {
       for (int i = 1; i < 50; i++) {
           System.out.print("-");
       }
       System.out.println();
   }// printDash()

    private static void deployShips() {
        int addShip = 1;

        System.out.println("Deploy your ships:");
        while (addShip <= TOTAL_SHIPS) {
            int i = -1;
            int j = -1;
            System.out.printf("Enter X Coordinate for your %d. ship: ", addShip);
            i = getShipLocation();
            System.out.printf("Enter Y Coordinate for your %d ship: ", addShip);
            j = getShipLocation();

            if (isAvailable(i, j)) {
                myGrid[i][j] = PLAYER_SHIP;
                addShip++;
            } else {
                System.out.println("Cannot place more than 1 ship in the same location!");
            } // if else
        }// while loop
//        printDash();
        printOceanMap();
    }// deployShips()

    private static int getShipLocation() {
        int result = -1;
        Scanner input = new Scanner(System.in);
        do {
            try {
                result = input.nextInt();
                if (result < 0 || result >= myGrid.length) {
                    System.out.printf("Please enter a number between 0 and %d!", myGrid.length);
                    System.out.println();
                }// if
            } catch (InputMismatchException e) {
                System.out.println("Please enter an Integer!");
            }// Try Catch
        } while (result < 0 || result >= myGrid.length);
        return result;
    }// getShipLocation()

    private static boolean isAvailable(int row, int col) {
        return (myGrid[row][col]) == NULL_CHAR;
    }// isAvailable()

    private static void deployComputerShips() {
        int i = -1;
        int j = -1;
        int shipNo = 1;

        System.out.println("Computer is deploying ships");
        while (shipNo <= TOTAL_SHIPS) {
            i = (int) (Math.random() * 10);
            j = (int) (Math.random() * 10);
            if (isAvailable(i, j)) {
                System.out.printf("%d. ship DEPLOYED/n", shipNo);
                myGrid[i][j] = COMPUTER_SHIP;
                shipNo++;
            }
        }
    }// deployComputerShips()

    private static void startBattle(){
        boolean gameOver = false;
        int i = 0;
        int j = 0;
        numShipsPlayer = TOTAL_SHIPS;
        numShipsComputer = TOTAL_SHIPS;
        while (!gameOver) {
//            printDash();
            System.out.println("YOUR TURN:");
            System.out.print("Enter X coordinate: ");
            i= getShipLocation();
            System.out.print("Enter Y coordinate: ");
            j= getShipLocation();
            playerTurnsResult(i, j);

            System.out.println("COMPUTER'S TURN");
            i = (int) (Math.random() * 10);
            j = (int) (Math.random() * 10);
            computerTurnsResult(i, j);

            printOceanMap();
            System.out.printf("Your ships: %d | Computer ships %d ", numShipsPlayer, numShipsComputer);
            System.out.println();

            if (numShipsPlayer == 0 || numShipsComputer == 0) {
                gameOver= true;
            }
        }// While(!gameOver)
        if (numShipsPlayer > numShipsComputer) {
            System.out.println("Hurray! You have won the battle :)");
        } else {
            System.out.println("Sorry, you have lost the battle :(");
        }
    }// startBattle()

    private static void playerTurnsResult(int i, int j) {
        switch (myGrid[i][j]) {
            case PLAYER_SHIP:
                myGrid[i][j]=SUNK_PLAYER;
                System.out.println("Oh no, you sunk your own ship: :(");
                numShipsPlayer--;
                break;
            case COMPUTER_SHIP:
                myGrid[i][j] = SUNK_COMPUTER;
                System.out.println("Yeah, you sunk one of Computer's ship: :)");
                numShipsComputer--;
                break;
            case NULL_CHAR:
                myGrid[i][j]=PLAYER_MISSED;
                System.out.println("Sorry, you missed");
            default:
        }
        System.out.println();
    }

    private static void computerTurnsResult(int i, int j) {
        switch (myGrid[i][j]) {
            case PLAYER_SHIP:
                myGrid[i][j]=SUNK_PLAYER;
                System.out.println("The Computer sunk one of your ships!");
                numShipsPlayer--;
                break;
            case COMPUTER_SHIP:
                myGrid[i][j] = SUNK_COMPUTER;
                System.out.println("Haha, the computer sunk one of its ship! :)");
                numShipsComputer--;
                break;
            case NULL_CHAR:
                myGrid[i][j]=PLAYER_MISSED;
                System.out.println("Computer missed");
            default:
        }
        System.out.println();
    }
}
