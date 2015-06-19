.class final Lnet/hockeyapp/android/FeedbackActivity$3;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity;
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
new-instance v3, Lnet/hockeyapp/android/objects/ErrorObject;
invoke-direct {v3}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V
invoke-static {v0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
if-eqz p1, :cond_66
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_66
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v3, "parse_feedback_response"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lnet/hockeyapp/android/objects/FeedbackResponse;
if-eqz v0, :cond_66
invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackResponse;->a()Ljava/lang/String;
move-result-object v3
const-string v4, "success"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_62
invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackResponse;->c()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_64
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v2
iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-static {v3}, Lnet/hockeyapp/android/FeedbackActivity;->c(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
move-result-object v3
invoke-virtual {v0}, Lnet/hockeyapp/android/objects/FeedbackResponse;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-static {v2, v0}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->d(Lnet/hockeyapp/android/FeedbackActivity;)Z
move v0, v1
:goto_50
if-nez v0, :cond_5c
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$3$1;
invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$3$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$3;)V
invoke-virtual {v0, v2}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_5c
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V
return-void
:cond_62
move v0, v2
goto :goto_50
:cond_64
move v0, v1
goto :goto_50
:cond_66
move v0, v2
goto :goto_50
.end method