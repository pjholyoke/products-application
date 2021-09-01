import { Component, OnInit } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { Location } from "@angular/common";

@Component({
  selector: 'header-component',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  showBackButton: boolean = false;

  constructor(
    location: Location,
    private router: Router
  ) {
    this.router.events.subscribe((val) => {
      this.showBackButton = (this.router.url != "/");
    });
  }

  ngOnInit(): void {
  }

}
