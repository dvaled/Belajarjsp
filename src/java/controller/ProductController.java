/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Query.ProductQuery;
import java.sql.ResultSet;

/**
 *
 * @author DAVA
 */
public class ProductController {
    ProductQuery query = new ProductQuery();
    
    public ResultSet get() {
        String sql = this.query.get;
        return this.get(sql);
        
        
    }
    
}
