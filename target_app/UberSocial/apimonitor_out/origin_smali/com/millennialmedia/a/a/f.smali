.class public final Lcom/millennialmedia/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Z = false

.field private static final d:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field final b:Lcom/millennialmedia/a/a/k;

.field final c:Lcom/millennialmedia/a/a/t;

.field private final e:Ljava/lang/ThreadLocal;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/List;

.field private final h:Lcom/millennialmedia/a/a/b/f;

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>()V
    .registers 13

    const/4 v4, 0x0

    sget-object v1, Lcom/millennialmedia/a/a/b/g;->a:Lcom/millennialmedia/a/a/b/g;

    sget-object v2, Lcom/millennialmedia/a/a/d;->a:Lcom/millennialmedia/a/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/millennialmedia/a/a/x;->a:Lcom/millennialmedia/a/a/x;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/millennialmedia/a/a/f;-><init>(Lcom/millennialmedia/a/a/b/g;Lcom/millennialmedia/a/a/e;Ljava/util/Map;ZZZZZZLcom/millennialmedia/a/a/x;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/a/a/b/g;Lcom/millennialmedia/a/a/e;Ljava/util/Map;ZZZZZZLcom/millennialmedia/a/a/x;Ljava/util/List;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/f;->e:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/f;->f:Ljava/util/Map;

    new-instance v0, Lcom/millennialmedia/a/a/f$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/f$1;-><init>(Lcom/millennialmedia/a/a/f;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/f;->b:Lcom/millennialmedia/a/a/k;

    new-instance v0, Lcom/millennialmedia/a/a/f$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/f$2;-><init>(Lcom/millennialmedia/a/a/f;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/f;->c:Lcom/millennialmedia/a/a/t;

    new-instance v0, Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v0, p3}, Lcom/millennialmedia/a/a/b/f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/f;->h:Lcom/millennialmedia/a/a/b/f;

    iput-boolean p4, p0, Lcom/millennialmedia/a/a/f;->i:Z

    iput-boolean p6, p0, Lcom/millennialmedia/a/a/f;->k:Z

    iput-boolean p7, p0, Lcom/millennialmedia/a/a/f;->j:Z

    iput-boolean p8, p0, Lcom/millennialmedia/a/a/f;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->Q:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/i;->a:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->x:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->m:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->g:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->i:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->k:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/x;)Lcom/millennialmedia/a/a/aa;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/millennialmedia/a/a/f;->a(Z)Lcom/millennialmedia/a/a/aa;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/millennialmedia/a/a/f;->b(Z)Lcom/millennialmedia/a/a/aa;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->r:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->t:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->z:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->B:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/millennialmedia/a/a/b/a/p;->v:Lcom/millennialmedia/a/a/aa;

    invoke-static {v1, v2}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/millennialmedia/a/a/b/a/p;->w:Lcom/millennialmedia/a/a/aa;

    invoke-static {v1, v2}, Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->D:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->F:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->J:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->O:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->H:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->d:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/d;->a:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->M:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/n;->a:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/m;->a:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->K:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/a;->a:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->R:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p;->b:Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/millennialmedia/a/a/b/a/b;

    iget-object v2, p0, Lcom/millennialmedia/a/a/f;->h:Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v1, v2}, Lcom/millennialmedia/a/a/b/a/b;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/millennialmedia/a/a/b/a/g;

    iget-object v2, p0, Lcom/millennialmedia/a/a/f;->h:Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v1, v2, p5}, Lcom/millennialmedia/a/a/b/a/g;-><init>(Lcom/millennialmedia/a/a/b/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/millennialmedia/a/a/b/a/j;

    iget-object v2, p0, Lcom/millennialmedia/a/a/f;->h:Lcom/millennialmedia/a/a/b/f;

    invoke-direct {v1, v2, p2, p1}, Lcom/millennialmedia/a/a/b/a/j;-><init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/b/g;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/f;->g:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/x;)Lcom/millennialmedia/a/a/aa;
    .registers 3

    sget-object v0, Lcom/millennialmedia/a/a/x;->a:Lcom/millennialmedia/a/a/x;

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->n:Lcom/millennialmedia/a/a/aa;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/millennialmedia/a/a/f$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/f$5;-><init>(Lcom/millennialmedia/a/a/f;)V

    goto :goto_6
.end method

.method private a(Z)Lcom/millennialmedia/a/a/aa;
    .registers 3

    if-eqz p1, :cond_5

    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->p:Lcom/millennialmedia/a/a/aa;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/millennialmedia/a/a/f$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/f$3;-><init>(Lcom/millennialmedia/a/a/f;)V

    goto :goto_4
.end method

.method private a(Ljava/io/Writer;)Lcom/millennialmedia/a/a/d/d;
    .registers 4

    iget-boolean v0, p0, Lcom/millennialmedia/a/a/f;->k:Z

    if-eqz v0, :cond_9

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/millennialmedia/a/a/d/d;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/d;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/millennialmedia/a/a/f;->l:Z

    if-eqz v1, :cond_17

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/d/d;->c(Ljava/lang/String;)V

    :cond_17
    iget-boolean v1, p0, Lcom/millennialmedia/a/a/f;->i:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/d/d;->d(Z)V

    return-object v0
.end method

.method private a(D)V
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/f;D)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/f;->a(D)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/millennialmedia/a/a/d/a;)V
    .registers 4

    if-eqz p0, :cond_20

    :try_start_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->j:Lcom/millennialmedia/a/a/d/c;

    if-eq v0, v1, :cond_20

    new-instance v0, Lcom/millennialmedia/a/a/n;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Lcom/millennialmedia/a/a/d/e; {:try_start_2 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_19

    :catch_12
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/n;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    return-void
.end method

.method private b(Z)Lcom/millennialmedia/a/a/aa;
    .registers 3

    if-eqz p1, :cond_5

    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->o:Lcom/millennialmedia/a/a/aa;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/millennialmedia/a/a/f$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/f$4;-><init>(Lcom/millennialmedia/a/a/f;)V

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/ab;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/a/a/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/ab;

    if-nez v1, :cond_1b

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    move v1, v0

    goto :goto_8

    :cond_1b
    invoke-interface {v0, p0, p2}, Lcom/millennialmedia/a/a/ab;->a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSON cannot serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
    .registers 7

    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/aa;

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_83

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_23
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/g;

    if-nez v0, :cond_a

    :try_start_2b
    new-instance v3, Lcom/millennialmedia/a/a/g;

    invoke-direct {v3}, Lcom/millennialmedia/a/a/g;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/ab;

    invoke-interface {v0, p0, p1}, Lcom/millennialmedia/a/a/ab;->a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v3, v0}, Lcom/millennialmedia/a/a/g;->a(Lcom/millennialmedia/a/a/aa;)V

    iget-object v3, p0, Lcom/millennialmedia/a/a/f;->f:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_77

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/millennialmedia/a/a/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_a

    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_77
    .catchall {:try_start_5e .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/millennialmedia/a/a/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_82
    throw v0

    :cond_83
    move-object v2, v0

    goto :goto_23
.end method

.method public a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/aa;
    .registers 3

    invoke-static {p1}, Lcom/millennialmedia/a/a/c/a;->c(Ljava/lang/Class;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/m;

    move-result-object v0

    goto :goto_4
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/m;
    .registers 4

    new-instance v0, Lcom/millennialmedia/a/a/b/a/f;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/f;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/d/d;)V

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/a/f;->a()Lcom/millennialmedia/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->p()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/millennialmedia/a/a/d/a;->a(Z)V

    :try_start_8
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_27
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_17} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_17} :catch_2c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_33

    move-result-object v0

    :goto_18
    invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/a;->a(Z)V

    return-object v0

    :catch_1c
    move-exception v0

    if-eqz v1, :cond_21

    const/4 v0, 0x0

    goto :goto_18

    :cond_21
    :try_start_21
    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/a;->a(Z)V

    throw v0

    :catch_2c
    move-exception v0

    :try_start_2d
    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_33
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_27
.end method

.method public a(Lcom/millennialmedia/a/a/m;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/millennialmedia/a/a/b/r;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/millennialmedia/a/a/b/a/e;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/b/a/e;-><init>(Lcom/millennialmedia/a/a/m;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/millennialmedia/a/a/d/a;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Lcom/millennialmedia/a/a/d/a;)V

    invoke-static {p2}, Lcom/millennialmedia/a/a/b/r;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/millennialmedia/a/a/d/a;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/d/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Lcom/millennialmedia/a/a/d/a;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/millennialmedia/a/a/b/r;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/f;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Lcom/millennialmedia/a/a/m;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/m;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/millennialmedia/a/a/m;Lcom/millennialmedia/a/a/d/d;)V
    .registers 8

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/d/d;->g()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/millennialmedia/a/a/d/d;->b(Z)V

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/d/d;->h()Z

    move-result v2

    iget-boolean v0, p0, Lcom/millennialmedia/a/a/f;->j:Z

    invoke-virtual {p2, v0}, Lcom/millennialmedia/a/a/d/d;->c(Z)V

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/d/d;->i()Z

    move-result v3

    iget-boolean v0, p0, Lcom/millennialmedia/a/a/f;->i:Z

    invoke-virtual {p2, v0}, Lcom/millennialmedia/a/a/d/d;->d(Z)V

    :try_start_1a
    invoke-static {p1, p2}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/m;Lcom/millennialmedia/a/a/d/d;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_27

    invoke-virtual {p2, v1}, Lcom/millennialmedia/a/a/d/d;->b(Z)V

    invoke-virtual {p2, v2}, Lcom/millennialmedia/a/a/d/d;->c(Z)V

    invoke-virtual {p2, v3}, Lcom/millennialmedia/a/a/d/d;->d(Z)V

    return-void

    :catch_27
    move-exception v0

    :try_start_28
    new-instance v4, Lcom/millennialmedia/a/a/n;

    invoke-direct {v4, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/millennialmedia/a/a/d/d;->b(Z)V

    invoke-virtual {p2, v2}, Lcom/millennialmedia/a/a/d/d;->c(Z)V

    invoke-virtual {p2, v3}, Lcom/millennialmedia/a/a/d/d;->d(Z)V

    throw v0
.end method

.method public a(Lcom/millennialmedia/a/a/m;Ljava/lang/Appendable;)V
    .registers 5

    :try_start_0
    invoke-static {p2}, Lcom/millennialmedia/a/a/b/s;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/io/Writer;)Lcom/millennialmedia/a/a/d/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/m;Lcom/millennialmedia/a/a/d/d;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .registers 4

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/m;Ljava/lang/Appendable;)V

    goto :goto_9
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/d/d;)V
    .registers 9

    invoke-static {p2}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    invoke-virtual {p3}, Lcom/millennialmedia/a/a/d/d;->g()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/millennialmedia/a/a/d/d;->b(Z)V

    invoke-virtual {p3}, Lcom/millennialmedia/a/a/d/d;->h()Z

    move-result v2

    iget-boolean v3, p0, Lcom/millennialmedia/a/a/f;->j:Z

    invoke-virtual {p3, v3}, Lcom/millennialmedia/a/a/d/d;->c(Z)V

    invoke-virtual {p3}, Lcom/millennialmedia/a/a/d/d;->i()Z

    move-result v3

    iget-boolean v4, p0, Lcom/millennialmedia/a/a/f;->i:Z

    invoke-virtual {p3, v4}, Lcom/millennialmedia/a/a/d/d;->d(Z)V

    :try_start_22
    invoke-virtual {v0, p3, p1}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_36
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f

    invoke-virtual {p3, v1}, Lcom/millennialmedia/a/a/d/d;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/millennialmedia/a/a/d/d;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/millennialmedia/a/a/d/d;->d(Z)V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v4, Lcom/millennialmedia/a/a/n;

    invoke-direct {v4, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/millennialmedia/a/a/d/d;->b(Z)V

    invoke-virtual {p3, v2}, Lcom/millennialmedia/a/a/d/d;->c(Z)V

    invoke-virtual {p3, v3}, Lcom/millennialmedia/a/a/d/d;->d(Z)V

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 6

    :try_start_0
    invoke-static {p3}, Lcom/millennialmedia/a/a/b/s;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/io/Writer;)Lcom/millennialmedia/a/a/d/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/d/d;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/n;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_9

    sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/m;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/f;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/millennialmedia/a/a/f;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/f;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/f;->h:Lcom/millennialmedia/a/a/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
