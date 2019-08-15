import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ViewComponent } from './Components/view/view.component';
import { LoginComponent } from './Components/package/login/login.component';
;

const routes: Routes = [
  {path:"viewAllSubscription/:id", component:ViewComponent},
  {path:"", component:LoginComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
