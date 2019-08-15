import { Injectable } from '@angular/core';
import { Customer } from '../Models/custumer';
import { Routes } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { Package } from '../Models/package';


//  const arrCustomer: Customer= [
//     {
//       address: "dfgd", firstName: "sari", lastName: "hu", id: 315013565,
//       memberList: [
//         {
//           SubscriptionId: '757', SubscriptionName: "zirl", packageList:
//             [
//               { PackCode: "130", PackName: "bass", Qty: 3000, Survivor: 4644 },
//               { PackCode: "135", PackName: "gdd", Qty: 2223, Survivor: 56456 }
//             ]
//         },
//         {
//           SubscriptionId: '154', SubscriptionName: "zipi", packageList:
//             [
//               { PackCode: "250", PackName: "jgkjh", Qty: 898, Survivor: 12 },
//               { PackCode: "288", PackName: "sdff", Qty: 7978, Survivor: 212 },
//               { PackCode: "2288", PackName: "uy", Qty: 2542, Survivor: 454 }
//             ]
//         }
//       ]
//     }
//   ]

@Injectable({
  providedIn: 'root'
})
export class MyServiceService {
  getPackageSub(id: number) {
    
    return this.http.get<Package[]>('http://localhost:54235/Package/getPackageSub/'+id)
  }

  baseUrl="http://localhost:54235";
  constructor(private http:HttpClient) { }

  check(iddentity: number) { 

    return this.http.get<Customer>('http://localhost:54235/customer/Isexsist/'+iddentity)
    // this.get_cust_by_id(iddentity);
    // let x:Customer={id:1,address:"aaa",firstName:"aaa",lastName:"aaa",memberList:null};
    // this.add_user(x);
    // if (arrCustomer.find(x => x.id == iddentity) != undefined)
    //   return true;
    // return false;
  }
  // getCustById(id:number){
  //   return arrCustomer.find(x => x.id == id);
  // }}

get_cust_by_id(id:number)
{
  
 return this.http.get<Customer>('http://localhost:54235/customer/getCustomerById/'+id)
   ;
}
add_user(customer:Customer)
{
  this.http.post(this.baseUrl+"/customer/addCustomer",customer).subscribe(x=>{
    alert("success!");
  },
   (error)=>{alert("error")}
  );
}
}
