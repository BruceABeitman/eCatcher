.class final Lcom/instagram/creation/video/f/t;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/t;->a:Lcom/instagram/creation/video/f/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/creation/video/f/t; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/t;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->c()I
move-result v0
const/16 v1, 0xbb8
if-ge v0, v1, :cond_15
iget-object v0, p0, Lcom/instagram/creation/video/f/t;->a:Lcom/instagram/creation/video/f/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->Y()V
:goto_14
const-string v1, " - Lcom/instagram/creation/video/f/t; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_15
iget-object v0, p0, Lcom/instagram/creation/video/f/t;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->p(Lcom/instagram/creation/video/f/a;)Z
new-instance v0, Lcom/instagram/creation/video/f/v;
iget-object v1, p0, Lcom/instagram/creation/video/f/t;->a:Lcom/instagram/creation/video/f/a;
invoke-direct {v0, v1, v3}, Lcom/instagram/creation/video/f/v;-><init>(Lcom/instagram/creation/video/f/a;B)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/instagram/creation/b/a/b;
iget-object v2, p0, Lcom/instagram/creation/video/f/t;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v2}, Lcom/instagram/creation/video/f/a;->q(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/b/a/b;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/v;->b([Ljava/lang/Object;)Lcom/instagram/common/b/a;
goto :goto_14
.end method