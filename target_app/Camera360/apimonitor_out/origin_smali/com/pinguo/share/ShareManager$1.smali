.class Lcom/pinguo/share/ShareManager$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ShareManager;->reqNationForBeeTalk(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/share/ShareManager;->access$0(Lcom/pinguo/camera360/login/i/user/ApiGetLocation;)V

    return-void
.end method

.method public onSuccess(Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;)V
    .registers 5

    iget v1, p1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;->status:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1d

    iget-object v1, p1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;->data:Ljava/lang/Object;

    check-cast v1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data;

    iget-object v1, v1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data;->country:Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data$Country;

    if-eqz v1, :cond_1d

    iget-object v1, p1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;->data:Ljava/lang/Object;

    check-cast v1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data;

    iget-object v1, v1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data;->country:Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data$Country;

    iget-object v0, v1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data$Country;->code:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setUserCountryCode(Ljava/lang/String;)V

    :cond_1d
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/pinguo/share/ShareManager;->access$0(Lcom/pinguo/camera360/login/i/user/ApiGetLocation;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/share/ShareManager$1;->onSuccess(Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;)V

    return-void
.end method
