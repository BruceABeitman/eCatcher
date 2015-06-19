.class public Lcom/pinguo/camera360/order/model/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/Campaign$Info;,
        Lcom/pinguo/camera360/order/model/Campaign$PosterImage;,
        Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/model/Coupon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/model/Campaign;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Campaign;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/pinguo/lib/os/AsyncFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/Campaign$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/order/model/Campaign$1;

    new-instance v1, Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/Campaign;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/order/model/store/v1/ApiShareCampaign;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/order/model/Campaign$1;-><init>(Lcom/pinguo/camera360/order/model/Campaign;Lcom/pinguo/lib/os/AsyncFuture;)V

    return-object v0
.end method
