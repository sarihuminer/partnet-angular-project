import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { MyServiceService } from 'src/app/Services/my-service.service';
import { Customer } from 'src/app/Models/custumer';
import { Package } from 'src/app/Models/package';

@Component({
  selector: 'app-view',
  templateUrl: './view.component.html',
  styleUrls: ['./view.component.css']
})
export class ViewComponent implements OnInit {


  colors:string[]=["bg-primary","bg-warning","bg-danger","bg-info"]
  id: number;
  indexColor:number;
  cust:Customer=null;
  pack:Package[]=[];
  flag:boolean;
  constructor(private route: ActivatedRoute,private service:MyServiceService,private router: Router) { }

  ngOnInit() {
    
    this.route.params.subscribe(x => this.id = x.id);
    console.log(" this.route.params.subscribe(x => this.id = x.id); = "+this.id);
 this.service.get_cust_by_id(this.id).subscribe((res) => {
  this.cust=res;
   console.log(this.cust);
 
 }, err => {
   console.log(err);
 })

  }
  getPackageSub(id:number){
    this.service.getPackageSub(id).subscribe((res)=>{
      this.pack=res;
      this.flag=true;
      // this.router.navigate(['package', this.pack]);
    },err=>{
        console.log(err);
      }
    );
  }
  
  }

