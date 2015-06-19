.class final Lcom/instagram/android/fragment/cd;
.super Landroid/content/BroadcastReceiver;
.source "FollowDestinationFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cc;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/cd;->a:Lcom/instagram/android/fragment/cc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "ActionBarService.action_bar_clicked"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/fragment/cd;->a:Lcom/instagram/android/fragment/cc;

    invoke-static {v0}, Lcom/instagram/android/fragment/cc;->a(Lcom/instagram/android/fragment/cc;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v0, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/fragment/cd;->a:Lcom/instagram/android/fragment/cc;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cc;->d()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/m;->notifyDataSetChanged()V

    goto :goto_11
.end method
