import { Component, OnInit } from '@angular/core';
import { MyServiceService } from 'src/app/Services/my-service.service';
import { Router } from '@angular/router';
import { Customer } from 'src/app/Models/custumer';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private service: MyServiceService, private router: Router) { }
  arr: Customer[];
  iddentity: number;
  //customer: Customer = { address: null, firstName: null, id: null, lastName: null, memberList: null };
  ngOnInit() {
  }
  Login() {
    // this.arr.push(this.customer);
    //this.customer=null;
    this.service.check(this.iddentity).subscribe(res => {
      if (res) {
        alert("המשתמש קיים במערכת");
        this.router.navigate(['viewAllSubscription', this.iddentity]);
      }
      else
        alert("המשתמש לא קיים במערכת");
    })


  }


}
