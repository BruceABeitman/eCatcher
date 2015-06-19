.class public interface abstract Lcom/gindin/zmanim/android/location/LocationProvider$Listener;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/location/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/gindin/zmanim/android/location/LocationError;Landroid/location/Location;Ljava/lang/String;)V
.end method

.method public abstract onLocationChanged(Landroid/location/Location;Ljava/lang/String;)V
.end method

.method public abstract onProgress(Ljava/lang/String;)V
.end method
