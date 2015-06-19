.class final Lcom/instagram/android/feed/comments/a/k;
.super Landroid/content/BroadcastReceiver;
.source "CommentThreadFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/k;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/k;->a:Lcom/instagram/android/feed/comments/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a_(I)V

    return-void
.end method
