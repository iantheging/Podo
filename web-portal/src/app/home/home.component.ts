import { Component, OnInit } from '@angular/core';
import { DataService } from '../data/data.service';
import { DataSource } from '@angular/cdk/table';
import { Observable } from 'rxjs';
import { Deal } from '../Deal';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {

  constructor(private dataService: DataService) { }

  displayedColumns = ['date_avail', 'title', 'bar', 'delete'];
  dataSource = new DealDataSource(this.dataService);
}

export class DealDataSource extends DataSource<any> {
  constructor(private dataService: DataService) {
    super();
  }

  connect(): Observable<Deal[]> {
    return this.dataService.getData();
  }

  disconnect() {
    // idk if this needs anything
  }

}
