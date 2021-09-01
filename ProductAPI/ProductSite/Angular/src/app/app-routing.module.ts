import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProductDetailComponent } from './Components/Product-detail/product-detail.component';
import { ProductListComponent } from './Components/Product-list/product-list.component';

const routes: Routes = [
  { path: '', component: ProductListComponent },
  { path: 'test', component: ProductDetailComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
