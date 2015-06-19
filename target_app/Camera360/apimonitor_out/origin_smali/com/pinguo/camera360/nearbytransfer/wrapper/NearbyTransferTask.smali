.class public Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;
.super Ljava/lang/Object;
.source "NearbyTransferTask.java"


# instance fields
.field public device:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

.field public pathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public saveOnlySuccess:Z

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;->saveOnlySuccess:Z

    return-void
.end method
