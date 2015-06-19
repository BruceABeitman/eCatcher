.class final Lcom/instagram/android/fragment/fg;
.super Landroid/content/BroadcastReceiver;
.source "UserDetailFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fb;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/fb;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/fg;->a:Lcom/instagram/android/fragment/fb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/fb;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fg;-><init>(Lcom/instagram/android/fragment/fb;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/fragment/fg;->a:Lcom/instagram/android/fragment/fb;

    invoke-static {v0}, Lcom/instagram/android/fragment/fb;->a(Lcom/instagram/android/fragment/fb;)Z

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/instagram/android/fragment/fg;->a:Lcom/instagram/android/fragment/fb;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->ao()V

    goto :goto_11
.end method
