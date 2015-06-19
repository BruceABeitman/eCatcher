.class  Lcom/twidroid/activity/EmailPreferenceActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/EmailPreferenceActivity;
.method constructor <init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/EmailPreferenceActivity$6;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$6;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
invoke-static {v0}, Lcom/twidroid/activity/EmailPreferenceActivity;->d(Lcom/twidroid/activity/EmailPreferenceActivity;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$6;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
iget-object v0, v0, Lcom/twidroid/activity/EmailPreferenceActivity;->c:Landroid/app/ProgressDialog;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$6;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
iget-object v0, v0, Lcom/twidroid/activity/EmailPreferenceActivity;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_16
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/activity/EmailPreferenceActivity$6;->a:Lcom/twidroid/activity/EmailPreferenceActivity;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v1, "SMTP settings OK"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "SMTP Settings"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "Ok"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_8
.end method