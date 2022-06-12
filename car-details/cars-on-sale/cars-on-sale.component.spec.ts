import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarsOnSaleComponent } from './cars-on-sale.component';

describe('CarsOnSaleComponent', () => {
  let component: CarsOnSaleComponent;
  let fixture: ComponentFixture<CarsOnSaleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CarsOnSaleComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CarsOnSaleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
