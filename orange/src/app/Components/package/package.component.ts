import { Component, OnInit, Input } from '@angular/core';
import { Package } from 'src/app/Models/package';

@Component({
  selector: 'app-package',
  templateUrl: './package.component.html',
  styleUrls: ['./package.component.css']
})
export class PackageComponent implements OnInit {

  @Input() packageList:Package[];
  constructor() { }

  ngOnInit() {
  }

}
