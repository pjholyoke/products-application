import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

import { IProduct, Product } from '../Classes/product';
import { ProductModule } from '../Modules/Product/product.module';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(
    private http: HttpClient
  ) {
    console.log("ENVIRONMENT: ", environment);

    //var productsObservable = this.http.get<IProduct>(environment.apiBaseUrl + "/Products/GetProducts");

    //productsObservable.subscribe((data: any) => {
    //  console.log("Product data: ", data);
    //});
  }

  getProducts(): Observable<IProduct> {
    return this.http.get<IProduct>(environment.apiBaseUrl + "/Products/GetProducts");

    //var products: Product[] = [
    //  new Product()
    //];

    //return products;
  }
}
