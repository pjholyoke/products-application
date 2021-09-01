import { Component, OnInit } from '@angular/core';

import { Product } from '../../Classes/product';

import { ProductModule } from '../../Modules/Product/product.module';
import { ProductService } from '../../Services/product.service';

@Component({
  selector: 'product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css'],
  providers: [
    ProductModule
  ]
})
export class ProductListComponent implements OnInit {
  loading: boolean = true;
  products: Product[] = [];

  constructor(private productService: ProductService) {
    var productsObservable = productService.getProducts();

    productsObservable.subscribe((data: any) => {
      console.log("Product data: ", data);

      this.loading = false;
    });
  }

  ngOnInit(): void {
  }

}
