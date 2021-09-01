import { Component, AfterViewInit } from '@angular/core';

import { Product } from '../../Classes/product';

import { LoadingComponent } from '../LoadingSpinner/loading.component';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements AfterViewInit {
  loading = true;
  productsList: Product[] = [];

  constructor(
    
  ) {

    this.loading = false;
  }

  ngAfterViewInit() {
    console.log("TESTING");
  }
}
