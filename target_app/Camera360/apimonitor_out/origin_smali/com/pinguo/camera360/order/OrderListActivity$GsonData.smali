.class Lcom/pinguo/camera360/order/OrderListActivity$GsonData;
.super Ljava/lang/Object;
.source "OrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/OrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsonData"
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/OrderBean;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public serverTime:D

.field public status:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
