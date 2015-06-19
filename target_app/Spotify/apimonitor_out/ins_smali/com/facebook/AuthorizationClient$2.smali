.class final Lcom/facebook/AuthorizationClient$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/h;
.field final synthetic a:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$2;->a:Lcom/facebook/AuthorizationClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$2;->a:Lcom/facebook/AuthorizationClient;
iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->a()Lcom/facebook/h;
move-result-object v0
invoke-interface {v0}, Lcom/facebook/h;->a()Landroid/app/Activity;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/AuthorizationClient$2;->a:Lcom/facebook/AuthorizationClient;
iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->a()Lcom/facebook/h;
move-result-object v0
invoke-interface {v0, p1, p2}, Lcom/facebook/h;->a(Landroid/content/Intent;I)V
return-void
.end method