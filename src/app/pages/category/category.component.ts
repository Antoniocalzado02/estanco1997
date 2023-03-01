import { Component, OnInit } from '@angular/core';
import { authService } from '../../auth/auth.service';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})
export class CategoryComponent implements OnInit {

  constructor(private authService:authService) { }

 
 
 
  ngOnInit(): void {



  }



}
