import { Injectable } from '@angular/core';
import { Deal } from '../Deal';
import { Observable, of } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  // Test data
  ELEMENT_DATA: Deal[] = [
    {title: '21 Cent Shots', bar: 'Cys', drink: 'liquor', price: .21, date_avail: new Date(), body: ''},
    {title: '20 Cent Shots', bar: 'Paddys', drink: 'liquor', price: .20, date_avail: new Date(), body: 'Fuck you Cys'},
  ];
  // Add array for bars

  constructor() { }

  getData(): Observable<Deal[]> {
    return of<Deal[]>(this.ELEMENT_DATA);
  }

  addDeal(data) {
    this.ELEMENT_DATA.push(data);
  }

  deleteDeal(name: string) {
    // figure this out later
  }

  numDeals() {
    return this.ELEMENT_DATA.length;
  }
}
