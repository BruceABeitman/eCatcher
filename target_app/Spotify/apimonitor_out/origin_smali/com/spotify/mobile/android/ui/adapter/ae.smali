.class public abstract Lcom/spotify/mobile/android/ui/adapter/ae;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->c:Z

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/android/paste/widget/ListItemView;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->c:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->c:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/ae;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public final a([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/ae;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->b:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_b
    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->c:Z

    if-eqz v1, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/ae;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p2, :cond_12

    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    :goto_a
    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/spotify/mobile/android/ui/adapter/ae;->a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/Object;)V

    :goto_11
    return-object p2

    :cond_12
    new-instance p2, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object p2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ae;->a:Landroid/content/Context;

    const v1, 0x7f0f0310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
