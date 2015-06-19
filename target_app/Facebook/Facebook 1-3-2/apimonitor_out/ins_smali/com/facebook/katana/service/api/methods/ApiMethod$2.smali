.class  Lcom/facebook/katana/service/api/methods/ApiMethod$2;
.super Ljava/lang/Object;
.source "ApiMethod.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
.field private final synthetic val$errorCode:I
.field private final synthetic val$ex:Ljava/lang/Exception;
.field private final synthetic val$reasonPhrase:Ljava/lang/String;
.method constructor <init>(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 5
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
iput p2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->val$errorCode:I
iput-object p3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->val$reasonPhrase:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->val$ex:Ljava/lang/Exception;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
const/4 v1, 0x0
iput-object v1, v0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
iget v2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->val$errorCode:I
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->val$reasonPhrase:Ljava/lang/String;
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$2;->val$ex:Ljava/lang/Exception;
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/ApiMethod;->dispatchOnOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_6
.end method