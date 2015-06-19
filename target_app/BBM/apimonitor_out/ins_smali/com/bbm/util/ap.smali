.class final Lcom/bbm/util/ap;
.super Ljava/lang/Object;
.source "ChannelUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/o;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Z
.field final synthetic e:Landroid/app/Activity;
.method constructor <init>(Lcom/bbm/ui/b/o;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.registers 6
iput-object p1, p0, Lcom/bbm/util/ap;->a:Lcom/bbm/ui/b/o;
iput-object p2, p0, Lcom/bbm/util/ap;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/util/ap;->c:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/util/ap;->d:Z
iput-object p4, p0, Lcom/bbm/util/ap;->e:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/ap; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/util/ap;->a:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
iget-object v0, p0, Lcom/bbm/util/ap;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/z;->a(Ljava/lang/String;)Lcom/bbm/d/ax;
move-result-object v0
iget-object v1, p0, Lcom/bbm/util/ap;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/ax;->a(Ljava/lang/String;)Lcom/bbm/d/ax;
new-instance v1, Lcom/bbm/util/aq;
invoke-direct {v1, p0}, Lcom/bbm/util/aq;-><init>(Lcom/bbm/util/ap;)V
iget-object v2, p0, Lcom/bbm/util/ap;->c:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/util/ap;->e:Landroid/app/Activity;
invoke-virtual {v1, v2, v3}, Lcom/bbm/ui/d/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const-string v1, " - Lcom/bbm/util/ap; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method