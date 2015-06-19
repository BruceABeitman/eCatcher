.class public Lcom/pinguo/camera360/order/model/Coupon;
.super Ljava/lang/Object;
.source "Coupon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/model/Coupon$CouponResponse;,
        Lcom/pinguo/camera360/order/model/Coupon$Info;
    }
.end annotation


# static fields
.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_USED:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/model/Coupon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/model/Coupon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
