.class final Lcom/instagram/creation/video/ui/n;
.super Ljava/lang/Object;
.source "SoftDeletePopupWindow.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/graphics/Rect;
.field final synthetic b:Landroid/view/View;
.field final synthetic c:Lcom/instagram/creation/video/ui/l;
.method constructor <init>(Lcom/instagram/creation/video/ui/l;Landroid/graphics/Rect;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lcom/instagram/creation/video/ui/n;->c:Lcom/instagram/creation/video/ui/l;
iput-object p2, p0, Lcom/instagram/creation/video/ui/n;->a:Landroid/graphics/Rect;
iput-object p3, p0, Lcom/instagram/creation/video/ui/n;->b:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/creation/video/ui/n; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/video/ui/n;->c:Lcom/instagram/creation/video/ui/l;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/l;->dismiss()V
iget-object v0, p0, Lcom/instagram/creation/video/ui/n;->a:Landroid/graphics/Rect;
iget-object v1, p0, Lcom/instagram/creation/video/ui/n;->c:Lcom/instagram/creation/video/ui/l;
invoke-static {v1}, Lcom/instagram/creation/video/ui/l;->a(Lcom/instagram/creation/video/ui/l;)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lcom/instagram/creation/video/ui/n;->c:Lcom/instagram/creation/video/ui/l;
invoke-static {v2}, Lcom/instagram/creation/video/ui/l;->b(Lcom/instagram/creation/video/ui/l;)F
move-result v2
float-to-int v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/instagram/creation/video/ui/n;->c:Lcom/instagram/creation/video/ui/l;
invoke-static {v0}, Lcom/instagram/creation/video/ui/l;->c(Lcom/instagram/creation/video/ui/l;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->j()V
iget-object v0, p0, Lcom/instagram/creation/video/ui/n;->b:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V
:goto_2a
const-string v1, " - Lcom/instagram/creation/video/ui/n; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2b
iget-object v0, p0, Lcom/instagram/creation/video/ui/n;->c:Lcom/instagram/creation/video/ui/l;
invoke-static {v0}, Lcom/instagram/creation/video/ui/l;->c(Lcom/instagram/creation/video/ui/l;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->h()V
goto :goto_2a
.end method