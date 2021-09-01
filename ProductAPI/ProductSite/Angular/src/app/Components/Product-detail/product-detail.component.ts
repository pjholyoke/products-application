import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, NavigationEnd, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { filter } from 'rxjs/operators';


import { Product } from '../../Classes/product';
import { ProductService } from '../../Services/product.service';

@Component({
  selector: 'product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['./product-detail.component.css']
})
export class ProductDetailComponent implements OnInit {
  loading: boolean = true;
  productID: string | null | undefined;
  product: Product | null | undefined;

  constructor(
    private productService: ProductService,
    private router: Router,
    private route: ActivatedRoute,
  ) {
    this.router.events.pipe(
      filter(event => event instanceof NavigationEnd)
    ).subscribe((v) => {
      this.productID = this.route.snapshot.paramMap.get("productID");
    });
  }

  ngOnInit(): void {
    if (this.productID != null) {
      var productObservable = this.productService.getProductByID(this.productID);

      productObservable.subscribe((data: any) => {
        console.log("Product data: ", data);

        this.product = data[0];
        this.loading = false;
      });
    } else {
      console.error("Couldn't find productID.");
    }
  }

}
