import { Component, AfterViewInit } from '@angular/core';

import { Product } from '../../Classes/product';

import { ProductService } from '../../Services/product.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements AfterViewInit {
  loading = true;
  productsList: Product[] = [];

  constructor(
    private productService: ProductService
  ) {
    var productsObservable = productService.getProducts();

    productsObservable.subscribe((data: any) => {
      console.log("Product data: ", data);

      this.loading = false;
    });
  }

  ngAfterViewInit() {
    console.log("TESTING");
  }
}
