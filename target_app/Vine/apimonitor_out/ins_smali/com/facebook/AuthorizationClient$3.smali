.class  Lcom/facebook/AuthorizationClient$3;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/Request$Callback;
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.field final synthetic val$fbids:Ljava/util/ArrayList;
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$3;->this$0:Lcom/facebook/AuthorizationClient;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$3;->val$fbids:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompleted(Lcom/facebook/Response;)V
.registers 5
:try_start_0
const-class v1, Lcom/facebook/model/GraphUser;
invoke-virtual {p1, v1}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v0
check-cast v0, Lcom/facebook/model/GraphUser;
if-eqz v0, :cond_13
iget-object v1, p0, Lcom/facebook/AuthorizationClient$3;->val$fbids:Ljava/util/ArrayList;
invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_13
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v1
goto :goto_13
.end method