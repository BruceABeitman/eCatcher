.class public final Lcom/bbm/util/eq;
.super Lcom/bbm/d/a/a/a;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget v0, p0, Lcom/bbm/util/eq;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget v0, p0, Lcom/bbm/util/eq;->b:I

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/bbm/util/eq;->a:I

    iget v0, p0, Lcom/bbm/util/eq;->a:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bbm/util/eq;->b:I

    invoke-virtual {p0}, Lcom/bbm/util/eq;->c()V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
