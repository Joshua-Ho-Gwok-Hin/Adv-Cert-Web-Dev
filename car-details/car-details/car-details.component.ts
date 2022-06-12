import { Component, OnInit } from '@angular/core';
import { Input } from '@angular/core';
import { Car } from '../Car';

@Component({
  selector: 'app-car-details',
  templateUrl: './car-details.component.html',
  styleUrls: ['./car-details.component.css']
})
export class CarDetailsComponent implements OnInit {
  @Input() c?: Car;
  constructor() { }

  ngOnInit(): void {
  }

}
