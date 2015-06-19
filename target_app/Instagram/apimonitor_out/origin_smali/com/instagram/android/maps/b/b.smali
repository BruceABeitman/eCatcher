.class public Lcom/instagram/android/maps/b/b;
.super Ljava/lang/Object;
.source "Quadtree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/instagram/android/maps/b/i;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private e:Lcom/instagram/android/maps/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/instagram/android/maps/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/instagram/android/maps/b/b;

.field private h:Lcom/instagram/android/maps/b/b;

.field private i:Lcom/instagram/android/maps/b/b;

.field private j:Lcom/instagram/android/maps/b/b;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/android/maps/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/instagram/android/maps/b/b;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/instagram/android/maps/b/i;->c()Lcom/instagram/android/maps/b/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/b/b;-><init>(Lcom/instagram/android/maps/b/i;)V

    return-void
.end method

.method private constructor <init>(Lcom/instagram/android/maps/b/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/instagram/android/maps/b/b;->k:I

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/i;->a()Lcom/instagram/android/maps/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/b/b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/b/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/instagram/android/maps/b/b;
    .registers 2

    new-instance v0, Lcom/instagram/android/maps/b/b;

    invoke-static {}, Lcom/instagram/android/maps/b/i;->c()Lcom/instagram/android/maps/b/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/b/b;-><init>(Lcom/instagram/android/maps/b/i;)V

    return-object v0
.end method

.method private a(Lcom/instagram/android/maps/b/h;I)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/b/h;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x3f647ae147ae147bL

    const-wide v0, 0x3f647ae147ae147bL

    const/4 v4, 0x1

    new-array v8, v4, [F

    move-wide v9, v0

    move-wide v11, v2

    :goto_f
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v4

    add-double/2addr v4, v11

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v6

    add-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    int-to-double v2, p2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_37

    const-wide/high16 v0, 0x4000

    mul-double v2, v11, v0

    const-wide/high16 v0, 0x4000

    mul-double/2addr v0, v9

    move-wide v9, v0

    move-wide v11, v2

    goto :goto_f

    :cond_37
    new-instance v0, Lcom/instagram/android/maps/b/i;

    new-instance v1, Lcom/instagram/android/maps/b/h;

    invoke-direct {v1, v11, v12, v9, v10}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    invoke-direct {v0, p1, v1}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/instagram/android/maps/b/i;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/b/i;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/instagram/android/maps/b/i;Z)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/b/i;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {p1, v0}, Lcom/instagram/android/maps/b/i;->b(Lcom/instagram/android/maps/b/i;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    :goto_12
    if-eqz p2, :cond_1c

    new-instance v0, Lcom/instagram/android/maps/b/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/b/c;-><init>(Lcom/instagram/android/maps/b/b;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1c
    return-object v1

    :cond_1d
    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/b/i;->a(Lcom/instagram/android/maps/b/i;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1, v0}, Lcom/instagram/android/maps/b/i;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_45
    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->g:Lcom/instagram/android/maps/b/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->g:Lcom/instagram/android/maps/b/b;

    invoke-direct {v0, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->h:Lcom/instagram/android/maps/b/b;

    invoke-direct {v0, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->i:Lcom/instagram/android/maps/b/b;

    invoke-direct {v0, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->j:Lcom/instagram/android/maps/b/b;

    invoke-direct {v0, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12
.end method

.method private e()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .registers 13

    const-wide/high16 v10, 0x4000

    new-instance v0, Lcom/instagram/android/maps/b/h;

    iget-object v1, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    div-double/2addr v3, v10

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    div-double/2addr v5, v10

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    new-instance v1, Lcom/instagram/android/maps/b/h;

    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v4

    div-double/2addr v4, v10

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v4

    iget-object v6, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v6

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    new-instance v2, Lcom/instagram/android/maps/b/h;

    iget-object v3, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    div-double/2addr v5, v10

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v7

    div-double/2addr v7, v10

    sub-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    new-instance v3, Lcom/instagram/android/maps/b/h;

    iget-object v4, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v4

    iget-object v6, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v6

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    iget-object v6, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/i;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v6

    iget-object v8, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v8}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v8

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    iget-object v4, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/i;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v4

    const-wide/high16 v5, 0x3fe0

    invoke-virtual {v4, v5, v6}, Lcom/instagram/android/maps/b/h;->a(D)Lcom/instagram/android/maps/b/h;

    move-result-object v4

    new-instance v5, Lcom/instagram/android/maps/b/b;

    new-instance v6, Lcom/instagram/android/maps/b/i;

    invoke-direct {v6, v0, v4}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    invoke-direct {v5, v6}, Lcom/instagram/android/maps/b/b;-><init>(Lcom/instagram/android/maps/b/i;)V

    iput-object v5, p0, Lcom/instagram/android/maps/b/b;->g:Lcom/instagram/android/maps/b/b;

    new-instance v0, Lcom/instagram/android/maps/b/b;

    new-instance v5, Lcom/instagram/android/maps/b/i;

    invoke-direct {v5, v1, v4}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    invoke-direct {v0, v5}, Lcom/instagram/android/maps/b/b;-><init>(Lcom/instagram/android/maps/b/i;)V

    iput-object v0, p0, Lcom/instagram/android/maps/b/b;->h:Lcom/instagram/android/maps/b/b;

    new-instance v0, Lcom/instagram/android/maps/b/b;

    new-instance v1, Lcom/instagram/android/maps/b/i;

    invoke-direct {v1, v2, v4}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/b/b;-><init>(Lcom/instagram/android/maps/b/i;)V

    iput-object v0, p0, Lcom/instagram/android/maps/b/b;->i:Lcom/instagram/android/maps/b/b;

    new-instance v0, Lcom/instagram/android/maps/b/b;

    new-instance v1, Lcom/instagram/android/maps/b/i;

    invoke-direct {v1, v3, v4}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/b/b;-><init>(Lcom/instagram/android/maps/b/i;)V

    iput-object v0, p0, Lcom/instagram/android/maps/b/b;->j:Lcom/instagram/android/maps/b/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/android/maps/b/i;ILcom/google/android/maps/Projection;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/b/i;",
            "I",
            "Lcom/google/android/maps/Projection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/f;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;Z)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "PhotoMap"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clustering "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " points"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    :goto_2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c9

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/maps/b/h;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/f;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;

    move-result-object v6

    iget v7, v11, Landroid/graphics/Point;->x:I

    iget v13, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v13

    int-to-double v13, v7

    iget v7, v11, Landroid/graphics/Point;->y:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v7, v6

    int-to-double v6, v6

    mul-double/2addr v13, v13

    mul-double/2addr v6, v6

    add-double/2addr v6, v13

    move/from16 v0, p2

    int-to-double v13, v0

    cmpg-double v13, v6, v13

    if-gez v13, :cond_ce

    if-eqz v8, :cond_7d

    cmpg-double v13, v6, v4

    if-gez v13, :cond_ce

    :cond_7d
    move-wide v4, v6

    :goto_7e
    move-object v8, v2

    goto :goto_4a

    :cond_80
    if-eqz v8, :cond_cc

    invoke-virtual {v8, v1}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    const/4 v2, 0x1

    :goto_86
    if-nez v2, :cond_ca

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v11}, Lcom/instagram/android/maps/b/h;->a(Lcom/instagram/android/maps/b/h;Lcom/google/android/maps/Projection;Landroid/graphics/Point;)D

    move-result-wide v6

    move/from16 v0, p2

    int-to-double v8, v0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_b3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_b3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_b7
    new-instance v2, Lcom/instagram/android/maps/b/f;

    invoke-direct {v2}, Lcom/instagram/android/maps/b/f;-><init>()V

    invoke-virtual {v2, v1}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    invoke-virtual {v2, v5}, Lcom/instagram/android/maps/b/f;->a(Ljava/util/List;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    :goto_c6
    move-object v3, v1

    goto/16 :goto_2b

    :cond_c9
    return-object v10

    :cond_ca
    move-object v1, v3

    goto :goto_c6

    :cond_cc
    move v2, v9

    goto :goto_86

    :cond_ce
    move-object v2, v8

    goto :goto_7e
.end method

.method public final a(Lcom/instagram/android/maps/b/h;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->b:Lcom/instagram/android/maps/b/i;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/b/i;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->e:Lcom/instagram/android/maps/b/h;

    if-nez v2, :cond_35

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/maps/b/b;->e:Lcom/instagram/android/maps/b/h;

    :goto_1a
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->f:Lcom/instagram/android/maps/b/h;

    if-nez v2, :cond_5c

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/android/maps/b/b;->f:Lcom/instagram/android/maps/b/h;

    :goto_24
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/instagram/android/maps/b/b;->k:I

    if-ge v2, v3, :cond_83

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_a

    :cond_35
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->e:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/b;->e:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/b/h;->b(D)V

    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->e:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/b;->e:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/b/h;->c(D)V

    goto :goto_1a

    :cond_5c
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->f:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/b;->f:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/b/h;->b(D)V

    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->f:Lcom/instagram/android/maps/b/h;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/b;->f:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/maps/b/h;->c(D)V

    goto :goto_24

    :cond_83
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->g:Lcom/instagram/android/maps/b/b;

    if-nez v2, :cond_8a

    invoke-direct {p0}, Lcom/instagram/android/maps/b/b;->f()V

    :cond_8a
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->g:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v2

    if-eqz v2, :cond_95

    move v0, v1

    goto/16 :goto_a

    :cond_95
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->h:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v2

    if-eqz v2, :cond_a0

    move v0, v1

    goto/16 :goto_a

    :cond_a0
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->i:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v2

    if-eqz v2, :cond_ab

    move v0, v1

    goto/16 :goto_a

    :cond_ab
    iget-object v2, p0, Lcom/instagram/android/maps/b/b;->j:Lcom/instagram/android/maps/b/b;

    invoke-virtual {v2, p1}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v2

    if-eqz v2, :cond_b6

    move v0, v1

    goto/16 :goto_a

    :cond_b6
    sget-boolean v1, Lcom/instagram/android/maps/b/b;->a:Z

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/maps/b/f;",
            ">;"
        }
    .end annotation

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v21, Lcom/instagram/android/maps/b/b;

    invoke-direct/range {v21 .. v21}, Lcom/instagram/android/maps/b/b;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/instagram/android/maps/b/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/instagram/android/maps/b/a;

    invoke-interface {v3}, Lcom/instagram/android/maps/b/a;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Lcom/instagram/android/maps/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_56

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Lcom/instagram/android/maps/b/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_5a
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_60
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_68
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/instagram/android/maps/b/h;

    new-instance v7, Lcom/instagram/android/maps/b/f;

    invoke-direct {v7}, Lcom/instagram/android/maps/b/f;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/instagram/android/maps/b/f;->a(Z)V

    new-instance v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    invoke-direct/range {v2 .. v7}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_a3
    :goto_a3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/instagram/android/maps/b/h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_c1

    const/4 v2, 0x1

    :cond_bb
    :goto_bb
    if-eqz v2, :cond_df

    invoke-virtual {v7, v4}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    goto :goto_a3

    :cond_c1
    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v10

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v12

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v14

    invoke-static/range {v8 .. v16}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v3, 0x0

    aget v3, v16, v3

    const/high16 v5, 0x43fa

    cmpg-float v3, v3, v5

    if-gez v3, :cond_bb

    const/4 v2, 0x1

    goto :goto_bb

    :cond_df
    invoke-static {}, Lcom/instagram/android/maps/b/i;->c()Lcom/instagram/android/maps/b/i;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/instagram/android/maps/b/a;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_f5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_370

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/instagram/android/maps/b/f;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/a;

    invoke-interface {v2}, Lcom/instagram/android/maps/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v12

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v14

    invoke-static/range {v8 .. v16}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget v2, v16, v2

    const/high16 v8, 0x43fa

    cmpg-float v2, v2, v8

    if-gez v2, :cond_f5

    invoke-virtual {v3, v4}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    const/4 v2, 0x1

    :goto_148
    if-nez v2, :cond_a3

    new-instance v13, Lcom/instagram/android/maps/b/f;

    invoke-direct {v13}, Lcom/instagram/android/maps/b/f;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/instagram/android/maps/b/f;->a(Z)V

    invoke-virtual {v13, v4}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    new-instance v8, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v9

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v11

    invoke-direct/range {v8 .. v13}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z

    goto/16 :goto_a3

    :cond_16a
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_16f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e7

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/instagram/android/maps/b/h;

    const/16 v2, 0xfa

    move-object/from16 v0, v21

    invoke-direct {v0, v11, v2}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;I)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v16, 0x0

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x1

    new-array v10, v3, [F

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_195
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/instagram/android/maps/b/f;

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget v2, v10, v2

    const/high16 v3, 0x437a

    cmpg-float v3, v2, v3

    if-gez v3, :cond_36c

    if-eqz v14, :cond_1d2

    cmpg-float v3, v2, v13

    if-gez v3, :cond_36c

    :cond_1d2
    :goto_1d2
    move v13, v2

    move-object v14, v12

    goto :goto_195

    :cond_1d5
    if-eqz v14, :cond_368

    invoke-virtual {v14, v11}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    const/4 v2, 0x1

    :goto_1db
    if-nez v2, :cond_1e0

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e0
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_16f

    :cond_1e7
    invoke-direct/range {v21 .. v21}, Lcom/instagram/android/maps/b/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1ef
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_287

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/instagram/android/maps/b/f;

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/f;->h()Z

    move-result v3

    if-eqz v3, :cond_1ef

    const/16 v3, 0x64

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x1

    new-array v10, v3, [F

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_219
    :goto_219
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_269

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/instagram/android/maps/b/f;

    invoke-virtual {v12}, Lcom/instagram/android/maps/b/f;->h()Z

    move-result v2

    if-eqz v2, :cond_219

    if-eq v12, v11, :cond_219

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget v2, v10, v2

    const/high16 v3, 0x42c8

    cmpg-float v3, v2, v3

    if-gez v3, :cond_364

    if-eqz v14, :cond_266

    cmpg-float v3, v2, v13

    if-gez v3, :cond_364

    :cond_266
    :goto_266
    move v13, v2

    move-object v14, v12

    goto :goto_219

    :cond_269
    if-eqz v14, :cond_1ef

    invoke-virtual {v14}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_273
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ef

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v11, v2}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/instagram/android/maps/b/f;->a(Z)V

    goto :goto_273

    :cond_287
    invoke-direct/range {v21 .. v21}, Lcom/instagram/android/maps/b/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28f
    :goto_28f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/h;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/f;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->h()Z

    move-result v4

    if-eqz v4, :cond_28f

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2b8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28f

    :cond_2b8
    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_28f

    :cond_2c0
    new-instance v2, Lcom/instagram/android/maps/b/d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/instagram/android/maps/b/d;-><init>(Lcom/instagram/android/maps/b/b;)V

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v3, v15

    :goto_2cd
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_33c

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/instagram/android/maps/b/h;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v10, v2, [F

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2f0
    :goto_2f0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_324

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/instagram/android/maps/b/h;

    if-eq v11, v12, :cond_2f0

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget v2, v10, v2

    const v3, 0x46c35000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_320

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f0

    :cond_320
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f0

    :cond_324
    new-instance v2, Lcom/instagram/android/maps/b/f;

    invoke-direct {v2}, Lcom/instagram/android/maps/b/f;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_332

    invoke-virtual {v2, v14}, Lcom/instagram/android/maps/b/f;->a(Ljava/util/List;)V

    :cond_332
    invoke-virtual {v2, v12}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v13

    goto :goto_2cd

    :cond_33c
    new-instance v2, Lcom/instagram/android/maps/b/e;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/instagram/android/maps/b/e;-><init>(Lcom/instagram/android/maps/b/b;)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_353
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_363

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/maps/b/f;

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->a()V

    goto :goto_353

    :cond_363
    return-object v19

    :cond_364
    move v2, v13

    move-object v12, v14

    goto/16 :goto_266

    :cond_368
    move/from16 v2, v16

    goto/16 :goto_1db

    :cond_36c
    move v2, v13

    move-object v12, v14

    goto/16 :goto_1d2

    :cond_370
    move v2, v6

    goto/16 :goto_148
.end method

.method public final c()Lcom/instagram/android/maps/b/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->e:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method public final d()Lcom/instagram/android/maps/b/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/android/maps/b/h",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/maps/b/b;->f:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method
