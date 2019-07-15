import { LightningElement, api, wire } from "lwc";
import getProductList from "@salesforce/apex/productListController.getProductList";

export default class ProductList extends LightningElement {
  @api recordId;
  @wire(getProductList, { productFamily: "$recordId" })
  productList;
}
