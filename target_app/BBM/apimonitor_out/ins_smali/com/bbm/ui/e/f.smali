.class final Lcom/bbm/ui/e/f;
.super Ljava/lang/Object;
.source "ChannelInviteMessageHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/d/ec;
.field final synthetic b:Lcom/bbm/ui/e/d;
.method constructor <init>(Lcom/bbm/ui/e/d;Lcom/bbm/d/ec;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/e/f;->b:Lcom/bbm/ui/e/d;
iput-object p2, p0, Lcom/bbm/ui/e/f;->a:Lcom/bbm/d/ec;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Join Clicked"
const-class v1, Lcom/bbm/ui/e/d;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/e/f;->b:Lcom/bbm/ui/e/d;
invoke-static {v0}, Lcom/bbm/ui/e/d;->b(Lcom/bbm/ui/e/d;)Lcom/bbm/ui/e/bg;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/f;->b:Lcom/bbm/ui/e/d;
invoke-static {v1}, Lcom/bbm/ui/e/d;->a(Lcom/bbm/ui/e/d;)Lcom/bbm/d/fg;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/e/f;->a:Lcom/bbm/d/ec;
iget-wide v2, v2, Lcom/bbm/d/ec;->z:J
invoke-interface {v0, v1, v2, v3}, Lcom/bbm/ui/e/bg;->a(Lcom/bbm/d/fg;J)V
const-string v1, " - Lcom/bbm/ui/e/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method