.class Lcom/tencent/weiyun/RecordManager$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weiyun/RecordManager;->deleteRecord(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Lcom/tencent/weiyun/RecordManager;


# direct methods
.method constructor <init>(Lcom/tencent/weiyun/RecordManager;Lcom/tencent/tauth/IUiListener;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/weiyun/RecordManager$2;->b:Lcom/tencent/weiyun/RecordManager;

    iput-object p2, p0, Lcom/tencent/weiyun/RecordManager$2;->a:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$2;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, -0x4

    check-cast p1, Lorg/json/JSONObject;

    :try_start_4
    const-string/jumbo v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$2;->a:Lcom/tencent/tauth/IUiListener;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$2;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v1, Lcom/tencent/tauth/UiError;

    const/4 v2, -0x4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_26} :catch_27

    goto :goto_15

    :catch_27
    move-exception v0

    iget-object v1, p0, Lcom/tencent/weiyun/RecordManager$2;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v2, Lcom/tencent/tauth/UiError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0, v6}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_15
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$2;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return-void
.end method
