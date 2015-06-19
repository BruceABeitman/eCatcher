.class final Lnet/hockeyapp/android/FeedbackActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity$3;
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity$3;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$3$1;->a:Lnet/hockeyapp/android/FeedbackActivity$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$3$1;->a:Lnet/hockeyapp/android/FeedbackActivity$3;
iget-object v0, v0, Lnet/hockeyapp/android/FeedbackActivity$3;->a:Lnet/hockeyapp/android/FeedbackActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V
return-void
.end method