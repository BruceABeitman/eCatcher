.class public Lcom/pinguo/camera360/order/model/Coupon$Info;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/Coupon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x61fae8156e60bc61L


# instance fields
.field public amount:I

.field public coupon:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field expireTime:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
