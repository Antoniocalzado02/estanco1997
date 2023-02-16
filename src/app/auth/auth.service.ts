import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { of, Observable, switchMap, catchError } from 'rxjs';
import { AuthResponse } from '../interfaces/token.interface';

@Injectable({
    providedIn: 'root'
  })

  export class authService{

    url:string = 'http://localhost:9061/signin'
    httpOptions = {
        headers: new HttpHeaders({ 'Content-Type': 'application/json' })
    };

    constructor(private http: HttpClient){}

    
    login(name: string, password: string):Observable<boolean>{
        return this.http.post<AuthResponse>(this.url, {name, password},this.httpOptions)
        .pipe( switchMap(token => {
                localStorage.setItem('token', token.token);
                return of(true);
            }),catchError(error => {
                localStorage.removeItem('token');
                return of(false);
            })
        )
    }

    logout() {
        localStorage.setItem('authenticated', 'false');
        localStorage.removeItem('rol'); 
    }

    isAuthenticated() {
        return localStorage.getItem('authenticated')==='true'
    }
}