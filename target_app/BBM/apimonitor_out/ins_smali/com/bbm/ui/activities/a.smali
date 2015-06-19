.class final Lcom/bbm/ui/activities/a;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0170
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
:cond_1c
:goto_1c
const-string v1, " - Lcom/bbm/ui/activities/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->b(Lcom/bbm/ui/activities/AddChannelPostActivity;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->b(Lcom/bbm/ui/activities/AddChannelPostActivity;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
new-instance v2, Lcom/cropimage/f;
invoke-direct {v2, v0, v3}, Lcom/cropimage/f;-><init>(Landroid/net/Uri;B)V
invoke-static {v1, v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a(Lcom/bbm/ui/activities/AddChannelPostActivity;Lcom/cropimage/f;)Lcom/cropimage/f;
iget-object v1, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
move-result-object v1
iput-object v0, v1, Lcom/cropimage/f;->b:Landroid/net/Uri;
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
move-result-object v0
iput-boolean v4, v0, Lcom/cropimage/f;->c:Z
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
move-result-object v0
iput-boolean v3, v0, Lcom/cropimage/f;->d:Z
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
move-result-object v0
iput-boolean v3, v0, Lcom/cropimage/f;->a:Z
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
move-result-object v0
iput-boolean v4, v0, Lcom/cropimage/f;->e:Z
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
move-result-object v0
const v1, 0x32000
iput v1, v0, Lcom/cropimage/f;->f:I
iget-object v0, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/AddChannelPostActivity;->c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/a;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-virtual {v1, v2}, Lcom/cropimage/f;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_1c
.end method