.class  Lcom/facebook/katana/service/api/methods/ApiMethod$3;
.super Ljava/lang/Object;
.source "ApiMethod.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
.field private final synthetic val$errorCode:I
.field private final synthetic val$ex:Ljava/lang/Exception;
.field private final synthetic val$reasonPhrase:Ljava/lang/String;
.method constructor <init>(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/Exception;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
iput p2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->val$errorCode:I
iput-object p3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->val$ex:Ljava/lang/Exception;
iput-object p4, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->val$reasonPhrase:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->val$errorCode:I
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->val$ex:Ljava/lang/Exception;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/ApiMethod;->simulateSessionKeyError()Z
move-result v2
if-eqz v2, :cond_15
new-instance v1, Lcom/facebook/katana/service/api/FacebookApiException;
const/16 v2, 0x66
const-string v3, "Invalid credentials"
invoke-direct {v1, v2, v3}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V
:cond_15
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
iget-object v2, v2, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$3;->val$reasonPhrase:Ljava/lang/String;
invoke-interface {v2, v3, v0, v4, v1}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
return-void
.end method