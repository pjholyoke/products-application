import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ProductListComponent } from '../../Components/Product-list/product-list.component';
import { ProductDetailComponent } from '../../Components/Product-detail/product-detail.component';

import { ProductService } from '../../Services/product.service';

@NgModule({
  declarations: [],
  imports: [
    CommonModule
  ],
  providers: [
    ProductService
  ],
  exports: [
    
  ],
  bootstrap: [
    
  ]
})
export class ProductModule { }
