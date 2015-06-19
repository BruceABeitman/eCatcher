.class final Lcom/bbm/util/ao;
.super Ljava/lang/Object;
.source "ChannelUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/o;
.field final synthetic b:Lcom/bbm/d/ec;
.field final synthetic c:Landroid/app/Activity;
.field final synthetic d:Z
.method constructor <init>(Lcom/bbm/ui/b/o;Lcom/bbm/d/ec;Landroid/app/Activity;)V
.registers 5
iput-object p1, p0, Lcom/bbm/util/ao;->a:Lcom/bbm/ui/b/o;
iput-object p2, p0, Lcom/bbm/util/ao;->b:Lcom/bbm/d/ec;
iput-object p3, p0, Lcom/bbm/util/ao;->c:Landroid/app/Activity;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/util/ao;->d:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/ao; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/util/ao;->a:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
iget-object v0, p0, Lcom/bbm/util/ao;->b:Lcom/bbm/d/ec;
const/4 v1, 0x0
iget-object v2, p0, Lcom/bbm/util/ao;->c:Landroid/app/Activity;
iget-boolean v3, p0, Lcom/bbm/util/ao;->d:Z
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/s;->a(Lcom/bbm/d/ec;Landroid/widget/ImageView;Landroid/app/Activity;Z)V
const-string v1, " - Lcom/bbm/util/ao; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method