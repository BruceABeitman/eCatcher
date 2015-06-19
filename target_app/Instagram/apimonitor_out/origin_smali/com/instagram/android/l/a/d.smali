.class final Lcom/instagram/android/l/a/d;
.super Landroid/content/BroadcastReceiver;
.source "UserListAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/l/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/a/d;->a:Lcom/instagram/android/l/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/android/l/a/d;->a:Lcom/instagram/android/l/a/a;

    invoke-static {v0}, Lcom/instagram/android/l/a/a;->d(Lcom/instagram/android/l/a/a;)Lcom/instagram/android/l/a/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/l/a/e;->removeMessages(I)V

    iget-object v0, p0, Lcom/instagram/android/l/a/d;->a:Lcom/instagram/android/l/a/a;

    invoke-static {v0}, Lcom/instagram/android/l/a/a;->d(Lcom/instagram/android/l/a/a;)Lcom/instagram/android/l/a/e;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/android/l/a/e;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
