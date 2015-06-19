.class public Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;
.super Ljava/lang/Object;
.source "ServerDeviceInstance.java"


# static fields
.field private static mServerDevice:Lcom/pinguo/camera360/sony/model/ServerDevice;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->mServerDevice:Lcom/pinguo/camera360/sony/model/ServerDevice;

    return-void
.end method

.method public static createServerDevice(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/pinguo/camera360/sony/model/ServerDevice;->fetch(Ljava/lang/String;)Lcom/pinguo/camera360/sony/model/ServerDevice;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->mServerDevice:Lcom/pinguo/camera360/sony/model/ServerDevice;

    return-void
.end method

.method public static getServerDevice()Lcom/pinguo/camera360/sony/model/ServerDevice;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->mServerDevice:Lcom/pinguo/camera360/sony/model/ServerDevice;

    return-object v0
.end method
