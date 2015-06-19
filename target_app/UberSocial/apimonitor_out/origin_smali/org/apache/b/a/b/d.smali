.class public Lorg/apache/b/a/b/d;
.super Lorg/apache/b/a/b/c;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/b/f;
.implements Lorg/apache/b/a/b/g;
.implements Lorg/apache/b/a/b/h;
.implements Lorg/apache/b/a/b/i;
.implements Lorg/apache/b/a/b/j;


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Lorg/apache/b/a/a;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;

.field private n:Lorg/apache/b/a/c/c/a;

.field private o:Lorg/apache/b/a/a;

.field private p:Lorg/apache/b/a/c/c/a;

.field private q:Lorg/apache/b/a/a;

.field private r:Lorg/apache/b/a/c/c/a;

.field private s:Lorg/apache/b/a/a;

.field private t:J

.field private u:Lorg/apache/b/a/a;

.field private v:Z

.field private w:Ljava/util/List;

.field private x:Lorg/apache/b/a/a;

.field private y:Z

.field private z:Lorg/apache/b/a/a;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/b/a/b/d;-><init>(Lorg/apache/b/a/b/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/b/a/b/a;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/apache/b/a/b/c;-><init>(Lorg/apache/b/a/b/a;)V

    iput-boolean v3, p0, Lorg/apache/b/a/b/d;->d:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/b/a/b/d;->f:I

    iput v3, p0, Lorg/apache/b/a/b/d;->e:I

    iput-object v2, p0, Lorg/apache/b/a/b/d;->h:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/b/a/b/d;->i:Z

    iput-object v2, p0, Lorg/apache/b/a/b/d;->j:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/b/a/b/d;->k:Z

    iput-object v2, p0, Lorg/apache/b/a/b/d;->l:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->n:Lorg/apache/b/a/c/c/a;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->o:Lorg/apache/b/a/a;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->p:Lorg/apache/b/a/c/c/a;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->q:Lorg/apache/b/a/a;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->r:Lorg/apache/b/a/c/c/a;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->s:Lorg/apache/b/a/a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/b/a/b/d;->t:J

    iput-object v2, p0, Lorg/apache/b/a/b/d;->u:Lorg/apache/b/a/a;

    iput-boolean v3, p0, Lorg/apache/b/a/b/d;->v:Z

    iput-object v2, p0, Lorg/apache/b/a/b/d;->w:Ljava/util/List;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->x:Lorg/apache/b/a/a;

    iput-boolean v3, p0, Lorg/apache/b/a/b/d;->i:Z

    iput-object v2, p0, Lorg/apache/b/a/b/d;->A:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/b/a/b/d;->z:Lorg/apache/b/a/a;

    iput-boolean v3, p0, Lorg/apache/b/a/b/d;->B:Z

    iput-object v2, p0, Lorg/apache/b/a/b/d;->C:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/b/a/b/d;->D:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/b/d;->D:Z

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->C:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/b/d;->B:Z

    if-eqz p1, :cond_19

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/b/a/c/f/c;

    invoke-direct {v1, v0}, Lorg/apache/b/a/c/f/c;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/b/a/c/f/c;->a(Z)V

    :try_start_13
    invoke-virtual {v1}, Lorg/apache/b/a/c/f/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->A:Ljava/lang/String;
    :try_end_19
    .catch Lorg/apache/b/a/a; {:try_start_13 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->z:Lorg/apache/b/a/a;

    goto :goto_19
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/b/d;->y:Z

    if-eqz p1, :cond_15

    :try_start_5
    new-instance v0, Lorg/apache/b/a/c/d/a;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/b/a/c/d/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/apache/b/a/c/d/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->w:Ljava/util/List;
    :try_end_15
    .catch Lorg/apache/b/a/a; {:try_start_5 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->x:Lorg/apache/b/a/a;

    goto :goto_15
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/b/d;->v:Z

    invoke-static {p1}, Lorg/apache/b/a/g/g;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/b/a/b/d;->l:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    const-string v1, "modification-date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    :try_start_21
    invoke-direct {p0, v0}, Lorg/apache/b/a/b/d;->f(Ljava/lang/String;)Lorg/apache/b/a/c/c/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->n:Lorg/apache/b/a/c/c/a;
    :try_end_27
    .catch Lorg/apache/b/a/c/c/a/f; {:try_start_21 .. :try_end_27} :catch_65

    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    const-string v1, "creation-date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_39

    :try_start_33
    invoke-direct {p0, v0}, Lorg/apache/b/a/b/d;->f(Ljava/lang/String;)Lorg/apache/b/a/c/c/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->p:Lorg/apache/b/a/c/c/a;
    :try_end_39
    .catch Lorg/apache/b/a/c/c/a/f; {:try_start_33 .. :try_end_39} :catch_69

    :cond_39
    :goto_39
    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    const-string v1, "read-date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4b

    :try_start_45
    invoke-direct {p0, v0}, Lorg/apache/b/a/b/d;->f(Ljava/lang/String;)Lorg/apache/b/a/c/c/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->r:Lorg/apache/b/a/c/c/a;
    :try_end_4b
    .catch Lorg/apache/b/a/c/c/a/f; {:try_start_45 .. :try_end_4b} :catch_6d

    :cond_4b
    :goto_4b
    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5d

    :try_start_57
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/b/a/b/d;->t:J
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5d} :catch_71

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_65
    move-exception v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->o:Lorg/apache/b/a/a;

    goto :goto_27

    :catch_69
    move-exception v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->q:Lorg/apache/b/a/a;

    goto :goto_39

    :catch_6d
    move-exception v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->s:Lorg/apache/b/a/a;

    goto :goto_4b

    :catch_71
    move-exception v0

    new-instance v1, Lorg/apache/b/a/a;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lorg/apache/b/a/a;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/a;

    iput-object v0, p0, Lorg/apache/b/a/b/d;->u:Lorg/apache/b/a/a;

    goto :goto_5d
.end method

.method private f(Ljava/lang/String;)Lorg/apache/b/a/c/c/a;
    .registers 4

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/b/a/c/c/a/a;

    invoke-direct {v1, v0}, Lorg/apache/b/a/c/c/a/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lorg/apache/b/a/c/c/a/a;->c()Lorg/apache/b/a/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_a

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/b/a/b/d;->j:Ljava/lang/String;

    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/b/d;->k:Z

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->j:Ljava/lang/String;

    goto :goto_6
.end method

.method private h(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_a

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/b/a/b/d;->h:Ljava/lang/String;

    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/b/d;->i:Z

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->h:Ljava/lang/String;

    goto :goto_6
.end method

.method private i(Ljava/lang/String;)V
    .registers 5

    const/4 v2, -0x1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/b/a/c/e/a;

    invoke-direct {v1, v0}, Lorg/apache/b/a/c/e/a;-><init>(Ljava/io/Reader;)V

    :try_start_b
    invoke-virtual {v1}, Lorg/apache/b/a/c/e/a;->e()V

    invoke-virtual {v1}, Lorg/apache/b/a/c/e/a;->b()I

    move-result v0

    if-eq v0, v2, :cond_16

    iput v0, p0, Lorg/apache/b/a/b/d;->f:I

    :cond_16
    invoke-virtual {v1}, Lorg/apache/b/a/c/e/a;->a()I

    move-result v0

    if-eq v0, v2, :cond_1e

    iput v0, p0, Lorg/apache/b/a/b/d;->e:I
    :try_end_1e
    .catch Lorg/apache/b/a/a; {:try_start_b .. :try_end_1e} :catch_22

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/b/d;->d:Z

    return-void

    :catch_22
    move-exception v0

    iput-object v0, p0, Lorg/apache/b/a/b/d;->g:Lorg/apache/b/a/a;

    goto :goto_1e
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->A:Ljava/lang/String;

    return-object v0
.end method

.method public B()Lorg/apache/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->z:Lorg/apache/b/a/a;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->C:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime-version"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lorg/apache/b/a/b/d;->d:Z

    if-nez v1, :cond_18

    invoke-direct {p0, p2}, Lorg/apache/b/a/b/d;->i(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    const-string v1, "content-id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lorg/apache/b/a/b/d;->i:Z

    if-nez v1, :cond_28

    invoke-direct {p0, p2}, Lorg/apache/b/a/b/d;->h(Ljava/lang/String;)V

    goto :goto_17

    :cond_28
    const-string v1, "content-description"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Lorg/apache/b/a/b/d;->k:Z

    if-nez v1, :cond_38

    invoke-direct {p0, p2}, Lorg/apache/b/a/b/d;->g(Ljava/lang/String;)V

    goto :goto_17

    :cond_38
    const-string v1, "content-disposition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lorg/apache/b/a/b/d;->v:Z

    if-nez v1, :cond_48

    invoke-direct {p0, p2}, Lorg/apache/b/a/b/d;->e(Ljava/lang/String;)V

    goto :goto_17

    :cond_48
    const-string v1, "content-language"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Lorg/apache/b/a/b/d;->y:Z

    if-nez v1, :cond_58

    invoke-direct {p0, p2}, Lorg/apache/b/a/b/d;->d(Ljava/lang/String;)V

    goto :goto_17

    :cond_58
    const-string v1, "content-location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lorg/apache/b/a/b/d;->B:Z

    if-nez v1, :cond_68

    invoke-direct {p0, p2}, Lorg/apache/b/a/b/d;->c(Ljava/lang/String;)V

    goto :goto_17

    :cond_68
    const-string v1, "content-md5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-boolean v1, p0, Lorg/apache/b/a/b/d;->D:Z

    if-nez v1, :cond_78

    invoke-direct {p0, p2}, Lorg/apache/b/a/b/d;->b(Ljava/lang/String;)V

    goto :goto_17

    :cond_78
    invoke-super {p0, v0, p2}, Lorg/apache/b/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/b/d;->f:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/b/d;->e:I

    return v0
.end method

.method public k()Lorg/apache/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->g:Lorg/apache/b/a/a;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/b/d;->m:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public q()Lorg/apache/b/a/c/c/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->n:Lorg/apache/b/a/c/c/a;

    return-object v0
.end method

.method public r()Lorg/apache/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->o:Lorg/apache/b/a/a;

    return-object v0
.end method

.method public s()Lorg/apache/b/a/c/c/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->p:Lorg/apache/b/a/c/c/a;

    return-object v0
.end method

.method public t()Lorg/apache/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->q:Lorg/apache/b/a/a;

    return-object v0
.end method

.method public u()Lorg/apache/b/a/c/c/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->r:Lorg/apache/b/a/c/c/a;

    return-object v0
.end method

.method public v()Lorg/apache/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->s:Lorg/apache/b/a/a;

    return-object v0
.end method

.method public w()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/b/a/b/d;->t:J

    return-wide v0
.end method

.method public x()Lorg/apache/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->u:Lorg/apache/b/a/a;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->w:Ljava/util/List;

    return-object v0
.end method

.method public z()Lorg/apache/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/b/d;->x:Lorg/apache/b/a/a;

    return-object v0
.end method
