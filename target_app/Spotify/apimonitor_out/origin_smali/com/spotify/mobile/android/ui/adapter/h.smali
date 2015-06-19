.class public final Lcom/spotify/mobile/android/ui/adapter/h;
.super Lcom/spotify/mobile/android/ui/adapter/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/devsmart/android/ui/HorizontalListView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/h;->a:Landroid/view/View;

    check-cast v0, Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/h;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
