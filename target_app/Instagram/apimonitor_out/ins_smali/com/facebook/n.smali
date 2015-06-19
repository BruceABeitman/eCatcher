.class final Lcom/facebook/n;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/ai;
.field final synthetic a:Lcom/facebook/k;
.field final synthetic b:Lcom/facebook/m;
.method constructor <init>(Lcom/facebook/m;Lcom/facebook/k;)V
.registers 3
iput-object p1, p0, Lcom/facebook/n;->b:Lcom/facebook/m;
iput-object p2, p0, Lcom/facebook/n;->a:Lcom/facebook/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/facebook/n;->b:Lcom/facebook/m;
iget-object v1, p0, Lcom/facebook/n;->a:Lcom/facebook/k;
invoke-virtual {v0, v1, p1}, Lcom/facebook/m;->a(Lcom/facebook/k;Landroid/os/Bundle;)V
return-void
.end method