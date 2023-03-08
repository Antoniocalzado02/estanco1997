import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Route, Router } from '@angular/router';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  constructor(private activeRouter:Router) { }

  ngOnInit(): void {
  }

  logout(){
      localStorage.removeItem('token'); 
      this.activeRouter.navigate(['/home'])
  }

  isLoggedIn(){
    if(localStorage.getItem('token')){
        return true
    }
    else{
        return false
    }
}

}
