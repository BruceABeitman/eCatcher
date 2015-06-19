.class final Lnet/hockeyapp/android/FeedbackActivity$2;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity;
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;
new-instance v3, Lnet/hockeyapp/android/objects/ErrorObject;
invoke-direct {v3}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V
invoke-static {v2, v3}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
if-eqz p1, :cond_7a
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
if-eqz v2, :cond_7a
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string v3, "feedback_response"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "feedback_status"
invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v5, "request_type"
invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v5, "send"
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_54
if-eqz v3, :cond_3c
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v5
const/16 v6, 0xc9
if-eq v5, v6, :cond_54
:cond_3c
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/objects/ErrorObject;
move-result-object v1
const-string v2, "Message couldn\'t be posted. Please check your input values and try again."
invoke-virtual {v1, v2}, Lnet/hockeyapp/android/objects/ErrorObject;->a(Ljava/lang/String;)V
:goto_47
if-nez v0, :cond_53
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;
new-instance v1, Lnet/hockeyapp/android/FeedbackActivity$2$1;
invoke-direct {v1, p0}, Lnet/hockeyapp/android/FeedbackActivity$2$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity$2;)V
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_53
return-void
:cond_54
const-string v0, "fetch"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_73
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
const/16 v2, 0x194
if-eq v0, v2, :cond_6c
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
const/16 v2, 0x1a6
if-ne v0, v2, :cond_73
:cond_6c
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->b(Lnet/hockeyapp/android/FeedbackActivity;)V
move v0, v1
goto :goto_47
:cond_73
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-static {v0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;)V
move v0, v1
goto :goto_47
:cond_7a
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/objects/ErrorObject;
move-result-object v1
const-string v2, "Message couldn\'t be posted. Please check your input values and try again."
invoke-virtual {v1, v2}, Lnet/hockeyapp/android/objects/ErrorObject;->a(Ljava/lang/String;)V
goto :goto_47
.end method