.class final Lcom/bbm/util/w;
.super Ljava/lang/Object;
.source "ChannelJoinUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/util/v;
.method constructor <init>(Lcom/bbm/util/v;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/w;->a:Lcom/bbm/util/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/w; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/util/fb;->a()V
iget-object v0, p0, Lcom/bbm/util/w;->a:Lcom/bbm/util/v;
iget-object v0, v0, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
iget-object v0, v0, Lcom/bbm/util/u;->a:Lcom/bbm/d/ec;
iget-object v1, p0, Lcom/bbm/util/w;->a:Lcom/bbm/util/v;
iget-object v1, v1, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
iget-object v1, v1, Lcom/bbm/util/u;->b:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/bbm/util/w;->a:Lcom/bbm/util/v;
iget-object v2, v2, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
iget-object v2, v2, Lcom/bbm/util/u;->d:Landroid/app/Activity;
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/s;->a(Lcom/bbm/d/ec;Landroid/widget/ImageView;Landroid/app/Activity;Z)V
const-string v1, " - Lcom/bbm/util/w; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method