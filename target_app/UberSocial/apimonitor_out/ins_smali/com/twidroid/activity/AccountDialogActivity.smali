.class public Lcom/twidroid/activity/AccountDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "action_for_dialog"
.field private static final b:Ljava/lang/String; = "AccountDialogActivity"
.field private c:Lcom/twidroid/activity/a;
.field private d:Lcom/twidroid/model/twitter/Tweet;
.field private e:Lcom/twidroid/net/c/a/f;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
sget-object v0, Lcom/twidroid/activity/a;->d:Lcom/twidroid/activity/a;
iput-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->c:Lcom/twidroid/activity/a;
new-instance v0, Lcom/twidroid/activity/AccountDialogActivity$1;
invoke-direct {v0, p0}, Lcom/twidroid/activity/AccountDialogActivity$1;-><init>(Lcom/twidroid/activity/AccountDialogActivity;)V
iput-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->e:Lcom/twidroid/net/c/a/f;
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/activity/a;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->c:Lcom/twidroid/activity/a;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/model/twitter/Tweet;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->d:Lcom/twidroid/model/twitter/Tweet;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/AccountDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/activity/AccountDialogActivity;->requestWindowFeature(I)Z
invoke-virtual {p0}, Lcom/twidroid/activity/AccountDialogActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
if-eqz v1, :cond_4b
const-string v0, "action_for_dialog"
invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_29
invoke-static {}, Lcom/twidroid/activity/a;->values()[Lcom/twidroid/activity/a;
move-result-object v0
const-string v2, "action_for_dialog"
sget-object v3, Lcom/twidroid/activity/a;->d:Lcom/twidroid/activity/a;
invoke-virtual {v3}, Lcom/twidroid/activity/a;->ordinal()I
move-result v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
aget-object v0, v0, v2
iput-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->c:Lcom/twidroid/activity/a;
:cond_29
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v2, "EXTRA_TWEET"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iput-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->d:Lcom/twidroid/model/twitter/Tweet;
const-string v0, "notification_id"
invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4b
sget-object v0, Lcom/twidroid/d/q;->c:Lcom/twidroid/d/q;
const-string v2, "notification_id"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-static {v0, v1, p0}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;ILandroid/content/Context;)V
:cond_4b
iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->c:Lcom/twidroid/activity/a;
sget-object v1, Lcom/twidroid/activity/a;->d:Lcom/twidroid/activity/a;
if-ne v0, v1, :cond_5c
const-string v0, "AccountDialogActivity"
const-string v1, "MODE not passed!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V
:goto_5b
const-string v1, " - Lcom/twidroid/activity/AccountDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5c
iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity;->d:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_6b
const-string v0, "AccountDialogActivity"
const-string v1, "TWEET not passed!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V
goto :goto_5b
:cond_6b
new-instance v0, Lcom/twidroid/activity/AccountDialogActivity$2;
invoke-direct {v0, p0, p0}, Lcom/twidroid/activity/AccountDialogActivity$2;-><init>(Lcom/twidroid/activity/AccountDialogActivity;Landroid/app/Activity;)V
new-instance v1, Lcom/twidroid/activity/AccountDialogActivity$3;
invoke-direct {v1, p0}, Lcom/twidroid/activity/AccountDialogActivity$3;-><init>(Lcom/twidroid/activity/AccountDialogActivity;)V
invoke-virtual {v0, v1}, Lcom/twidroid/c/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0}, Lcom/twidroid/c/c;->show()V
goto :goto_5b
.end method