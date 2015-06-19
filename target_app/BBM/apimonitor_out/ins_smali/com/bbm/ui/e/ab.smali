.class final Lcom/bbm/ui/e/ab;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/e/s;
.method constructor <init>(Lcom/bbm/ui/e/s;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/ab;->a:Lcom/bbm/ui/e/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/ab; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/ab;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->b(Lcom/bbm/ui/e/s;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/ab;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fg;->m:Ljava/lang/String;
new-instance v2, Lcom/bbm/d/cl;
invoke-direct {v2, v1}, Lcom/bbm/d/cl;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const-string v1, " - Lcom/bbm/ui/e/ab; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method