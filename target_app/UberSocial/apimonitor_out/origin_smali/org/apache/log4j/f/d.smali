.class public Lorg/apache/log4j/f/d;
.super Lorg/apache/log4j/f/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/log4j/f/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/t;)V
    .registers 7

    invoke-virtual {p1}, Lorg/apache/log4j/k/t;->b()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_a
    array-length v3, v1

    if-ge v0, v3, :cond_28

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/f/d;->h:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/log4j/f/e;->b:Lorg/apache/log4j/f/e;

    invoke-virtual {p0}, Lorg/apache/log4j/f/d;->b()Lorg/apache/log4j/f/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/f/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, Lorg/apache/log4j/f/e;->a:Lorg/apache/log4j/f/e;

    invoke-virtual {p0}, Lorg/apache/log4j/f/d;->b()Lorg/apache/log4j/f/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/f/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    return v0
.end method
