.class final Lcom/instagram/android/fragment/ey;
.super Landroid/content/BroadcastReceiver;
.source "SingleMediaFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ex;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ex;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ey;->a:Lcom/instagram/android/fragment/ex;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/ey;->a:Lcom/instagram/android/fragment/ex;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ex;->am()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/instagram/android/fragment/ey;->a:Lcom/instagram/android/fragment/ex;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ex;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    :cond_1d
    return-void
.end method
