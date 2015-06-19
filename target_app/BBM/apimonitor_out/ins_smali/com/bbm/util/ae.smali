.class final Lcom/bbm/util/ae;
.super Ljava/lang/Object;
.source "ChannelUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/o;
.field final synthetic b:Z
.field final synthetic c:Lcom/bbm/d/ec;
.field final synthetic d:Lcom/bbm/d/el;
.field final synthetic e:Ljava/lang/String;
.method constructor <init>(Lcom/bbm/ui/b/o;Lcom/bbm/d/ec;Lcom/bbm/d/el;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/bbm/util/ae;->a:Lcom/bbm/ui/b/o;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/util/ae;->b:Z
iput-object p2, p0, Lcom/bbm/util/ae;->c:Lcom/bbm/d/ec;
iput-object p3, p0, Lcom/bbm/util/ae;->d:Lcom/bbm/d/el;
iput-object p4, p0, Lcom/bbm/util/ae;->e:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/ae; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/util/ae;->a:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-boolean v1, p0, Lcom/bbm/util/ae;->b:Z
iget-object v2, p0, Lcom/bbm/util/ae;->c:Lcom/bbm/d/ec;
iget-object v2, v2, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/util/ae;->d:Lcom/bbm/d/el;
iget-object v3, v3, Lcom/bbm/d/el;->k:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/util/ae;->e:Ljava/lang/String;
new-instance v5, Lcom/bbm/d/ah;
invoke-direct {v5, v1, v2, v3, v4}, Lcom/bbm/d/ah;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v5}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const-string v1, " - Lcom/bbm/util/ae; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method