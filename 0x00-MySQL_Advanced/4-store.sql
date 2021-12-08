-- create
CREATE trigger decrease_qty after insert
ON orders for each row update items
SET quantity = quantity - NEW.number
WHERE NEW.item_name = name;
