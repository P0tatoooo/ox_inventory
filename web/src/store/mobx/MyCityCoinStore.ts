import {makeAutoObservable} from "mobx";

class MyCityCoinStore {
  cityCoin = 0;
  constructor() {
    makeAutoObservable(this);
  }

  update(newCount: number) {
    this.cityCoin = newCount ?? 0;
  }
}

export  const myCityCoinStore = new MyCityCoinStore();
