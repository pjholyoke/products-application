
import { ProductType } from "./product-type";

export interface IProduct {
  ID: string;
  Desc: string;
  Name: string;
  ProductType: ProductType;
}

export class Product implements IProduct {
  private _ID: string;
  public get ID(): string {
    return this._ID;
  }
  public set ID(value: string) {
    this._ID = value;
  }

  private _Desc: string;
  public get Desc(): string {
    return this._Desc;
  }
  public set Desc(value: string) {
    this._Desc = value;
  }

  private _Name: string;
  public get Name(): string {
    return this._Name;
  }
  public set Name(value: string) {
    this._Name = value;
  }

  private _ProductType: ProductType;
  public get ProductType(): ProductType {
      return this._ProductType;
  }
  public set ProductType(value: ProductType) {
      this._ProductType = value;
  }
}


