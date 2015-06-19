.class final Lcom/instagram/ui/dialog/h;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.java"
.implements Landroid/content/DialogInterface$OnKeyListener;
.field final synthetic a:Lcom/instagram/ui/dialog/g;
.method constructor <init>(Lcom/instagram/ui/dialog/g;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/dialog/h;->a:Lcom/instagram/ui/dialog/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/ui/dialog/h; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x4
if-ne p2, v0, :cond_5
const/4 v0, 0x1
:goto_4
move v2, v0
const-string v1, " - Lcom/instagram/ui/dialog/h; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method