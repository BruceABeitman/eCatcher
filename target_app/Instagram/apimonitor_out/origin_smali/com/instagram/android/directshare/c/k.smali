.class final Lcom/instagram/android/directshare/c/k;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Lcom/instagram/common/c/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/c/k;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/c/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/k;-><init>(Lcom/instagram/android/directshare/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InboxFragment.UPDATE_INBOX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/instagram/android/directshare/c/k;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const-string v1, "InboxFragment.INBOX_SHARE_COUNT_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lcom/instagram/android/directshare/c/k;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/instagram/android/directshare/f/a;->a()Lcom/instagram/android/directshare/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/f/a;->b()V

    goto :goto_15

    :cond_2e
    const-string v1, "ActionBarService.action_bar_refresh_click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v0, p0, Lcom/instagram/android/directshare/c/k;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->j(Lcom/instagram/android/directshare/c/c;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/k;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->k(Lcom/instagram/android/directshare/c/c;)V

    goto :goto_15

    :cond_41
    const-string v1, "INTENT_ACTION_PENDING_REQUEST_ACCEPTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/android/directshare/c/k;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->l(Lcom/instagram/android/directshare/c/c;)Z

    goto :goto_15
.end method
