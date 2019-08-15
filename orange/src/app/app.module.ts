import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { SubscriptionComponent } from './Components/subscription/subscription.component';
import { PackageComponent } from './Components/package/package.component';
import {MyServiceService} from './Services/my-service.service';
import{FormsModule} from '@angular/forms';

import { ViewComponent } from './Components/view/view.component';
import { HttpClientModule } from '@angular/common/http';
import { LoginComponent } from './Components/package/login/login.component';
@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    SubscriptionComponent,
    PackageComponent,
    ViewComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,FormsModule,
    HttpClientModule
  ],
  providers: [MyServiceService],
  bootstrap: [AppComponent]
})
export class AppModule { }
