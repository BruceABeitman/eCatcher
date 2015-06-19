.class public abstract Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ZmanimListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/gindin/zmanim/times/Zman;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;)V
    .registers 4

    const v0, 0x7f030004

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createRowWrapper(Landroid/view/View;)Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    if-nez p2, :cond_25

    iget-object v4, p0, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;->createRowWrapper(Landroid/view/View;)Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1b
    invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/zmanList/ZmanimListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gindin/zmanim/times/Zman;

    invoke-virtual {v2, v3}, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;->setZman(Lcom/gindin/zmanim/times/Zman;)V

    return-object v0

    :cond_25
    move-object v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gindin/zmanim/android/zmanList/ZmanRowWrapper;

    goto :goto_1b
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
