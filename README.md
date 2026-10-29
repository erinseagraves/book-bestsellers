# Amazon Bestselling Books
A SQL and Excel project analyzing Amazon's top 50 bestselling books for each year from 2009 to 2019 with data was obtained from Kaggle.

## Some Notes on the Data
When initially examining the data, it was noted that four entries were duplicates, with the only difference being the price. Given the amount of data present it was decided that these entries would be deleted. Therefore, there are 546 entries in the dataset instead of the expected 550. Also, the prices listed are from 10/13/2020.

## Questions
Did popular books become more expensive over time?
How did interest in writing reviews change over time?
Do books or authors get popular and remain popular?
What kind of books sell the best?

## Findings
First the top 5 books of each year was determined by taking the books with the highest User Rating. The ties were broken by then ordering books by highest number of reviews since more reviews would allow for a more solid rating. The table below demonstrates the top book per year.
<img width="1062" height="255" alt="Top Books" src="https://github.com/user-attachments/assets/d0a9d663-5705-4c0f-b916-af3e64d66f69" />
As shown one book dominated the top spot for 8 years in a row. With more data it could be interesting to see if this streak ended in 2019 or persisted for more years.

The Author with the most books in the top 50 for each year was also determined.
<img width="947" height="300" alt="Top Authors" src="https://github.com/user-attachments/assets/e2a767a0-c279-468e-b958-6435216308f8" />
It can be seen that multiple authors found themselves in the top spot in multiple years. This could be explained by having a popular series where all books would appear on the list.

Next the average number of reviews per year was found so it could be determined if review writing became more popular over time.
<img width="2745" height="1003" alt="reviews" src="https://github.com/user-attachments/assets/4abd23ca-435e-435c-a5ad-6fa36c52a99b" />
There was a steady increase from 2009 to 2012. This then stayed roughly the same until increasing again from 2017 to 2019.

The average price of books in the top 50 was also examined. While prices had a few jumps from year to year, the overall trend of the 11 years of data show that books became cheaper over time. Examining the economy over the years could help provide explanations for this. Also, a number of books were listed as being free, so it is also important to note that through Amazon's Kindle services, sometimes books are offered for free for certain periods of time.
<img width="2131" height="1397" alt="price" src="https://github.com/user-attachments/assets/c73a6dd0-0df9-4fa7-8c47-7ec843176078" />

The last metric was the Genre category, where books were listed as either Fiction or Non Fiction. While these could have been classified further, it wasn't done here. For each year aside from 2014, there were more non fiction titles in the top 50 than fiction. 
<img width="2552" height="1530" alt="genre" src="https://github.com/user-attachments/assets/82c295c8-daa1-451d-a82b-b1b71fe0bc3c" />

## Conclusion
With more data, certain trends could be proven to last longer or change directions. Other types of data such as economic metrics could also be used to explain some of our findings. 
