# E-commerce-SQL-db-Views-Subqueries

This document provides a series of SQL queries focusing on creating views and working with subqueries in an e-commerce database. The database is designed to simulate the functionality of an e-commerce platform, containing information about users, products, orders, and the relationships between them.

---

## Database Overview
![image](https://github.com/user-attachments/assets/813eb2ad-51ea-487e-a840-8229240e04dc)

--> A user can place multiple orders.
--> An order can be placed by only one user.
--> A single order can contain multiple products.
--> A product can be included in multiple orders.


### Tables

1. **user**
   ![image](https://github.com/user-attachments/assets/c76faf40-d130-4854-aa48-45a953f97cb8)


2. **product**
   ![image](https://github.com/user-attachments/assets/fd765031-d438-482c-8bea-4b84f10b2b82)


3. **order_product**
   ![image](https://github.com/user-attachments/assets/d402c416-aa1b-4b26-b5f1-aa2a7e274690)


4. **order_details**
   ![image](https://github.com/user-attachments/assets/cc489879-b2f7-4d31-8dfb-798d39ebd504)


---

## Questions and Requirements

### 1. Create a View for User Details
Create a view named `user_details` to store the following columns from the `user` table:
- `id`, `name`, `age`, `gender`, `pincode`.

#### Expected Output Format:
| id  | name | age | gender | pincode |
|-----|------|-----|--------|---------|
| ... | ...  | ... | ...    | ...     |

---

### 2. Create a View for User and Order Details
Create a view named `user_order_details` to store the combined information of users and their orders. Columns in the view:
- `user_id`, `name`, `age`, `gender`, `pincode`, `order_id`, `total_amount`.

#### Expected Output Format:
| user_id | name | age | gender | pincode | order_id | total_amount |
|---------|------|-----|--------|---------|----------|--------------|
| ...     | ...  | ... | ...    | ...     | ...      | ...          |

---

### 3. Customers with Total Spend Over ₹50,000
Retrieve the `user_id` and `pincode` of customers who spent more than ₹50,000. Use the `location_order_details` view for reference.

#### Expected Output Format:
| user_id | pincode | total_amount_spent |
|---------|---------|--------------------|
| ...     | ...     | ...                |

---

### 4. Rating Variance for All Products
Calculate the rating variance for each product in the `product` table. The rating variance is defined as the difference between the average rating of all products and the rating of a specific product.

#### Expected Output Format:
| name                  | rating_variance |
|-----------------------|-----------------|
| ...                   | ...             |

---

### 5. Rating Variance for Mobile Products
Calculate the rating variance for products in the "MOBILE" category. The rating variance is defined as the difference between the average rating of mobile products and the rating of each mobile product.

#### Expected Output Format:
| name                  | rating_variance |
|-----------------------|-----------------|
| ...                   | ...             |

---

### 6. Highly Rated Watches
Retrieve all products from the "WATCH" category where the rating is greater than the average rating of all products in the category.

#### Expected Output Format:
| name                  | rating |
|-----------------------|--------|
| ...                   | ...    |

---

### 7. High-Spending Users
Identify users whose average amount spent per order is greater than the average amount spent on all orders across the platform.

#### Expected Output Format:
| customer_id | avg_amount_spent |
|-------------|------------------|
| ...         | ...              |

---

### 8. Orders with Mobiles but Without Screen Guards
Retrieve `order_id`s where the order contains mobile products (`product_ids: 291, 292, 293, 294, 296`) but excludes screen guards (`product_ids: 301, 302, 303, 304`).

#### Expected Output Format:
| order_id |
|----------|
| ...      |

---

## Notes

- The `location_order_details` view is pre-existing in the database for question 3.

