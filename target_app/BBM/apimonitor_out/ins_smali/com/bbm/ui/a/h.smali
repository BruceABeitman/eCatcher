.class final Lcom/bbm/ui/a/h;
.super Ljava/lang/Object;
.source "ChannelPostAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/a/a;
.method constructor <init>(Lcom/bbm/ui/a/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/a/h;->a:Lcom/bbm/ui/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/a/h; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "SlideMenuItem bottomItem Clicked"
const-class v1, Lcom/bbm/ui/a/a;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/a/h;->a:Lcom/bbm/ui/a/a;
invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/a/h;->a:Lcom/bbm/ui/a/a;
invoke-static {v1}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/a/h;->a:Lcom/bbm/ui/a/a;
invoke-static {v2}, Lcom/bbm/ui/a/a;->g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/a/h; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method