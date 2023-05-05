--Feature 3
/*
Search for a restaurant by category. Input is a part of category name (e.g., for fast food the input could be just 'fast'). 
Please print out the name, average review score, average wait time, 
and zip code for restaurants that are open and match the input category name. 
*/

CREATE OR REPLACE FUNCTION search_restaurant(p_category_name IN VARCHAR2)
RETURN SYS_REFCURSOR
IS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR 
        SELECT resname, resavgreviewscore, resavgwaittime, reszipcode 
        FROM restaurant r JOIN category c ON r.resid = c.catid
        WHERE r.resstatus = 'open' AND UPPER(c.catname) LIKE UPPER('%'||p_category_name||'%');
    RETURN v_cursor;
END;
