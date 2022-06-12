import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { WelcomeComponentComponent } from './welcome-component/welcome-component.component';
import { CarsOnSaleComponent } from './cars-on-sale/cars-on-sale.component';
import { CarDetailsComponent } from './car-details/car-details.component';
import { FooterComponent } from './footer/footer.component';
import { NavComponent } from './nav/nav.component';
import { CarService } from './car.service';

@NgModule({
  declarations: [
    AppComponent,
    WelcomeComponentComponent,
    CarsOnSaleComponent,
    CarDetailsComponent,
    FooterComponent,
    NavComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
