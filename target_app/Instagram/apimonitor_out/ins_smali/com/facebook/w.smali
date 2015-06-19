.class final Lcom/facebook/w;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/widget/o;
.field final synthetic a:Lcom/facebook/k;
.field final synthetic b:Lcom/facebook/v;
.method constructor <init>(Lcom/facebook/v;Lcom/facebook/k;)V
.registers 3
iput-object p1, p0, Lcom/facebook/w;->b:Lcom/facebook/v;
iput-object p2, p0, Lcom/facebook/w;->a:Lcom/facebook/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/os/Bundle;Lcom/facebook/z;)V
.registers 5
iget-object v0, p0, Lcom/facebook/w;->b:Lcom/facebook/v;
iget-object v1, p0, Lcom/facebook/w;->a:Lcom/facebook/k;
invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/v;->a(Lcom/facebook/k;Landroid/os/Bundle;Lcom/facebook/z;)V
return-void
.end method