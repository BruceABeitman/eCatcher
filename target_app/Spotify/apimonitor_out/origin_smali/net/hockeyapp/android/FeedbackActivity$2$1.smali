.class final Lnet/hockeyapp/android/FeedbackActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/FeedbackActivity$2;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity$2;)V
    .registers 2

    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$2$1;->a:Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2$1;->a:Lnet/hockeyapp/android/FeedbackActivity$2;

    iget-object v0, v0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$2$1;->a:Lnet/hockeyapp/android/FeedbackActivity$2;

    iget-object v0, v0, Lnet/hockeyapp/android/FeedbackActivity$2;->a:Lnet/hockeyapp/android/FeedbackActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V

    return-void
.end method
