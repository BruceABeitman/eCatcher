.class public final Lcom/spotify/mobile/android/spotlets/browse/a/b;
.super Lcom/spotify/mobile/android/spotlets/browse/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/browse/a/d",
        "<",
        "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/spotify/mobile/android/a/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/browse/a/d;-><init>(ILcom/spotify/mobile/android/a/b;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->b(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-eqz p2, :cond_6

    instance-of v0, p2, Lcom/spotify/mobile/android/spotlets/browse/view/c;

    if-nez v0, :cond_21

    :cond_6
    new-instance p2, Lcom/spotify/mobile/android/spotlets/browse/view/c;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->b:I

    invoke-direct {p2, v0, p3, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    :goto_11
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->getCount()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->a(Ljava/util/List;)V

    :cond_20
    return-object p2

    :cond_21
    check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/view/c;

    goto :goto_11
.end method
