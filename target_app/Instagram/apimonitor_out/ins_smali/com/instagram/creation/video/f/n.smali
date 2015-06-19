.class final Lcom/instagram/creation/video/f/n;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/video/f/n;->b:Lcom/instagram/creation/video/f/a;
iput-object p2, p0, Lcom/instagram/creation/video/f/n;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/creation/video/f/n; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/n;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->k()V
new-instance v0, Lcom/instagram/creation/video/ui/l;
iget-object v1, p0, Lcom/instagram/creation/video/f/n;->b:Lcom/instagram/creation/video/f/a;
invoke-virtual {v1}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/video/f/n;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v2}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v2
iget-object v3, p0, Lcom/instagram/creation/video/f/n;->b:Lcom/instagram/creation/video/f/a;
invoke-static {v3}, Lcom/instagram/creation/video/f/a;->j(Lcom/instagram/creation/video/f/a;)Landroid/view/View;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/video/ui/l;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/a;Landroid/view/View;)V
iget-object v1, p0, Lcom/instagram/creation/video/f/n;->a:Landroid/view/View;
const/16 v2, 0x33
invoke-virtual {v0, v1, v2, v4, v4}, Lcom/instagram/creation/video/ui/l;->showAtLocation(Landroid/view/View;III)V
const-string v1, " - Lcom/instagram/creation/video/f/n; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method