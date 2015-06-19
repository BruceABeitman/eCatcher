.class public final Lcom/google/android/gms/common/api/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Lcom/google/android/gms/common/api/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Looper;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/k;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->j:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->h:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/i;
    .registers 12

    new-instance v8, Lcom/google/android/gms/common/api/x;

    iget-object v9, p0, Lcom/google/android/gms/common/api/j;->f:Landroid/content/Context;

    iget-object v10, p0, Lcom/google/android/gms/common/api/j;->h:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/internal/fc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/api/j;->b:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/gms/common/api/j;->c:I

    iget-object v4, p0, Lcom/google/android/gms/common/api/j;->d:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/gms/common/api/j;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/common/api/j;->g:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/j;->i:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/gms/common/api/j;->j:Ljava/util/Set;

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/common/api/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-object v8
.end method

.method public final a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/j;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/c;",
            ">(",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/common/api/j;"
        }
    .end annotation

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->b()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_29

    iget-object v4, p0, Lcom/google/android/gms/common/api/j;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_29
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/common/api/j;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/j;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/j;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
