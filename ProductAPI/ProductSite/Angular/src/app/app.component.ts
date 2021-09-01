import { Component, AfterViewInit } from '@angular/core';

import { ProductService } from './product.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements AfterViewInit {
  title = 'Angular';

  constructor(
    private productService: ProductService
  ) {
    var test = productService.getProducts();

    console.log("Did we get products?: ", test);
  }

  ngAfterViewInit() {
    console.log("TESTING");
  }
}
