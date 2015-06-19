.class public final Lcom/instagram/user/b/b;
.super Ljava/lang/Object;
.source "LocalUserSerializationHelper.java"


# static fields
.field private static final a:Lcom/fasterxml/jackson/a/e;

.field private static final b:Lcom/instagram/user/b/a;

.field private static final c:Lcom/instagram/user/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    sput-object v0, Lcom/instagram/user/b/b;->a:Lcom/fasterxml/jackson/a/e;

    new-instance v0, Lcom/instagram/user/b/a;

    invoke-direct {v0}, Lcom/instagram/user/b/a;-><init>()V

    sput-object v0, Lcom/instagram/user/b/b;->b:Lcom/instagram/user/b/a;

    new-instance v0, Lcom/instagram/user/b/c;

    invoke-direct {v0}, Lcom/instagram/user/b/c;-><init>()V

    sput-object v0, Lcom/instagram/user/b/b;->c:Lcom/instagram/user/b/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/user/c/a;
    .registers 3

    sget-object v0, Lcom/instagram/user/b/b;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/instagram/user/b/b;->b:Lcom/instagram/user/b/a;

    invoke-static {v0}, Lcom/instagram/user/b/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/instagram/user/c/a;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sget-object v1, Lcom/instagram/user/b/b;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/b/b;->c:Lcom/instagram/user/b/c;

    invoke-static {p0, v1}, Lcom/instagram/user/b/c;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/a/h;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    sget-object v0, Lcom/instagram/user/b/b;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    sget-object v4, Lcom/instagram/user/b/b;->c:Lcom/instagram/user/b/c;

    invoke-static {v0, v2}, Lcom/instagram/user/b/c;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/a/h;)V

    goto :goto_12

    :cond_24
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->close()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/instagram/user/b/b;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_28

    :goto_16
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_28

    sget-object v2, Lcom/instagram/user/b/b;->b:Lcom/instagram/user/b/a;

    invoke-static {v0}, Lcom/instagram/user/b/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_28
    return-object v1
.end method
