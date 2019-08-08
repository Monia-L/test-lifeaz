import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss']
})
export class HomePage {

  public items: any;
  public dataLength: any;
  
  public itemsSearch: any ;
  public filterItems:any;

  constructor(public http: HttpClient) {
    this.getData();
  }

  getData() {
    let url = 'http://localhost:8100'
    let json = '../../assets/data/dataMock.json'
    let data: Observable<any> = this.http.get(json);
    data.subscribe(result => {
      this.items = result;
      this.dataLength = result.length;

    })
  }


handleInput(event:any){
  let data:Observable<any>;
  data = this.http.get("../../assets/data/dataMock.json");
  data.subscribe(result => {
    this.itemsSearch = result;
    // this.filterItems= this.itemsSearch;
    
  })
  const query = event.target.value.toLowerCase();
  this.filterItems = this.itemsSearch.filter(itemSearch =>  itemSearch.firstName.toLowerCase().indexOf((query)) > -1);
  console.log(query );
  console.log('lelele',this.filterItems);
  return(this.filterItems)
  }
  //////////////////////////////////////////////////////
   
}