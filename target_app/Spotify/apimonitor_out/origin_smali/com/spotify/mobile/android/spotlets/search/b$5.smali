.class final Lcom/spotify/mobile/android/spotlets/search/b$5;
.super Lcom/spotify/mobile/android/spotlets/common/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ae:I

    if-le p1, v0, :cond_a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iput p1, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ae:I

    :cond_a
    return-void
.end method

.method protected final a(II)V
    .registers 9

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->e()Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iput-boolean v5, v1, Lcom/spotify/mobile/android/spotlets/search/b;->aa:Z

    const-string v1, "OnScrollListenerAdapter: last item: %d of %d (threshold at: %d). Showing %d of %d results"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    add-int/lit8 v4, p2, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->loadMoreURI:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v5}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;Z)V

    return-void
.end method

.method protected final a()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->l()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->e()Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v0

    iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->isIncomplete:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->O()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$5;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->P()V

    :cond_1c
    return-void
.end method
