.class final Lcom/instagram/creation/photo/camera/l;
.super Ljava/lang/Object;
.source "CameraFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/creation/photo/camera/l; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->p(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/k;
move-result-object v1
iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->j(Lcom/instagram/creation/photo/camera/c;)I
move-result v0
iget-object v2, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v2}, Lcom/instagram/creation/photo/camera/c;->r(Lcom/instagram/creation/photo/camera/c;)I
move-result v2
if-ne v0, v2, :cond_23
iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->s(Lcom/instagram/creation/photo/camera/c;)I
move-result v0
:goto_1a
invoke-static {v1, v0}, Lcom/instagram/camera/g;->a(Landroid/content/SharedPreferences;I)V
iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;
invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->U()V
const-string v1, " - Lcom/instagram/creation/photo/camera/l; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->r(Lcom/instagram/creation/photo/camera/c;)I
move-result v0
goto :goto_1a
.end method