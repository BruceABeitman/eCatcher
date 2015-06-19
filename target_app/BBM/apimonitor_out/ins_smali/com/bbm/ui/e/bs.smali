.class final Lcom/bbm/ui/e/bs;
.super Ljava/lang/Object;
.source "ReinviteHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/e/bp;
.method constructor <init>(Lcom/bbm/ui/e/bp;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/bs;->a:Lcom/bbm/ui/e/bp;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/bs; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Reject Clicked"
const-class v1, Lcom/bbm/ui/e/bp;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/e/bs;->a:Lcom/bbm/ui/e/bp;
iget-object v1, v0, Lcom/bbm/ui/e/bp;->a:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/ui/e/bp;->b:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/z;->c(Ljava/lang/String;)Lcom/bbm/d/bj;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const-string v1, " - Lcom/bbm/ui/e/bs; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method