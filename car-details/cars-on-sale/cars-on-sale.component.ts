import { Component, OnInit } from '@angular/core';
import { Car } from '../Car';
import { CarService } from '../car.service';

@Component({
  selector: 'app-cars-on-sale',
  templateUrl: './cars-on-sale.component.html',
  styleUrls: ['./cars-on-sale.component.css']
})
export class CarsOnSaleComponent implements OnInit {

  cars: Car[] = []

  selectedProduct?: Car;


  constructor(private onSaleCars: CarService) { 
    this.cars = this.onSaleCars.getAllCars()
  }



  ngOnInit(): void {
  }

  onSelect(product: Car): void{
    this.selectedProduct = product;
    console.log(this.selectedProduct);
  }

}
