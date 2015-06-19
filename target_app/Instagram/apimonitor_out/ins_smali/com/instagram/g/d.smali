.class final Lcom/instagram/g/d;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"
.implements Lcom/instagram/common/c/a;
.field final synthetic a:Landroid/support/v4/app/s;
.method constructor <init>(Landroid/support/v4/app/s;)V
.registers 2
iput-object p1, p0, Lcom/instagram/g/d;->a:Landroid/support/v4/app/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/instagram/g/d;->a:Landroid/support/v4/app/s;
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/g/c;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V
return-void
.end method