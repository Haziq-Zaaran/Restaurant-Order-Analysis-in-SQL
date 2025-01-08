### **Situation Summary**  
The café introduced a new menu at the start of the year, and management wants to know how customers are responding. Your analysis will focus on identifying popular and underperforming menu items and understanding customer preferences.  

---

### **Objectives**  

1. **Familiarize Yourself with the Data**  
   - Explore the `menu_items` table to understand the offerings on the new menu.  
   - Analyze the `order_details` table to grasp what data points are collected during each transaction.  

2. **Analyze Customer Response**  
   - Combine data from both tables to uncover insights about customer behavior and preferences.  
   - Identify trends such as:  
     - Most and least popular menu items.  
     - Average spending patterns.  
     - Frequent combinations of menu items in orders.  

3. **Highlight Customer Preferences**  
   - Determine what the café's top customers (based on order frequency or value) prefer.  
   - Provide actionable recommendations for improving menu offerings or marketing efforts.  

---

### **Plan of Action**  

1. **Inspect the Tables**  
   - Examine the schema and data types in the `menu_items` and `order_details` tables.  
   - Look for potential key relationships (e.g., `menu_item_id`) to join the two tables.  

2. **Explore the `menu_items` Table**  
   - Identify categories, pricing, and descriptions of menu items.  
   - Check if there are any fields indicating seasonal or promotional items.  

3. **Analyze the `order_details` Table**  
   - Count how many times each menu item was ordered.  
   - Calculate total revenue generated per menu item.  
   - Explore order timestamps to identify peak times and seasons.  

4. **Combine Insights**  
   - Join the two tables on `menu_item_id` (or similar key).  
   - Use aggregated metrics to identify:  
     - Bestsellers and underperformers.  
     - Popular combinations (e.g., appetizers paired with main courses).  
     - Patterns in preferences based on customer demographics, if available.  

---

### **Key Questions to Answer**  

1. Which new menu items are performing well?  
2. Are there any items that are rarely ordered, and why?  
3. What do the café’s most loyal customers prefer?  
4. Are there opportunities to cross-sell or bundle items based on order trends?  
5. Do customer preferences vary by time of day, day of the week, or season?  

---

### **Deliverables**  

1. A summary of findings with actionable insights for management.  
   - Top and bottom performers.  
   - Key trends and patterns.  
2. Data visualizations to support the analysis (e.g., bar charts, heatmaps).  
3. Recommendations for menu adjustments or promotional campaigns to boost underperforming items and maximize customer satisfaction.  
