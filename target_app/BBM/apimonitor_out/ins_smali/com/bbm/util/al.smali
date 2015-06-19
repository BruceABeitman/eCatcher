.class final Lcom/bbm/util/al;
.super Ljava/lang/Object;
.source "ChannelUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Lcom/bbm/ui/b/o;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/b/o;)V
.registers 5
iput-object p1, p0, Lcom/bbm/util/al;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/bbm/util/al;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/util/al;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/bbm/util/al;->d:Lcom/bbm/ui/b/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/al; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/util/al;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/util/al;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/util/al;->c:Ljava/lang/String;
new-instance v4, Lcom/bbm/d/bq;
invoke-direct {v4, v1, v2, v3}, Lcom/bbm/d/bq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/util/al;->d:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
const-string v1, " - Lcom/bbm/util/al; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method