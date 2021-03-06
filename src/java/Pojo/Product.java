package Pojo;
// Generated 7 Mar, 2021 12:51:36 PM by Hibernate Tools 4.3.1



/**
 * Product generated by hbm2java
 */
public class Product  implements java.io.Serializable {


     private Long pid;
     private String pname;
     private String pdesc;
     private String pphoto;
     private long pprice;
     private long pdiscount;
     private long pquantity;
     private long categoryId;
     private long shopId;
     private String punit;

    public Product() {
    }

    public Product(String pname, String pdesc, String pphoto, long pprice, long pdiscount, long pquantity, long categoryId, long shopId,String punit) {
       this.pname = pname;
       this.pdesc = pdesc;
       this.pphoto = pphoto;
       this.pprice = pprice;
       this.pdiscount = pdiscount;
       this.pquantity = pquantity;
       this.categoryId = categoryId;
       this.shopId = shopId;
       this.punit = punit;
    }

    public void setPunit(String punit) {
        this.punit = punit;
    }

    public String getPunit() {
        return punit;
    }
   
    public Long getPid() {
        return this.pid;
    }
    
    public void setPid(Long pid) {
        this.pid = pid;
    }
    public String getPname() {
        return this.pname;
    }
    
    public void setPname(String pname) {
        this.pname = pname;
    }
    public String getPdesc() {
        return this.pdesc;
    }
    
    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }
    public String getPphoto() {
        return this.pphoto;
    }
    
    public void setPphoto(String pphoto) {
        this.pphoto = pphoto;
    }
    public long getPprice() {
        return this.pprice;
    }
    
    public void setPprice(long pprice) {
        this.pprice = pprice;
    }
    public long getPdiscount() {
        return this.pdiscount;
    }
    
    public void setPdiscount(long pdiscount) {
        this.pdiscount = pdiscount;
    }
    public long getPquantity() {
        return this.pquantity;
    }
    
    public void setPquantity(long pquantity) {
        this.pquantity = pquantity;
    }
    public long getCategoryId() {
        return this.categoryId;
    }
    
    public void setCategoryId(long categoryId) {
        this.categoryId = categoryId;
    }
    public long getShopId() {
        return this.shopId;
    }
    
    public void setShopId(long shopId) {
        this.shopId = shopId;
    }
    
    //Calculating price after discount
    public long getPriceAfterApplyingDiscount()
    {
        long discount=(long)((this.getPdiscount()/100.0)*this.getPprice());
        return this.getPprice()-discount;
    }


}


