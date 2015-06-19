.class final Lcom/instagram/android/fragment/en;
.super Landroid/content/BroadcastReceiver;
.source "SearchUsersFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/em;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/em;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/en;->a:Lcom/instagram/android/fragment/em;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED_USER_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/instagram/android/fragment/en;->a:Lcom/instagram/android/fragment/em;

    invoke-static {v1}, Lcom/instagram/android/fragment/em;->a(Lcom/instagram/android/fragment/em;)Lcom/instagram/android/c/a/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/c/a/y;->e()Lcom/instagram/android/util/g;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/en;->a:Lcom/instagram/android/fragment/em;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/util/g;->a(Lcom/instagram/user/c/a;Lcom/instagram/common/analytics/e;)V

    :cond_21
    return-void
.end method
