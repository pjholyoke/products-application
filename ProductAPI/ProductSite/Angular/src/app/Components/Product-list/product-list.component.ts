import { Component, OnInit } from '@angular/core';
import { combineLatest, forkJoin } from 'rxjs';

import { Product } from '../../Classes/product';
import { ProductType } from '../../Classes/product-type';

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
  productTypes: ProductType[] = [];

  constructor(private productService: ProductService) {
    var productsObservable = productService.getProducts();
    var typesObservable = productService.getProductTypes();

    typesObservable.subscribe((data: any) => {
      console.log("Types data: ", data);

      this.productTypes = data;
      this.loading = false;
    });

    productsObservable.subscribe((data: any) => {
      console.log("Product data: ", data);

      this.products = data;
      this.loading = false;
    });
  }

  ngOnInit(): void {

  }

  hashCode(str: string) { // java String#hashCode
    var hash = 0;
    for (var i = 0; i < str.length; i++) {
      hash = str.charCodeAt(i) + ((hash << 5) - hash);
    }
    return hash;
  }

  intToRGB(i: number) {
    var c = (i & 0x00FFFFFF)
      .toString(16)
      .toUpperCase();

    return "00000".substring(0, 6 - c.length) + c;
  }

  filterProductsByType(ID: string) {
    var productsObservable = this.productService.getProductsByTypeID(ID);

    productsObservable.subscribe((data: any) => {
      console.log("Filtered Product data: ", data);

      this.products = data;
      this.loading = false;
    });
  }

}
