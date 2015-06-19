.class Lcom/tencent/connect/common/BaseApi$1$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/common/BaseApi$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/connect/common/BaseApi$1;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/BaseApi$1;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    invoke-static {}, Lcom/tencent/connect/common/BaseApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-->handleDownloadLastestQQ onCancel"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1b
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 6

    invoke-static {}, Lcom/tencent/connect/common/BaseApi;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->handleDownloadLastestQQ onComplete ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2c
    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_2f
    const-string/jumbo v1, "fixpackageurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_35} :catch_4a

    move-result-object v0

    :goto_36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v1, v1, Lcom/tencent/connect/common/BaseApi$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_36
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 5

    invoke-static {}, Lcom/tencent/connect/common/BaseApi;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->handleDownloadLastestQQ onError ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_30
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1$1;->this$1:Lcom/tencent/connect/common/BaseApi$1;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return-void
.end method
