.class public final Lcom/millennialmedia/a/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/ab;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/millennialmedia/a/a/b/g; = null

.field private static final b:D = -1.0


# instance fields
.field private c:D

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/millennialmedia/a/a/b/g;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/g;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/g;->a:Lcom/millennialmedia/a/a/b/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/millennialmedia/a/a/b/g;->c:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/millennialmedia/a/a/b/g;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->e:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/g;->h:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/a/c;)Z
    .registers 6

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/millennialmedia/a/a/a/c;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/a/a/b/g;->c:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private a(Lcom/millennialmedia/a/a/a/c;Lcom/millennialmedia/a/a/a/d;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Lcom/millennialmedia/a/a/a/d;)Z
    .registers 6

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/millennialmedia/a/a/a/d;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/a/a/b/g;->c:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private a(Ljava/lang/Class;)Z
    .registers 3

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private b(Ljava/lang/Class;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c(Ljava/lang/Class;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
    .registers 9

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;Z)Z

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;Z)Z

    move-result v2

    if-nez v3, :cond_14

    if-nez v2, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/millennialmedia/a/a/b/g$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/a/a/b/g$1;-><init>(Lcom/millennialmedia/a/a/b/g;ZZLcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)V

    goto :goto_13
.end method

.method protected a()Lcom/millennialmedia/a/a/b/g;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/b/g;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(D)Lcom/millennialmedia/a/a/b/g;
    .registers 4

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/g;->a()Lcom/millennialmedia/a/a/b/g;

    move-result-object v0

    iput-wide p1, v0, Lcom/millennialmedia/a/a/b/g;->c:D

    return-object v0
.end method

.method public a(Lcom/millennialmedia/a/a/b;ZZ)Lcom/millennialmedia/a/a/b/g;
    .registers 7

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/g;->a()Lcom/millennialmedia/a/a/b/g;

    move-result-object v0

    if-eqz p2, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    iget-object v1, v0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz p3, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/g;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/millennialmedia/a/a/b/g;->h:Ljava/util/List;

    iget-object v1, v0, Lcom/millennialmedia/a/a/b/g;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-object v0
.end method

.method public varargs a([I)Lcom/millennialmedia/a/a/b/g;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/g;->a()Lcom/millennialmedia/a/a/b/g;

    move-result-object v1

    iput v0, v1, Lcom/millennialmedia/a/a/b/g;->d:I

    array-length v2, p1

    :goto_8
    if-ge v0, v2, :cond_14

    aget v3, p1, v0

    iget v4, v1, Lcom/millennialmedia/a/a/b/g;->d:I

    or-int/2addr v3, v4

    iput v3, v1, Lcom/millennialmedia/a/a/b/g;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-object v1
.end method

.method public a(Ljava/lang/Class;Z)Z
    .registers 8

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/millennialmedia/a/a/b/g;->c:D

    const-wide/high16 v3, -0x4010

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_21

    const-class v0, Lcom/millennialmedia/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a/c;

    const-class v1, Lcom/millennialmedia/a/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/a/a/a/d;

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/c;Lcom/millennialmedia/a/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    :goto_20
    return v0

    :cond_21
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->e:Z

    if-nez v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    goto :goto_20

    :cond_2d
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_20

    :cond_35
    if-eqz p2, :cond_51

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    :goto_39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/b;

    invoke-interface {v0, p1}, Lcom/millennialmedia/a/a/b;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v2

    goto :goto_20

    :cond_51
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->h:Ljava/util/List;

    goto :goto_39

    :cond_54
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .registers 8

    const/4 v2, 0x1

    iget v0, p0, Lcom/millennialmedia/a/a/b/g;->d:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    move v0, v2

    :goto_b
    return v0

    :cond_c
    iget-wide v0, p0, Lcom/millennialmedia/a/a/b/g;->c:D

    const-wide/high16 v3, -0x4010

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_2c

    const-class v0, Lcom/millennialmedia/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a/c;

    const-class v1, Lcom/millennialmedia/a/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/a/a/a/d;

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/c;Lcom/millennialmedia/a/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v2

    goto :goto_b

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v2

    goto :goto_b

    :cond_34
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->f:Z

    if-eqz v0, :cond_52

    const-class v0, Lcom/millennialmedia/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a/a;

    if-eqz v0, :cond_4a

    if-eqz p2, :cond_4c

    invoke-interface {v0}, Lcom/millennialmedia/a/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_4a
    move v0, v2

    goto :goto_b

    :cond_4c
    invoke-interface {v0}, Lcom/millennialmedia/a/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_52
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->e:Z

    if-nez v0, :cond_62

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/g;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v2

    goto :goto_b

    :cond_62
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v2

    goto :goto_b

    :cond_6e
    if-eqz p2, :cond_96

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    :goto_72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_99

    new-instance v1, Lcom/millennialmedia/a/a/c;

    invoke-direct {v1, p1}, Lcom/millennialmedia/a/a/c;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_81
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/b;

    invoke-interface {v0, v1}, Lcom/millennialmedia/a/a/b;->a(Lcom/millennialmedia/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v2

    goto/16 :goto_b

    :cond_96
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->h:Ljava/util/List;

    goto :goto_72

    :cond_99
    const/4 v0, 0x0

    goto/16 :goto_b
.end method

.method public b()Lcom/millennialmedia/a/a/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/g;->a()Lcom/millennialmedia/a/a/b/g;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/a/a/b/g;->e:Z

    return-object v0
.end method

.method public c()Lcom/millennialmedia/a/a/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/g;->a()Lcom/millennialmedia/a/a/b/g;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/a/a/b/g;->f:Z

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/g;->a()Lcom/millennialmedia/a/a/b/g;

    move-result-object v0

    return-object v0
.end method
