import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CategoryComponent } from './category/category.component';
import { ArticleComponent } from './article/article.component';
import { CartComponent } from './cart/cart.component';



@NgModule({
  declarations: [
    CategoryComponent,
    ArticleComponent,
    CartComponent
  ],
  imports: [
    CommonModule
  ]
})
export class PagesModule { }
