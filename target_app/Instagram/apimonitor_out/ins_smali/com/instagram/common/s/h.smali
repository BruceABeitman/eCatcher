.class final Lcom/instagram/common/s/h;
.super Ljava/lang/Object;
.source "ShakeSensorHelper.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/instagram/common/s/f;
.method constructor <init>(Lcom/instagram/common/s/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/s/h;->a:Lcom/instagram/common/s/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/instagram/common/s/h;->a:Lcom/instagram/common/s/f;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/common/s/f;->a(Lcom/instagram/common/s/f;Z)Z
iget-object v0, p0, Lcom/instagram/common/s/h;->a:Lcom/instagram/common/s/f;
invoke-static {v0}, Lcom/instagram/common/s/f;->b(Lcom/instagram/common/s/f;)Lcom/instagram/common/s/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/s/a;->b()V
return-void
.end method