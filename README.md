# 🍕 Pizza Sales Analysis (SQL Project)

## 📌 Project Overview

This project analyzes pizza sales data to generate business insights related to revenue, product performance, and customer ordering patterns.
The analysis is conducted using SQL with PostgreSQL.

---

## 🛠 Tools Used

* SQL (PostgreSQL)
* DBeaver

---

## 📊 Dataset

The dataset contains transactional data from a pizza store, including:

* Orders (date & time)
* Order details (quantity)
* Pizza information (type, size, price)

---

## 🔍 Business Questions

This analysis answers the following key questions:

1. What is the total revenue of the pizza business?
2. How does revenue perform over time (monthly)?
3. Which pizza types are the best-selling?
4. How many orders are placed per day (January analysis)?
5. How do vegetarian pizzas perform in terms of sales and orders?

---

## 📈 Key Insights

### 💰 Total Revenue

Total revenue generated:

**$817,860**

![Total Revenue](images/total_revenue.png)

The business generates strong revenue, indicating consistent customer demand across the dataset period.

---

### 📅 Monthly Revenue

![Monthly Revenue](images/revenue_per_month.png)

Revenue appears relatively stable across months, with slight fluctuations. The highest revenue occurs in July ($72K), while the lowest is around September–October ($64K). This indicates a consistent demand pattern with a potential mid-year peak period.

---

### 🍕 Best-Selling Pizza

The following chart shows the total quantity sold for each pizza type:

![Best Selling Pizza](images/best_selling_pizza.png)

The top-performing pizzas are **classic_dlx, bbq_ckn, and hawaiian**, each selling over 2,400 units.

On the other hand, some pizza types such as **brie_carre** have significantly lower sales, indicating lower customer preference.
This suggests that a small number of menu items drive a large portion of total sales, which can support menu optimization and marketing focus.

---

### 📆 Daily Orders (January)

Daily order analysis reveals fluctuations in demand, which can help optimize staffing and inventory management.

---

### 🥦 Vegetarian Pizza Performance

Not all vegetarian pizzas perform equally—some contribute more significantly to total revenue and orders.
This insight can support menu optimization and targeted promotions.

---

## 🚀 How to Run

1. Import the dataset into PostgreSQL
2. Create schema and tables
3. Run SQL queries in `/sql/analysis.sql`

---

## 📁 Project Structure

```
pizza-sales-analysis/
│
├── pizza_dataset.xlsx
├── sql/
│   └── analysis.sql
└── README.md
```

---

## ✨ Author

Siti Irma — Aspiring Data Analyst
