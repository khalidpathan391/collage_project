class BaseProduct {
  late String id, cat_id, sub_cat_id, work, price;
  int counter = 0;

  BaseProduct(this.id, this.cat_id, this.sub_cat_id, this.work, this.price,
      this.counter);
}
