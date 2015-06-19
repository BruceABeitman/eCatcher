.class public Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
.super Ljava/lang/Object;
.source "AdvertisementModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/adv/AdvertisementModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public areaId:Ljava/lang/String;

.field public imgDefault:I

.field public imgUrl:Ljava/lang/String;

.field public interactionUri:Ljava/lang/String;

.field public interval:I

.field public name:Ljava/lang/String;

.field public nameDefault:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->nameDefault:I

    iput v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    return-void
.end method
