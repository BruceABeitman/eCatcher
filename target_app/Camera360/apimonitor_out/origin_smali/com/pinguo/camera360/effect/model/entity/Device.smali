.class public Lcom/pinguo/camera360/effect/model/entity/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field public brand:Ljava/lang/String;

.field public model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Device;->model:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Device;->brand:Ljava/lang/String;

    return-void
.end method
