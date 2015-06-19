.class final Lcom/instagram/android/fragment/ch;
.super Landroid/content/BroadcastReceiver;
.source "HashtagFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cg;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cg;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ch;->a:Lcom/instagram/android/fragment/cg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/ch;->a:Lcom/instagram/android/fragment/cg;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cg;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/j;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/j;->notifyDataSetChanged()V

    return-void
.end method
