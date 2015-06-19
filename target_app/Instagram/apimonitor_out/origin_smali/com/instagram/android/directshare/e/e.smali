.class final Lcom/instagram/android/directshare/e/e;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/e/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/e/e;->a:Lcom/instagram/android/directshare/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/directshare/e/e;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/e/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    return-void
.end method
