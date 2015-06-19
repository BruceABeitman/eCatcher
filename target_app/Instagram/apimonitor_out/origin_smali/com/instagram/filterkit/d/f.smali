.class Lcom/instagram/filterkit/d/f;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/instagram/filterkit/d/b;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/filterkit/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/instagram/filterkit/d/e;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/filterkit/d/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/filterkit/e/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/filterkit/d/f;

    sput-object v0, Lcom/instagram/filterkit/d/f;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/filterkit/d/b;

    invoke-direct {v0}, Lcom/instagram/filterkit/d/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/filterkit/d/f;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/instagram/filterkit/d/g;)V
    .registers 4

    iget v0, p1, Lcom/instagram/filterkit/d/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/instagram/filterkit/d/g;->c:I

    iget v0, p1, Lcom/instagram/filterkit/d/g;->c:I

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->e()V

    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/instagram/filterkit/d/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method


# virtual methods
.method final a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;
    .registers 7

    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_13
    monitor-enter p0

    :try_start_14
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Lcom/instagram/filterkit/d/g;

    iget-object v2, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    iget-object v3, p0, Lcom/instagram/filterkit/d/f;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Lcom/instagram/filterkit/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p2, v2, v3}, Lcom/instagram/filterkit/d/g;-><init>(Ljava/lang/String;Lcom/instagram/filterkit/e/a;B)V

    iget-object v2, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    const-string v2, "TextureManager.loadTexture"

    invoke-static {v2}, Lcom/instagram/filterkit/d/b;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget v1, v0, Lcom/instagram/filterkit/d/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/instagram/filterkit/d/g;->c:I

    :cond_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_59

    iget-object v0, v0, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    return-object v0

    :cond_46
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    goto :goto_13

    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/d/g;
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_59

    goto :goto_36

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Lcom/instagram/filterkit/e/b;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/instagram/filterkit/d/f;->a:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    new-instance v0, Lcom/instagram/filterkit/d/a;

    iget-object v1, p0, Lcom/instagram/filterkit/d/f;->c:Lcom/instagram/filterkit/d/b;

    invoke-direct {v0, v1, p1}, Lcom/instagram/filterkit/d/a;-><init>(Lcom/instagram/filterkit/d/b;I)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3f

    :goto_2d
    monitor-exit p0

    return-object v0

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/e/b;
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_3f

    goto :goto_2d

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(II)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_1e

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->e()V

    move p2, v2

    goto :goto_8

    :cond_1e
    return-void
.end method

.method final a(Lcom/instagram/filterkit/d/e;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    monitor-enter p0

    :try_start_a
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/d/g;

    invoke-direct {p0, v0}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/g;)V
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_26

    goto :goto_16

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_26

    goto :goto_8
.end method

.method public final declared-synchronized a(Lcom/instagram/filterkit/e/b;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/d/f;->f:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
