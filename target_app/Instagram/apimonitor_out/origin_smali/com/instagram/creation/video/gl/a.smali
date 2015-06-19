.class abstract Lcom/instagram/creation/video/gl/a;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/instagram/creation/video/gl/ab;


# static fields
.field private static i:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/instagram/creation/video/gl/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/ThreadLocal;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Lcom/instagram/creation/video/gl/c;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/gl/a;->i:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/instagram/creation/video/gl/a;->j:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/instagram/creation/video/gl/a;->c:I

    iput v1, p0, Lcom/instagram/creation/video/gl/a;->d:I

    iput-object v0, p0, Lcom/instagram/creation/video/gl/a;->g:Lcom/instagram/creation/video/gl/c;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/a;->a(Lcom/instagram/creation/video/gl/c;)V

    iput v2, p0, Lcom/instagram/creation/video/gl/a;->a:I

    iput v2, p0, Lcom/instagram/creation/video/gl/a;->b:I

    sget-object v1, Lcom/instagram/creation/video/gl/a;->i:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_16
    sget-object v0, Lcom/instagram/creation/video/gl/a;->i:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/a;-><init>()V

    return-void
.end method

.method public static k()V
    .registers 3

    sget-object v1, Lcom/instagram/creation/video/gl/a;->i:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/creation/video/gl/a;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/a;->j()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    return-void
.end method

.method public static l()V
    .registers 4

    sget-object v1, Lcom/instagram/creation/video/gl/a;->i:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/creation/video/gl/a;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/a;

    const/4 v3, 0x0

    iput v3, v0, Lcom/instagram/creation/video/gl/a;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/gl/a;->a(Lcom/instagram/creation/video/gl/c;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_21

    goto :goto_d

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/a;->g:Lcom/instagram/creation/video/gl/c;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/a;->h()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0, p0}, Lcom/instagram/creation/video/gl/c;->a(Lcom/instagram/creation/video/gl/a;)Z

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/creation/video/gl/a;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/a;->a(Lcom/instagram/creation/video/gl/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/a;->a:I

    return v0
.end method

.method protected final a(II)V
    .registers 6

    const/16 v1, 0x1000

    iput p1, p0, Lcom/instagram/creation/video/gl/a;->c:I

    iput p2, p0, Lcom/instagram/creation/video/gl/a;->d:I

    invoke-static {p1}, Lcom/instagram/creation/video/l/m;->b(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/gl/a;->e:I

    invoke-static {p2}, Lcom/instagram/creation/video/l/m;->b(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/gl/a;->f:I

    iget v0, p0, Lcom/instagram/creation/video/gl/a;->e:I

    if-gt v0, v1, :cond_1a

    iget v0, p0, Lcom/instagram/creation/video/gl/a;->f:I

    if-le v0, v1, :cond_34

    :cond_1a
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/instagram/creation/video/gl/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/instagram/creation/video/gl/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_34
    return-void
.end method

.method protected final a(Lcom/instagram/creation/video/gl/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/gl/a;->g:Lcom/instagram/creation/video/gl/c;

    return-void
.end method

.method public a(Lcom/instagram/creation/video/gl/c;IIII)V
    .registers 12

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/instagram/creation/video/gl/c;->a(Lcom/instagram/creation/video/gl/a;IIII)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/a;->c:I

    return v0
.end method

.method protected abstract b(Lcom/instagram/creation/video/gl/c;)Z
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/a;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/a;->e:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/a;->f:I

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/gl/a;->h:Z

    return v0
.end method

.method protected finalize()V
    .registers 3

    sget-object v0, Lcom/instagram/creation/video/gl/a;->j:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/instagram/creation/video/gl/a;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/a;->i()V

    sget-object v0, Lcom/instagram/creation/video/gl/a;->j:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract g()I
.end method

.method public h()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/instagram/creation/video/gl/a;->b:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public i()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/a;->n()V

    return-void
.end method

.method public j()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/a;->n()V

    return-void
.end method
