.class  Lcom/facebook/AuthorizationClient$2;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/AuthorizationClient$StartActivityDelegate;
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$2;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getActivityContext()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$2;->this$0:Lcom/facebook/AuthorizationClient;
iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
move-result-object v0
invoke-interface {v0}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;
move-result-object v0
return-object v0
.end method
.method public startActivityForResult(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/AuthorizationClient$2;->this$0:Lcom/facebook/AuthorizationClient;
iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
move-result-object v0
invoke-interface {v0, p1, p2}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method