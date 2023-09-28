# Main Idea
- Buyer
    + Info - Item
    + Dat Hang
    + Tra Hang
    + Add item to cart
    + List of item in Cart
    + Search
    + Account (login - signup / logout)
    + Profile
    + State of the package
    + After buy Info
- Seller
    + 

# Main Function
# FRONT END
- Buyer 
    + Info - Item (color and size should be hidden and show when hover click on to get Detail) (show to all buyer)
        * Size
        * color
        * quantity
        * price
        * Detail
    + Dat Hang (Button on item (lable: Mua ngay) / Button (lable: Dat Hang) in List of Item in cart )
        * If button "Mua ngay" clicked, show a popup content:
            - Size
            - Color
            - Quantity
            - Price
        -> Show button (label: Dat Hang)
    + Tra Hang (WIP)
    + Add item to cart (button, label: Them Vao Gio hang)
        * If button "Them Vao Gio hang" clicked, show a popup content:
            - Size
            - Color
            - Quantity
            - Price
    + List of item in Cart
        For each item, show:
            * Size
            * Color
            * Quantity (update with the current value in db)
            * Price (update with the current value in db)
            * Pick one to buy item (checkbox)
            * Remove item (button)
    + Invoice (Registered User)
        * Address
        * Shipping method  (fee of different method)
        * Detail of purchase
            * Total price of item
            * Shipping fee
            * Total pay
    + Search ()
    + Account (login - signup / logout)
    + User Page
        * Profile
            ~ Name
            ~ Gender
            ~ DoB
            ~ Phone numb
            ~ Email
        * After buy info (WIP)
            ~ Item + price + quantity
            ~ Delivery info
            ~ Total pay
            ~ State of the package
        * Re-buy
- Seller 
    + Add product 
    + Product Query (quatity/ what color/ what size,....)
    + Delete product
    + Report
# BACKEND
- Compare on-site quantity and db quantity ( can't be exceed)
# DB
- Infoitem
    * Item Id (primary key)
    * Name
    * Size
    * color
    * Stock quantity (update by HD)
    * price
    * Discription
    * Thong Tin Chi Tiet
- List of item in Cart 
    + User ID (primary key)
    + Item Id (KP)
- User Profile
    + User ID (Primary Key)
    + Name
    + Gender
    + DoB
    + Phone numb
    + Email
- Account
    + User ID (PK)
    + password
- HD
    + User ID (PK)
    + HD ID (PK)
    + Total
- CTHD
    + HD ID (PK)
    + Item ID
    + quantity
    + price
