.class  Lcom/facebook/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"
.implements Lcom/facebook/AuthorizationClient$OnCompletedListener;
.field final synthetic this$0:Lcom/facebook/LoginActivity;
.method constructor <init>(Lcom/facebook/LoginActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/LoginActivity$1;->this$0:Lcom/facebook/LoginActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompleted(Lcom/facebook/AuthorizationClient$Result;)V
.registers 3
iget-object v0, p0, Lcom/facebook/LoginActivity$1;->this$0:Lcom/facebook/LoginActivity;
#calls: Lcom/facebook/LoginActivity;->onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V
invoke-static {v0, p1}, Lcom/facebook/LoginActivity;->access$000(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
return-void
.end method