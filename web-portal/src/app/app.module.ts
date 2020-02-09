import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FlexLayoutModule } from '@angular/flex-layout';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {MaterialModule} from './material.module';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { SettingsComponent } from './settings/settings.component';
import { DataService } from './data/data.service';
import { MenuComponent } from './menu/menu.component';
import { DealsComponent } from './deals/deals.component';


@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    SettingsComponent,
    MenuComponent,
    DealsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FlexLayoutModule,
    BrowserAnimationsModule,
    MaterialModule,
  ],
  providers: [DataService],
  bootstrap: [AppComponent]
})
export class AppModule { }
