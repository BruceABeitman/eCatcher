.class final Lcom/bbm/ui/voice/l;
.super Ljava/lang/Object;
.source "OutgoingCallActionBar.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
.method constructor <init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/voice/l;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/voice/l; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/voice/l;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->e(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z
move-result v0
if-nez v0, :cond_13
const/4 v0, 0x1
:goto_d
iget-object v1, p0, Lcom/bbm/ui/voice/l;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v1, v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c(Lcom/bbm/ui/voice/OutgoingCallActionBar;Z)V
const-string v1, " - Lcom/bbm/ui/voice/l; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_d
.end method