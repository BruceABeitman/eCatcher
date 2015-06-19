.class public final Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/a",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/spotify/mobile/android/spotlets/search/a;

.field private final d:Lcom/spotify/mobile/android/spotlets/search/loader/d;

.field private final e:Lcom/spotify/mobile/android/spotlets/search/loader/f;

.field private final f:Lcom/spotify/mobile/android/spotlets/search/loader/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/a",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/loader/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/spotify/mobile/android/spotlets/search/loader/source/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/source/c",
            "<",
            "Lcom/spotify/cosmos/router/Request;",
            "Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;",
            "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/loader/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b:Landroid/util/SparseArray;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/common/b/a/c;->d:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->d:Lcom/spotify/mobile/android/spotlets/search/loader/d;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/f;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/f;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->e:Lcom/spotify/mobile/android/spotlets/search/loader/f;

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-static {v0, p1, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->a(Ljava/lang/Class;Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)Lcom/spotify/mobile/android/spotlets/search/loader/source/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->g:Lcom/spotify/mobile/android/spotlets/search/loader/source/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)V

    new-instance v2, Lcom/spotify/mobile/android/spotlets/search/loader/b;

    invoke-direct {v2, v1, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/b;-><init>(Landroid/os/Handler;Lcom/spotify/mobile/android/spotlets/search/loader/c;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->f:Lcom/spotify/mobile/android/spotlets/search/loader/a;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->c:Lcom/spotify/mobile/android/spotlets/search/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->c:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->g()Lcom/spotify/mobile/android/spotlets/common/b/a/c;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)V

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/b/a/c;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Lcom/spotify/mobile/android/spotlets/common/b/a/d;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/search/loader/e;Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->d:Lcom/spotify/mobile/android/spotlets/search/loader/d;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I

    move-result v1

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/spotify/mobile/android/spotlets/search/loader/d;->a(ILjava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/search/loader/e;Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/e;Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V

    return-void
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/search/loader/e;Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->d:Lcom/spotify/mobile/android/spotlets/search/loader/d;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I

    move-result v1

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/spotify/mobile/android/spotlets/search/loader/d;->a(ILjava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Lcom/spotify/mobile/android/spotlets/search/loader/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->f:Lcom/spotify/mobile/android/spotlets/search/loader/a;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;II)I
    .registers 11

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->i:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->e:Lcom/spotify/mobile/android/spotlets/search/loader/f;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-eq p1, v0, :cond_16

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->c:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->k_()Z

    move-result v4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->c:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->l_()Z

    move-result v5

    move-object v0, p2

    move-object v1, p1

    move v2, p4

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/loader/f;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;IIZZ)Lcom/spotify/mobile/android/spotlets/search/loader/e;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/f;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    if-ne v0, v1, :cond_37

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->NO_RESULTS:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/e;Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V

    :goto_32
    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_37
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->f:Lcom/spotify/mobile/android/spotlets/search/loader/a;

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/a;->a(Ljava/lang/Object;)Z

    goto :goto_32
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->i:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->f:Lcom/spotify/mobile/android/spotlets/search/loader/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/a;->c()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b()V

    return-void
.end method

.method final a(Lcom/spotify/mobile/android/spotlets/search/loader/e;)V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->i:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->i:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->g:Lcom/spotify/mobile/android/spotlets/search/loader/source/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Lcom/spotify/cosmos/router/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/c;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$3;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/search/loader/e;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)V

    goto :goto_4

    :cond_35
    const-string v0, "Session not ready. Waiting..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    goto :goto_4
.end method

.method public final b()V
    .registers 3

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->f:Lcom/spotify/mobile/android/spotlets/search/loader/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/a;->b()V

    return-void
.end method
