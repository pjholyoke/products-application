
export interface IProductType {
  ID: string;
  Desc: string;
  Name: string;

}

export class ProductType implements IProductType {
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
}
