.class final Lcom/instagram/android/directshare/d/o;
.super Landroid/content/BroadcastReceiver;
.source "DirectSharePermalinkFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/feed/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;Z)Z

    iget-object v0, p0, Lcom/instagram/android/directshare/d/o;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->d(Lcom/instagram/android/directshare/d/c;)V

    :cond_24
    return-void
.end method
