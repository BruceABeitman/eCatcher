.class  Lcom/pinguo/camera360/shop/model/ShopDataManager$9;
.super Ljava/lang/Object;
.source "ShopDataManager.java"
.implements Lcom/android/volley/Response$ErrorListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
.method constructor <init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$9;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
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