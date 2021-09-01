import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../environments/environment';

import { Product } from './product';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(
    private http: HttpClient
  ) {
    console.log("ENVIRONMENT: ", environment);

    var productsObservable = this.http.get(environment.apiBaseUrl + "/Products/GetProducts");

    productsObservable.subscribe((data: any) => {
      console.log("Product data: ", data);
    });
  }

  getProducts(): Product[] {
    var products: Product[] = [
      new Product()
    ];

    return products;
  }
}
