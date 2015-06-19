.class final Lnet/hockeyapp/android/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity;
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->a:Lnet/hockeyapp/android/FeedbackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v0
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->a:Lnet/hockeyapp/android/FeedbackActivity;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$1;->a:Lnet/hockeyapp/android/FeedbackActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V
return-void
.end method