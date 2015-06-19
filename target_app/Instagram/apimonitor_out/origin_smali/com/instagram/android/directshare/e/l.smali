.class final Lcom/instagram/android/directshare/e/l;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Lcom/instagram/common/c/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/e/b;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/e/l;->a:Lcom/instagram/android/directshare/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/e/b;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/e/l;-><init>(Lcom/instagram/android/directshare/e/b;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTENT_ACTION_PENDING_REQUESTS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/directshare/e/l;->a:Lcom/instagram/android/directshare/e/b;

    invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->a(Lcom/instagram/android/directshare/e/b;)V

    :cond_11
    return-void
.end method
