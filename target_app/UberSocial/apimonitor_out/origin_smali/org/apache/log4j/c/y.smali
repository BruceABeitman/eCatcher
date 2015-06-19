.class Lorg/apache/log4j/c/y;
.super Lorg/apache/log4j/c/q;
.source "SourceFile"


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/log4j/c/i;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/log4j/c/q;-><init>(Lorg/apache/log4j/c/i;)V

    iput-object p2, p0, Lorg/apache/log4j/c/y;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x7d

    iget-object v0, p0, Lorg/apache/log4j/c/y;->f:Ljava/lang/String;

    if-nez v0, :cond_4c

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "{"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->p()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_44

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_23
    array-length v4, v3

    if-ge v0, v4, :cond_44

    const/16 v4, 0x7b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_44
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    return-object v0

    :cond_4c
    iget-object v0, p0, Lorg/apache/log4j/c/y;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/log4j/k/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_56

    const/4 v0, 0x0

    goto :goto_4b

    :cond_56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method
