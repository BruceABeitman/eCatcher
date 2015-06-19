.class public final Lcom/instagram/user/userservice/b/g;
.super Landroid/content/BroadcastReceiver;
.source "SuggestionsUserServiceHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "InboxFragment.ADD_MEDIA_TO_INBOX"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instagram/user/userservice/b/h;

    invoke-direct {v1, p0}, Lcom/instagram/user/userservice/b/h;-><init>(Lcom/instagram/user/userservice/b/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method
