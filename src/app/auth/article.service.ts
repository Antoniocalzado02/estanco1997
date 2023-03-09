import { Injectable } from "@angular/core";
import { HttpClient } from '@angular/common/http';
import { Observable, switchMap, of, catchError } from 'rxjs';
import { Tabacos } from "../interfaces/tabacos.interface";


@Injectable({
    providedIn: 'root'
  })

export class articlesService{

    url:string='https://estanco1997api-production.up.railway.app/tabacos'

    urls:string='https://estanco1997api-production.up.railway.app/tabaco'


    constructor(private http:HttpClient){}

    getProducts():Observable<any>{
        return this.http.get<any>(this.url)
    }

    getProductsById(id:number):Observable<any>{
        return this.http.get<any>(this.urls+"/"+id)
    }

    

    addProduct(name:string, description:string, price:number, category:number, stock:number):Observable<boolean>{
      return this.http.post<any>(this.url, {
        "name": name,
        "description":description,
        "price": price,
        "category":{
          "category": category
        },
        "stock": stock
      })
      .pipe( switchMap(resp => {
        return of(true);
      }),catchError(error => {
          return of(false);
      })
      )
    }


    updateProduct(idProducto:number, name:string, description:string, price:number, stock:number):Observable<boolean>{
      return this.http.put<any>(this.url+'/'+idProducto, {
        "name": name,
        "description":description,
        "price": price,
        "stock": stock,
        
        })
        .pipe( switchMap(resp => {
          return of(true);
        }),catchError(error => {
            return of(false);
        })
        )
    }

    deleteArticulo(id:number):Observable<boolean>{
      return this.http.delete<any>(this.url+'/'+id)
      .pipe( switchMap(resp => {
        return of(true);
      }),catchError(error => {
          return of(false);
      })
      )
    }




}