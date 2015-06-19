.class  Lcom/tencent/connect/avatar/d;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity;
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/connect/avatar/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-wide/16 v4, 0x0
const/16 v1, 0x15
const/4 v2, 0x0
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->d(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;
move-result-object v0
invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;
move-result-object v0
const/16 v1, 0x24
const/16 v2, 0x5e
const/16 v3, 0x86
invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/tencent/connect/avatar/d$1;
invoke-direct {v1, p0}, Lcom/tencent/connect/avatar/d$1;-><init>(Lcom/tencent/connect/avatar/d;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->h(Lcom/tencent/connect/avatar/ImageActivity;)Z
move-result v0
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
const-string/jumbo v1, "10657"
invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V
:goto_5d
:cond_5d
const-string v1, " - Lcom/tencent/connect/avatar/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v2}, Lcom/tencent/connect/avatar/ImageActivity;->i(Lcom/tencent/connect/avatar/ImageActivity;)J
move-result-wide v2
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
const-string/jumbo v3, "10655"
invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->c(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/avatar/b;
move-result-object v0
iget-boolean v0, v0, Lcom/tencent/connect/avatar/b;->b:Z
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;
const-string/jumbo v1, "10654"
invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V
goto :goto_5d
.end method