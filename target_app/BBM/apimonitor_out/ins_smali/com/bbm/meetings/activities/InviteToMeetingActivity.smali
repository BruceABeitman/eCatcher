.class public Lcom/bbm/meetings/activities/InviteToMeetingActivity;
.super Landroid/app/Activity;
.source "InviteToMeetingActivity.java"
.field private a:Ljava/lang/String;
.field private b:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/bbm/meetings/activities/InviteToMeetingActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->a:Ljava/lang/String;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
const/16 v0, 0x1f4
if-ne p1, v0, :cond_1c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->b:Z
const/4 v0, -0x1
if-ne p2, v0, :cond_1c
if-eqz p3, :cond_1c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const-string v1, "com.bbm.selectedcontacts"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
if-nez v1, :cond_1d
:cond_1c
:goto_1c
return-void
:cond_1d
new-instance v2, Lcom/bbm/meetings/activities/a;
invoke-direct {v2, p0, v1, v0}, Lcom/bbm/meetings/activities/a;-><init>(Lcom/bbm/meetings/activities/InviteToMeetingActivity;Ljava/util/List;Ljava/util/ArrayList;)V
invoke-static {v2}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
goto :goto_1c
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/bbm/meetings/activities/InviteToMeetingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.meetings.inviteText"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->a:Ljava/lang/String;
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0}, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "com.bbm.meetings.excludedPins"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
if-eqz v1, :cond_27
const-string v2, "com.bbm.excludedpins"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
:cond_27
const/16 v1, 0x1f4
invoke-virtual {p0, v0, v1}, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/bbm/meetings/activities/InviteToMeetingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/meetings/activities/InviteToMeetingActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
iget-boolean v0, p0, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->b:Z
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->finish()V
:cond_a
const-string v1, " - Lcom/bbm/meetings/activities/InviteToMeetingActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method