.class public abstract Lcom/instagram/base/a/d;
.super Lcom/instagram/base/a/a;
.source "IgTrackedDialogFragment.java"

# interfaces
.implements Lcom/instagram/common/analytics/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public E()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/a;->E()V

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/base/a/d;->p()Landroid/support/v4/app/s;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/base/a/d;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->g()I

    move-result v1

    const-string v2, "dialog_dismiss"

    invoke-virtual {v0, p0, v1, v2}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/base/a/d;->p()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/common/analytics/e;

    if-eqz v1, :cond_2e

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v1

    check-cast v0, Lcom/instagram/common/analytics/e;

    invoke-virtual {v1, v0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;)V

    :cond_2e
    invoke-super {p0, p1}, Lcom/instagram/base/a/a;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
