.class  Lcom/pinguo/share/local/LocalQQShare$1$1;
.super Ljava/lang/Object;
.source "LocalQQShare.java"
.implements Lcom/tencent/tauth/IUiListener;
.field final synthetic this$1:Lcom/pinguo/share/local/LocalQQShare$1;
.field private final synthetic val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
.method constructor <init>(Lcom/pinguo/share/local/LocalQQShare$1;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->this$1:Lcom/pinguo/share/local/LocalQQShare$1;
iput-object p2, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel()V
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
invoke-interface {v0}, Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;->onCancelled()V
:cond_9
return-void
.end method
.method public onComplete(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
invoke-interface {v0}, Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;->onSuccessed()V
:cond_9
return-void
.end method
.method public onError(Lcom/tencent/tauth/UiError;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare$1$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;
iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;->onFailed(Ljava/lang/String;)V
:cond_b
return-void
.end method