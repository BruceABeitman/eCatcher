.class public interface abstract Lcom/pinguo/lib/location/IPGLocationManager;
.super Ljava/lang/Object;
.source "IPGLocationManager.java"
.method public abstract destroy()V
.end method
.method public abstract getLocation()Lcom/pinguo/lib/location/data/PGLocation;
.end method
.method public abstract getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;
.end method
.method public abstract init(Landroid/content/Context;)V
.end method
.method public abstract requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
.end method
.method public abstract start()V
.end method
.method public abstract stop()V
.end method