class Customers {
    constructor(customer_id,customer_name,customer_address,customer_phonenumber,customer_email ) {
        this.customer_id = customer_id,
        this.customer_name = customer_name,
        this.customer_address = customer_address,
        this.customer_phonenumber = customer_phonenumber,
        this.customer_email = customer_email
    }
}

class Authors {
    constructor(author_id,author_name,author_description) {
        this.author_id = author_id,
        this.author_name = author_name,
        this.author_description = author_description
    }
}


class Product_publisher {
    constructor(publisher_id,publisher_name,publisher_contact_phone,publisher_contact_email,publisher_address) {
        this.publisher_id = publisher_id,
        this.publisher_name = publisher_name,
        this.publisher_contact_phone = publisher_contact_phone,
        this.publisher_contact_email = publisher_contact_email,
        this.publisher_address = publisher_address
    }
}
class Product_publish {
    constructor(publish_id,publisher,published_date) {
        this.publish_id = publish_id,
        this.publisher_id = publisher.publisher_id,
        this.published_date = published_date
    }
}
class Products {
    constructor(product_id,product_name,product_description,author,product_publish,product_isbn,product_category,product_price,isProductDiscount,productDiscountPercent) {
        this.product_id = product_id,
        this.customer_name = product_name,
        this.product_description = product_description,
        this.author_id = author.author_id,
        this.product_publish_id = product_publish.publish_id,
        this.product_isbn = product_isbn,
        this.product_category = product_category,
        this.product_price = product_price,
        this.isProductDiscount = isProductDiscount,
        this.productDiscountPercent = productDiscountPercent
    }
}
class Products_Inventory {
    constructor(product,product_inventory_status,product_inventory_quantity) {
        this.product_id = product.product_id,
        this.product_inventory_status = product_inventory_status,
        this.product_inventory_quantity = product_inventory_quantity
    }
}
class Payments {
    constructor(payment_id,payment_method,payment_date,payment_status) {
        this.payment_id = payment_id,
        this.payment_method = payment_method,
        this.payment_date = payment_date,
        this.payment_status = payment_status
    }
}
class Logistics_Company {
    constructor(logistics_company_id,logistics_company_name,logistics_company_contact_phone,logistics_company_contact_email,logistics_company_contact_address) {
        this.logistics_company_id = logistics_company_id,
        this.logistics_company_name = logistics_company_name,
        this.logistics_company_contact_phone = logistics_company_contact_phone,
        this.logistics_company_contact_email = logistics_company_contact_email,
        this.logistics_company_contact_address = logistics_company_contact_address
    }
}
class Shipments {
    constructor(shipping_id,logistic_company,shipping_status,shiiping_date) {
        this.shipping_id = shipping_id,
        this.shipping_logistic_company_id = logistic_company.logistics_company_id,
        this.shipping_status = shipping_status,
        this.shiiping_date = shiiping_date
    }
}
class Orders {
    constructor(order_id,customer,product,payment,shipping,quantity,order_date,order_status) {
        this.order_id = order_id,
        this.customer = customer.customer_id,
        this.product_id = product.product_id,
        this.shipping_id = shipping.shipping_id,
        this.quantity = quantity,
        this.total_price = this.quantity * this.calculateTotal(product);
        this.payment_id = payment.payment_id;
        this.order_date = order_date;
        this.order_status = order_status;
    }
    calculateTotal(product) {
        let pricePerUnit = product.product_price;
        if (product.isProductDiscount) {
            pricePerUnit = pricePerUnit * (1 - (product.productDiscountPercent / 100));
        }
        return pricePerUnit;
    }
}
class Reviews {
    constructor(review_id,order,review_rating,review_comment,review_date) {
        this.review_id = review_id,
        this.order_id = order.order_id,
        this.review_rating = review_rating,
        this.review_comment = review_comment,
        this.review_date = review_date
    }
}

const customer_1 = new Customers("C001","Thomas","6 St. Rd.", "1122", "aa@gmail.com");
const author_1 = new Authors("A001","Henry","Born in UK");
const author_2 = new Authors("A002","Marty","Born in US")
const product_publisher_1 = new Product_publisher("PUBSHER001","Cheng Chung","0123","ab@gmail.com","12 Red st.");
const product_publish_1 = new Product_publish("PUB001", product_publisher_1,"01052000");
const product_publish_2 = new Product_publish("PUB002", product_publisher_1,"01062000");
const product_1 = new Products("P001","Modern Chinese","Learning Chinese 1", author_1,product_publish_1,"14177","Language",500,true,10);
const product_2 = new Products("P002","Modern chinese 2","Learning Chinese 2",author_2,product_publish_2,"11202","Lanuage",850,false,0) 
const product_inventory_1 = new Products_Inventory(product_1,"Available",10);
const product_inventory_2 = new Products_Inventory(product_2,"Available",10);
const payment_1 = new Payments("PAY001","VISA","01022000","Completed");
const payment_2 = new Payments("PAY002","VISA","01022000","Completed");
const logistics_company_1 = new Logistics_Company("LCOM001","Movemi","0201","ade@gmail.com","87 io rd.");
const shipping_1 = new Shipments('SH001',logistics_company_1,"Delivered","01022000");
const order_1 = new Orders("O001",customer_1,product_1,payment_1,shipping_1,2,"01022000",'Completed');
const order_2 = new Orders("O002",customer_1,product_2,payment_2,shipping_1,2,"01022000",'Completed');
const review_1 = new Reviews("R001",order_1,4.5,"Good","05022000");
const review_2 = new Reviews("R002",order_2,4.85,"Excellent","06022000");
const cart_01 = [order_1,order_2];

console.log(customer_1);
console.log(author_1);
console.log(product_publisher_1);
console.log(product_publish_1);
console.log(product_1);
console.log(product_inventory_1);
console.log(payment_1);
console.log(logistics_company_1);
console.log(shipping_1);
console.log(order_1);
console.log(review_1);
console.log(review_2);
console.log(cart_01);
