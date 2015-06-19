.class public final Lnet/hockeyapp/android/c/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Ljava/lang/String;
.field private c:Landroid/os/Handler;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p1, p0, Lnet/hockeyapp/android/c/c;->a:Landroid/content/Context;
iput-object p2, p0, Lnet/hockeyapp/android/c/c;->b:Ljava/lang/String;
iput-object p3, p0, Lnet/hockeyapp/android/c/c;->c:Landroid/os/Handler;
return-void
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lnet/hockeyapp/android/c/c;->a:Landroid/content/Context;
if-eqz v0, :cond_12
iget-object v0, p0, Lnet/hockeyapp/android/c/c;->b:Ljava/lang/String;
if-eqz v0, :cond_12
invoke-static {}, Lnet/hockeyapp/android/d/c;->a()Lnet/hockeyapp/android/d/c;
iget-object v0, p0, Lnet/hockeyapp/android/c/c;->b:Ljava/lang/String;
invoke-static {v0}, Lnet/hockeyapp/android/d/c;->a(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;
move-result-object v0
:goto_11
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 5
check-cast p1, Lnet/hockeyapp/android/objects/FeedbackResponse;
if-eqz p1, :cond_1f
iget-object v0, p0, Lnet/hockeyapp/android/c/c;->c:Landroid/os/Handler;
if-eqz v0, :cond_1f
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "parse_feedback_response"
invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v1, p0, Lnet/hockeyapp/android/c/c;->c:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_1f
return-void
.end method