import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

import { IProduct, Product } from '../Classes/product';
import { IProductType } from '../Classes/product-type';
import { ProductModule } from '../Modules/Product/product.module';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  url: string = environment.apiBaseUrl.toString();

  constructor(
    private http: HttpClient
  ) {
    console.log("ENVIRONMENT: ", environment);
  }

  getProducts(): Observable<IProduct> {
    return this.http.get<IProduct>(`${this.url}/Products/GetProducts`);
  }

  getProductByID(ID: string): Observable<IProduct> {
    return this.http.get<IProduct>(`${this.url}/Products/GetProductByID/${ID}`);
  }

  getProductTypes(): Observable<IProductType> {
    return this.http.get<IProduct>(`${this.url}/Products/GetProductTypes`);
  }

  getProductsByTypeID(ID: string): Observable<IProduct> {
    return this.http.get<IProduct>(`${this.url}/Products/GetProductsByTypeID/${ID}`);
  }
}
