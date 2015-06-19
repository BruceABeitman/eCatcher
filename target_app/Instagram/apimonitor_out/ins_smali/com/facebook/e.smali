.class final Lcom/facebook/e;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/u;
.field final synthetic a:Lcom/facebook/c;
.method constructor <init>(Lcom/facebook/c;)V
.registers 2
iput-object p1, p0, Lcom/facebook/e;->a:Lcom/facebook/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/e;->a:Lcom/facebook/c;
iget-object v0, v0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-virtual {v0}, Lcom/facebook/k;->a()Lcom/facebook/u;
move-result-object v0
invoke-interface {v0}, Lcom/facebook/u;->a()Landroid/app/Activity;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/e;->a:Lcom/facebook/c;
iget-object v0, v0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-virtual {v0}, Lcom/facebook/k;->a()Lcom/facebook/u;
move-result-object v0
invoke-interface {v0, p1, p2}, Lcom/facebook/u;->a(Landroid/content/Intent;I)V
return-void
.end method