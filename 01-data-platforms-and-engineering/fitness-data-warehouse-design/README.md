# Fitness Unlimited Data Warehouse Design

![Data Warehouse](https://img.shields.io/badge/Data_Warehouse-1F4E79?style=flat-square)
![Dimensional Modeling](https://img.shields.io/badge/Dimensional_Modeling-5C2D91?style=flat-square)
![Constellation Schema](https://img.shields.io/badge/Constellation_Schema-475569?style=flat-square)

## Project Overview

Fitness Unlimited is a fictional exercise-center provider that tracks merchandise sales, service purchases, and corporate events across separate operational systems and spreadsheets. This fragmentation limits the organization’s ability to evaluate performance consistently across franchises, customers, products, services, and time.

I designed a dimensional data warehouse that integrates these sources within a constellation schema. The model establishes a consistent foundation for analyzing revenue, transaction activity, franchise performance, customer behavior, and inventory.

## Warehouse Design

| Fact table | Grain and purpose |
|---|---|
| **FactMerchSales** | One merchandise line item per sale for product, member, revenue, and franchise analysis |
| **FactServicePurchases** | One purchased service for service activity, pricing, member, and revenue analysis |
| **FactSpecialEventsSales** | One corporate event sold for event, customer, location, and revenue analysis |
| **FactInventory** | One inventory snapshot per date, franchise, and item for on-hand, on-order, and backorder analysis |

Shared dimensions include Date, Franchise, Member, Merchandise, Service Category, Corporate Customer, and Event Type. These conformed dimensions allow information from multiple business processes to be analyzed consistently.

## Key Design Decisions

The warehouse preserves transactional-level detail and is designed to support approximately 610,000 fact records annually. Measures were classified according to their aggregation behavior so quantities and revenue can be summed appropriately, prices are not incorrectly aggregated, and inventory balances are not summed across reporting dates.

The inventory snapshot extends the revenue model by sharing Date, Franchise, and Merchandise dimensions with merchandise sales. This enables comparisons between sales activity and inventory availability within the same analytical environment.

## Skills Demonstrated

Dimensional modeling • Fact and dimension design • Grain definition • Conformed dimensions • Measure aggregation • Schema integration • Storage estimation • Business requirements analysis

## Project Files

The complete written report and constellation-schema diagram will be added here.
