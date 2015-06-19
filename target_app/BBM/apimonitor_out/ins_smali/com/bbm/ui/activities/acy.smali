.class final Lcom/bbm/ui/activities/acy;
.super Ljava/lang/Object;
.source "ReceivedPendingInviteActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/i;
.field final synthetic b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;Lcom/bbm/ui/b/i;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/acy;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/acy;->a:Lcom/bbm/ui/b/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/acy; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "handleInviteIgnore Dialog RightButton Clicked"
const-class v1, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/acy;->a:Lcom/bbm/ui/b/i;
iget-object v0, v0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/acy;->a:Lcom/bbm/ui/b/i;
iget-object v1, v1, Lcom/bbm/ui/b/i;->f:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
iget-object v2, p0, Lcom/bbm/ui/activities/acy;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->d(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/a;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/acy;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;ZZ)Lcom/bbm/d/bi;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/ui/activities/acy;->a:Lcom/bbm/ui/b/i;
invoke-virtual {v0}, Lcom/bbm/ui/b/i;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/activities/acy;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/acy; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method