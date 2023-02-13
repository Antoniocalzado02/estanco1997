
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ArticleComponent } from './article/article.component';
import { CartComponent } from './cart/cart.component';
import { CategoryComponent } from './category/category.component';


const routes: Routes = [
    {
        path: 'article',
        component: ArticleComponent,
        pathMatch: 'full'
    },
    {
        path: 'cart',
        component: CartComponent,
        pathMatch: 'full'
    },
    {
        path: 'category',
        component: CategoryComponent,
        pathMatch: 'full'
    }
]

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
  })
  export class pagesRoutingModule { }