import { Injectable } from '@angular/core';
import { Car } from './Car';
import { cars } from './mock-cars';

@Injectable({
  providedIn: 'root'
})
export class CarService {

  constructor() { }
  getAllCars(): Car[]{
    return cars;
  }
}
