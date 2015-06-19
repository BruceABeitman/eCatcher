.class public Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:I
.field private p:I
.field private q:I
.field private r:Z
.field private s:Z
.field private t:Z
.field private u:Lcom/spotify/android/paste/widget/DialogLayout;
.field private v:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->v:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;)V
.registers 6
const/4 v4, 0x0
const/4 v3, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->n:I
if-nez v1, :cond_25
const-string v1, "Marking trial start notice as shown"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v1, "should_show_trial_start_notice"
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
:goto_1b
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:goto_24
return-void
:cond_25
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->n:I
const/4 v2, 0x1
if-ne v1, v2, :cond_3b
const-string v1, "Marking trial end notice as shown"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v1, "should_show_trial_end_notice"
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
goto :goto_1b
:cond_3b
const-string v0, "Should not be able to end up with a dialog that does not match TRIAL_STARTED or TRIAL_ENDED"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
goto :goto_24
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->v:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 11
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, -0x1
const/4 v8, 0x1
const/4 v7, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0, v7}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->setResult(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "trial_remaining"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->p:I
const-string v1, "trial_length"
invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->q:I
const-string v1, "wifi_streaming"
invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->r:Z
const-string v1, "shuffle_streaming"
invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->s:Z
const-string v1, "streaming"
invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->t:Z
if-eqz p1, :cond_5f
const-string v0, "trial_remaining"
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->p:I
const-string v0, "trial_length"
invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->q:I
const-string v0, "wifi_streaming"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->r:Z
const-string v0, "shuffle_streaming"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->s:Z
const-string v0, "streaming"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->t:Z
:cond_5f
new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->setContentView(Landroid/view/View;)V
const v1, 0x7f0f03f1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
const v2, 0x7f0f004a
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->q:I
if-lez v0, :cond_e5
iput v7, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->n:I
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->q:I
div-int/lit16 v0, v0, 0xe10
div-int/lit8 v2, v0, 0x18
int-to-long v3, v2
const-wide/16 v5, 0x1e
cmp-long v3, v3, v5
if-lez v3, :cond_b9
div-int/lit8 v0, v2, 0x1e
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0020
new-array v4, v8, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v7
invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_9e
if-eqz v0, :cond_a5
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;)V
:cond_a5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
new-instance v2, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->v:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
:goto_b8
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_b9
const/16 v3, 0x30
if-le v0, v3, :cond_d1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0e001e
new-array v4, v8, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v7
invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_9e
:cond_d1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e001f
new-array v4, v8, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v7
invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_9e
:cond_e5
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->p:I
if-nez v0, :cond_170
iput v8, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->n:I
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z
move-result v0
if-eqz v0, :cond_106
const v0, 0x7f0f044a
new-instance v3, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$2;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;)V
invoke-virtual {v2, v0, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V
:cond_106
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->r:Z
if-eqz v0, :cond_132
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ad:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->v:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/spotify/mobile/android/util/bv;->e:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "\n\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/bv;->f:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
sget-object v3, Lcom/spotify/mobile/android/util/bv;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V
goto/16 :goto_9e
:cond_132
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->s:Z
if-eqz v0, :cond_15a
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ae:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->v:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const v0, 0x7f0f03ec
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
const v2, 0x7f0f03ee
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V
const v1, 0x7f0f03ed
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->u:Lcom/spotify/android/paste/widget/DialogLayout;
const v3, 0x7f0201b2
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->b(I)V
goto/16 :goto_9e
:cond_15a
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->t:Z
if-eqz v0, :cond_167
const v0, 0x7f0f03eb
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_9e
:cond_167
const v0, 0x7f0f03ea
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_9e
:cond_170
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Should not end up here, timeToTrialEnd=="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->p:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " , totalTimeOfTrial=="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->q:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->finish()V
goto/16 :goto_b8
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "trial_remaining"
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->p:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "trial_length"
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->q:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "wifi_streaming"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->r:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "shuffle_streaming"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->s:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "streaming"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->t:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method