.class public Lcom/pinguo/camera360/nearbytransfer/event/DeviceOfflineEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "DeviceOfflineEvent.java"


# instance fields
.field private mDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/event/DeviceOfflineEvent;->mDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/event/DeviceOfflineEvent;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/event/DeviceOfflineEvent;->mDeviceId:Ljava/lang/String;

    return-void
.end method
