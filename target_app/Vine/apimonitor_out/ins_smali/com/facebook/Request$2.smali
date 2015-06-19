.class final Lcom/facebook/Request$2;
.super Ljava/lang/Object;
.source "Request.java"
.implements Lcom/facebook/Request$Callback;
.field final synthetic val$callback:Lcom/facebook/Request$GraphUserListCallback;
.method constructor <init>(Lcom/facebook/Request$GraphUserListCallback;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request$2;->val$callback:Lcom/facebook/Request$GraphUserListCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompleted(Lcom/facebook/Response;)V
.registers 4
iget-object v0, p0, Lcom/facebook/Request$2;->val$callback:Lcom/facebook/Request$GraphUserListCallback;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/Request$2;->val$callback:Lcom/facebook/Request$GraphUserListCallback;
const-class v1, Lcom/facebook/model/GraphUser;
#calls: Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
invoke-static {p1, v1}, Lcom/facebook/Request;->access$000(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/facebook/Request$GraphUserListCallback;->onCompleted(Ljava/util/List;Lcom/facebook/Response;)V
:cond_f
return-void
.end method