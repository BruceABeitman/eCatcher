.class final Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/task/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/b",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/search/loader/e;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/search/loader/e;Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Lcom/spotify/mobile/android/spotlets/search/loader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/a;->a()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Lcom/spotify/mobile/android/spotlets/search/loader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/a;->b()V

    :cond_26
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->c(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    const-string v0, "%s failed in %d ms."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/search/loader/e;Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Lcom/spotify/mobile/android/spotlets/search/loader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/a;->a()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Lcom/spotify/mobile/android/spotlets/search/loader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/a;->b()V

    :cond_26
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->c(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    const-string v0, "%s completed in %d ms."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
