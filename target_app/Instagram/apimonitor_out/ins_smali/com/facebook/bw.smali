.class final Lcom/facebook/bw;
.super Ljava/lang/Object;
.source "Session.java"
.implements Lcom/facebook/cb;
.field final synthetic a:Landroid/support/v4/app/Fragment;
.field final synthetic b:Lcom/facebook/bu;
.method constructor <init>(Lcom/facebook/bu;Landroid/support/v4/app/Fragment;)V
.registers 3
iput-object p1, p0, Lcom/facebook/bw;->b:Lcom/facebook/bu;
iput-object p2, p0, Lcom/facebook/bw;->a:Landroid/support/v4/app/Fragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/bw;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/bw;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V
return-void
.end method