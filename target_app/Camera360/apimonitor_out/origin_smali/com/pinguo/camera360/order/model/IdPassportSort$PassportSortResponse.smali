.class public Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;
.super Lcom/pinguo/camera360/shop/model/api/BaseResponse;
.source "IdPassportSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/IdPassportSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassportSortResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;,
        Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/shop/model/api/BaseResponse",
        "<",
        "Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/api/BaseResponse;-><init>()V

    return-void
.end method
