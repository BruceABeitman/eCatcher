.class public interface abstract Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
.super Ljava/lang/Object;
.source "SonyWifiDetectMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiDetectedListener"
.end annotation


# virtual methods
.method public abstract shouldNotDectedEvent()Z
.end method

.method public abstract wifiRetryConnectFail()V
.end method

.method public abstract wifiRetryConnectSuccess()V
.end method
