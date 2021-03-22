package Pojo;
// Generated 7 Mar, 2021 12:51:36 PM by Hibernate Tools 4.3.1



/**
 * DeliveryBoy generated by hbm2java
 */
public class DeliveryBoy  implements java.io.Serializable {


     private Long dbId;
     private String dbEmail;
     private String dbPass;
     private String dbName;
     private String dbCity;
     private String dbPhone;
     private String dbAddress;
     private String status;

    public DeliveryBoy() {
    }

    public DeliveryBoy(String dbEmail, String dbPass, String dbName, String dbCity, String dbPhone, String dbAddress,String status) {
       this.dbEmail = dbEmail;
       this.dbPass = dbPass;
       this.dbName = dbName;
       this.dbCity = dbCity;
       this.dbPhone = dbPhone;
       this.dbAddress = dbAddress;
       this.status = status;
    }


    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }
   
    public Long getDbId() {
        return this.dbId;
    }
    
    public void setDbId(Long dbId) {
        this.dbId = dbId;
    }
    public String getDbEmail() {
        return this.dbEmail;
    }
    
    public void setDbEmail(String dbEmail) {
        this.dbEmail = dbEmail;
    }
    public String getDbPass() {
        return this.dbPass;
    }
    
    public void setDbPass(String dbPass) {
        this.dbPass = dbPass;
    }
    public String getDbName() {
        return this.dbName;
    }
    
    public void setDbName(String dbName) {
        this.dbName = dbName;
    }
    public String getDbCity() {
        return this.dbCity;
    }
    
    public void setDbCity(String dbCity) {
        this.dbCity = dbCity;
    }
    public String getDbPhone() {
        return this.dbPhone;
    }
    
    public void setDbPhone(String dbPhone) {
        this.dbPhone = dbPhone;
    }
    public String getDbAddress() {
        return this.dbAddress;
    }
    
    public void setDbAddress(String dbAddress) {
        this.dbAddress = dbAddress;
    }




}


