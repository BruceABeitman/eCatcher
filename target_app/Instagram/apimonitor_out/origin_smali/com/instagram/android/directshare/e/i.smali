.class final Lcom/instagram/android/directshare/e/i;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/e/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/android/directshare/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    iget-object v0, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/android/directshare/e/b;

    invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->e(Lcom/instagram/android/directshare/e/b;)Lcom/instagram/android/directshare/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/e/a;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->c(I)V

    new-instance v0, Lcom/instagram/f/a/a/i;

    iget-object v1, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/e/b;->y()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/directshare/e/j;

    iget-object v4, p0, Lcom/instagram/android/directshare/e/i;->a:Lcom/instagram/android/directshare/e/b;

    const/4 v5, 0x0

    sget-object v6, Lcom/instagram/android/directshare/e/k;->c:Lcom/instagram/android/directshare/e/k;

    invoke-direct {v3, v4, v5, v6}, Lcom/instagram/android/directshare/e/j;-><init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;Lcom/instagram/android/directshare/e/k;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/i;->h()V

    return-void
.end method
