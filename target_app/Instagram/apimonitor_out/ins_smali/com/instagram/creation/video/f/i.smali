.class final Lcom/instagram/creation/video/f/i;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/Throwable;
.field final synthetic b:I
.field final synthetic c:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;Ljava/lang/Throwable;I)V
.registers 4
iput-object p1, p0, Lcom/instagram/creation/video/f/i;->c:Lcom/instagram/creation/video/f/a;
iput-object p2, p0, Lcom/instagram/creation/video/f/i;->a:Ljava/lang/Throwable;
iput p3, p0, Lcom/instagram/creation/video/f/i;->b:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
const-string v0, "CamcorderFragment"
iget-object v1, p0, Lcom/instagram/creation/video/f/i;->a:Ljava/lang/Throwable;
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/instagram/creation/video/f/i;->c:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;
move-result-object v0
iget v1, p0, Lcom/instagram/creation/video/f/i;->b:I
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/instagram/creation/video/f/i;->c:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V
return-void
.end method