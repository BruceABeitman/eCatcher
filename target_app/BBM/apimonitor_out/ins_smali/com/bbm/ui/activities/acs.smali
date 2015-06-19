.class final Lcom/bbm/ui/activities/acs;
.super Ljava/lang/Object;
.source "ReceivedPendingGroupInviteActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/i;
.field final synthetic b:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;Lcom/bbm/ui/b/i;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/acs;->b:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/acs;->a:Lcom/bbm/ui/b/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/acs; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "handleInviteIgnore Dialog RightButton Clicked"
const-class v1, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/acs;->a:Lcom/bbm/ui/b/i;
iget-object v0, v0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_31
sget-object v0, Lcom/bbm/g/bn;->c:Lcom/bbm/g/bn;
:goto_13
iget-object v1, p0, Lcom/bbm/ui/activities/acs;->b:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-static {}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v2, v0}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/bn;)Lcom/bbm/g/bm;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/activities/acs;->a:Lcom/bbm/ui/b/i;
invoke-virtual {v0}, Lcom/bbm/ui/b/i;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/activities/acs;->b:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/acs; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_31
sget-object v0, Lcom/bbm/g/bn;->b:Lcom/bbm/g/bn;
goto :goto_13
.end method