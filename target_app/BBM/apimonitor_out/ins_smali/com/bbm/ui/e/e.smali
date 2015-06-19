.class final Lcom/bbm/ui/e/e;
.super Ljava/lang/Object;
.source "ChannelInviteMessageHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/e/d;
.method constructor <init>(Lcom/bbm/ui/e/d;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/e;->a:Lcom/bbm/ui/e/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Preview Clicked"
const-class v1, Lcom/bbm/ui/e/d;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/e/e;->a:Lcom/bbm/ui/e/d;
invoke-static {v0}, Lcom/bbm/ui/e/d;->b(Lcom/bbm/ui/e/d;)Lcom/bbm/ui/e/bg;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/e;->a:Lcom/bbm/ui/e/d;
invoke-static {v1}, Lcom/bbm/ui/e/d;->a(Lcom/bbm/ui/e/d;)Lcom/bbm/d/fg;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/ui/e/bg;->a(Lcom/bbm/d/fg;)V
const-string v1, " - Lcom/bbm/ui/e/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method