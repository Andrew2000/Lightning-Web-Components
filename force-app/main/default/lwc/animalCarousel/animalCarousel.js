import { LightningElement, api, wire } from "lwc";
import getAnimal from "@salesforce/apex/AnimalCarouselController.getAnimal";

export default class AnimalCarousel extends LightningElement {
  @api recordId;
  @wire(getAnimal, { parkId: "$recordId" })
  AnimalList;
}
