.class final Lcom/bbm/ui/activities/xk;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Landroid/content/DialogInterface$OnKeyListener;
.field final synthetic a:J
.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;J)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/xk;->b:Lcom/bbm/ui/activities/MainActivity;
iput-wide p2, p0, Lcom/bbm/ui/activities/xk;->a:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/xk; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
const/4 v1, 0x4
if-ne p2, v1, :cond_18
iget-object v1, p0, Lcom/bbm/ui/activities/xk;->b:Lcom/bbm/ui/activities/MainActivity;
iget-wide v1, p0, Lcom/bbm/ui/activities/xk;->a:J
invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/MainActivity;->a(ZJ)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v1
sget-object v2, Lcom/bbm/c/p;->b:Lcom/bbm/c/p;
invoke-virtual {v1, v2}, Lcom/bbm/c/c;->a(Lcom/bbm/c/p;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
:goto_17
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/xk; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method