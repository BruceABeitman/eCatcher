.class public abstract Lcom/instagram/android/feed/a/m;
.super Lcom/instagram/android/feed/a/a;
.source "SimpleHeaderFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/android/feed/a/a;"
    }
.end annotation


# instance fields
.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a;-><init>(Lcom/instagram/android/fragment/a;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-lt p2, v0, :cond_b

    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/a/m;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/m;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/m;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-lt p3, v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;Landroid/view/View;I)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/m;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/instagram/android/feed/a/m;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_19

    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/feed/a/m;->b(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_9

    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->notifyDataSetChanged()V

    return-void
.end method

.method protected abstract b(Landroid/content/Context;Landroid/view/View;I)V
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-le v0, p1, :cond_9

    iget-object v0, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public getItemViewType(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/m;->k()I

    move-result v0

    if-lt p1, v0, :cond_b

    invoke-super {p0, p1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/feed/a/m;->f(I)I

    move-result v0

    goto :goto_a
.end method

.method public getViewTypeCount()I
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/feed/a/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/m;->e:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method
