.class public Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Province;
.super Ljava/lang/Object;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/Region$RegionListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Province"
.end annotation


# instance fields
.field public cities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;",
            ">;"
        }
    .end annotation
.end field

.field public province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
