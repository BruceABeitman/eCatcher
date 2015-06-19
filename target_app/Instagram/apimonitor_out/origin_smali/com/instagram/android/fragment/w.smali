.class final Lcom/instagram/android/fragment/w;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/o;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/o;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/o;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/w;-><init>(Lcom/instagram/android/fragment/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/c/e;

    iget-object v2, p0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/o;->y()Landroid/support/v4/app/an;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/fragment/x;

    iget-object v5, p0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v5}, Lcom/instagram/android/fragment/o;->n()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v6}, Lcom/instagram/android/fragment/o;->e(Lcom/instagram/android/fragment/o;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v7}, Lcom/instagram/android/fragment/o;->p()Landroid/support/v4/app/s;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/instagram/android/fragment/x;-><init>(Lcom/instagram/android/fragment/w;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/login/c/e;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/login/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .registers 2

    return-void
.end method
