.class final Lcom/facebook/bv;
.super Ljava/lang/Object;
.source "Session.java"
.implements Lcom/facebook/cb;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Lcom/facebook/bu;
.method constructor <init>(Lcom/facebook/bu;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/facebook/bv;->b:Lcom/facebook/bu;
iput-object p2, p0, Lcom/facebook/bv;->a:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/bv;->a:Landroid/app/Activity;
return-object v0
.end method
.method public final a(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/bv;->a:Landroid/app/Activity;
invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method