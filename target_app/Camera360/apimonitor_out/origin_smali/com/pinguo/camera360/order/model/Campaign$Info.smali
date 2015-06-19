.class public Lcom/pinguo/camera360/order/model/Campaign$Info;
.super Ljava/lang/Object;
.source "Campaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/Campaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/Campaign$PosterImage;",
            ">;"
        }
    .end annotation
.end field

.field public shareInfo:Lcom/pinguo/camera360/order/model/Campaign$ShareInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
