.class public abstract Lcom/instagram/base/a/c;
.super Landroid/support/v4/app/ak;
.source "IgListFragment.java"

# interfaces
.implements Lcom/instagram/common/analytics/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public E()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/ak;->E()V

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;)V

    return-void
.end method
