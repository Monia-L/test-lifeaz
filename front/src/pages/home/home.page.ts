import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss']
})
export class HomePage {

  public items:any;
  public dataLength:any;
  constructor(public http: HttpClient) {
     this.getData();
  }

  getData(){
    let url= 'http://localhost:8100/lifeaz/temoignages'
    let json = '../../assets/data/dataMock.json'
    let data: Observable<any> = this.http.get(url);
    data.subscribe(result => {
      this.items = result;
      this.dataLength = result.length;

    })
  }
}