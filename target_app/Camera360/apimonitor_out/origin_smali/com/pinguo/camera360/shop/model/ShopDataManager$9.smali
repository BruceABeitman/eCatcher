.class Lcom/pinguo/camera360/shop/model/ShopDataManager$9;
.super Ljava/lang/Object;
.source "ShopDataManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/model/ShopDataManager;->buy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$9;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "Post order error: "

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method
