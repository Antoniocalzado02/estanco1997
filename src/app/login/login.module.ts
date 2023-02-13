import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LogiInComponent } from './logi-in/logi-in.component';
import { RegisterComponent } from './register/register.component';
import { LoginRouteModule } from './login-routes.module';



@NgModule({
  declarations: [
    LogiInComponent,
    RegisterComponent
  ],
  imports: [
    CommonModule
  ],exports:[
    LoginRouteModule
  ]
})
export class LoginModule { }
