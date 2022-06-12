import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CarsOnSaleComponent } from './cars-on-sale/cars-on-sale.component';
import { WelcomeComponentComponent } from './welcome-component/welcome-component.component';
import { CarDetailsComponent } from './car-details/car-details.component';

const routes: Routes = [
  {path: '', component: CarsOnSaleComponent, pathMatch: 'full'},
  {path: 'home', component: WelcomeComponentComponent},
  {path: 'detail/:id', component: CarDetailsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
