.class public final Lorg/apache/log4j/i/a;
.super Lorg/apache/log4j/c/q;
.source "SourceFile"


# instance fields
.field private f:[Lorg/apache/log4j/i/r;

.field private g:[Lorg/apache/log4j/i/i;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/log4j/c/q;-><init>()V

    iput-object v4, p0, Lorg/apache/log4j/i/a;->a:Lorg/apache/log4j/c/q;

    iput-boolean v0, p0, Lorg/apache/log4j/i/a;->h:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/apache/log4j/i/ad;->a()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1, v1, v2, v4, v3}, Lorg/apache/log4j/i/ad;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/log4j/i/r;

    iput-object v3, p0, Lorg/apache/log4j/i/a;->f:[Lorg/apache/log4j/i/r;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/log4j/i/i;

    iput-object v3, p0, Lorg/apache/log4j/i/a;->g:[Lorg/apache/log4j/i/i;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/log4j/i/r;

    if-eqz v4, :cond_68

    iget-object v4, p0, Lorg/apache/log4j/i/a;->f:[Lorg/apache/log4j/i/r;

    check-cast v0, Lorg/apache/log4j/i/r;

    aput-object v0, v4, v1

    iget-boolean v0, p0, Lorg/apache/log4j/i/a;->h:Z

    iget-object v4, p0, Lorg/apache/log4j/i/a;->f:[Lorg/apache/log4j/i/r;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/apache/log4j/i/r;->a()Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lorg/apache/log4j/i/a;->h:Z

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v4, p0, Lorg/apache/log4j/i/a;->g:[Lorg/apache/log4j/i/i;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/i/i;

    aput-object v0, v4, v1

    :goto_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    :cond_68
    iget-object v0, p0, Lorg/apache/log4j/i/a;->f:[Lorg/apache/log4j/i/r;

    new-instance v4, Lorg/apache/log4j/i/o;

    const-string v5, ""

    invoke-direct {v4, v5}, Lorg/apache/log4j/i/o;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    goto :goto_54

    :cond_74
    iget-object v0, p0, Lorg/apache/log4j/i/a;->g:[Lorg/apache/log4j/i/i;

    invoke-static {}, Lorg/apache/log4j/i/i;->a()Lorg/apache/log4j/i/i;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_64

    :cond_7d
    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/i/a;->a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/log4j/i/a;->f:[Lorg/apache/log4j/i/r;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/log4j/i/a;->f:[Lorg/apache/log4j/i/r;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p1}, Lorg/apache/log4j/i/r;->a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V

    iget-object v2, p0, Lorg/apache/log4j/i/a;->g:[Lorg/apache/log4j/i/i;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1}, Lorg/apache/log4j/i/i;->a(ILjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/i/a;->h:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
