import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { of, Observable, switchMap, catchError } from 'rxjs';
import { AuthResponse } from '../interfaces/token.interface';

@Injectable({
    providedIn: 'root'
  })

  export class authService{

    url:string = 'http://localhost:9061'
    httpOptions = {
        headers: new HttpHeaders({ 'Content-Type': 'application/json' })
    };

    constructor(private http: HttpClient){}

    register(username: string, pass:string, name:string, email:string):Observable<boolean>{
        return this.http.post<any>(this.url+"/signup", {"username":username, "pass":pass, "name":name, "email":email},this.httpOptions)
        .pipe( switchMap(resp => {
                return of(true);
            }),catchError(error => {
                return of(false);
            })
        )
    }

    verify(code: string, username: string):Observable<boolean>{
        return this.http.get<any>('http://localhost:8082/verify?code='+code+'&username='+username, this.httpOptions)
        .pipe( switchMap(resp => {
                return of(true);
            }),catchError(error => {
                return of(false);
            })
        )
    }

    
    login(name: string, password: string):Observable<boolean>{
        return this.http.post<AuthResponse>(this.url+"/signin", {name, password},this.httpOptions)
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