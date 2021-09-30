# Generating-tops-for-online-store

Every online store needs statistics to know the needs of customers. <br>
That's why we created a top generator based on customer actions (eg likes, views and the amount of sales of a product). <br>
Running the command ("$object->create_tops();") is generated 9 tops. <br>
Running the command ($object->show_top('vanzari', 'saptamanal');") you can view the ranking. <br>
param1 = type of actions  <br>
param2 = period (last week/ last month/ last year) <br>
Every time when you run command ("$object->create_tops();"), new charts are generated,  compared to the old ones and overwritten. And next to each product it is written if its position in the ranking is decreasing, increasing or stagnating.


