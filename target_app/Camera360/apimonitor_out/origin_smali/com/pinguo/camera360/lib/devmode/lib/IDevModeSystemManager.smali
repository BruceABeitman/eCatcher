.class public interface abstract Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager;
.super Ljava/lang/Object;
.source "IDevModeSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;,
        Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$NetworkInfo;,
        Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;,
        Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
    }
.end annotation


# virtual methods
.method public abstract getGpsInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
.end method

.method public abstract getNetworkInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$NetworkInfo;
.end method

.method public abstract getRomInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
.end method

.method public abstract getSdCardInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
.end method
