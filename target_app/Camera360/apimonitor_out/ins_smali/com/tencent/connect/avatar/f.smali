.class  Lcom/tencent/connect/avatar/f;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity;
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/connect/avatar/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v2}, Lcom/tencent/connect/avatar/ImageActivity;->i(Lcom/tencent/connect/avatar/ImageActivity;)J
move-result-wide v2
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;
const-string/jumbo v3, "10656"
invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->setResult(I)V
iget-object v0, p0, Lcom/tencent/connect/avatar/f;->a:Lcom/tencent/connect/avatar/ImageActivity;
invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->j(Lcom/tencent/connect/avatar/ImageActivity;)V
const-string v1, " - Lcom/tencent/connect/avatar/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method