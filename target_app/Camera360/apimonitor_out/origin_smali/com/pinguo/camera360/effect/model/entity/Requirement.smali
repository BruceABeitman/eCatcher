.class public Lcom/pinguo/camera360/effect/model/entity/Requirement;
.super Ljava/lang/Object;
.source "Requirement.java"


# instance fields
.field public engineMax:I

.field public engineMin:I

.field public sdkMax:I

.field public sdkMin:I

.field public unsupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const v1, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/pinguo/camera360/effect/model/entity/Requirement;->sdkMin:I

    iput v1, p0, Lcom/pinguo/camera360/effect/model/entity/Requirement;->sdkMax:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/pinguo/camera360/effect/model/entity/Requirement;->engineMin:I

    iput v1, p0, Lcom/pinguo/camera360/effect/model/entity/Requirement;->engineMax:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Requirement;->unsupport:Ljava/util/List;

    return-void
.end method
