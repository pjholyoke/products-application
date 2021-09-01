import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './Components/App/app.component';
import {APP_BASE_HREF} from '@angular/common';
import { ProductListComponent } from './Components/Product-list/product-list.component';
import { ProductDetailComponent } from './Components/Product-detail/product-detail.component';
import { ProductModule } from './Modules/Product/product.module';
import { LoadingComponent } from './Components/LoadingSpinner/loading.component';

@NgModule({
  declarations: [
    AppComponent,
    ProductListComponent,
    ProductDetailComponent,
    LoadingComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    ProductModule
  ],
  providers: [{ provide: APP_BASE_HREF, useValue: '/' }],
  bootstrap: [AppComponent]
})
export class AppModule { }
