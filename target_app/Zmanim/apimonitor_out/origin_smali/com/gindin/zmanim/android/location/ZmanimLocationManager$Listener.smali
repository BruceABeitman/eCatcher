.class public interface abstract Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
.super Ljava/lang/Object;
.source "ZmanimLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract error(Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
.end method

.method public abstract locationChanged(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
.end method

.method public abstract onProgress(Ljava/lang/String;)V
.end method
