.class public final Lcom/instagram/common/p/b;
.super Ljava/util/LinkedList;
.source "NavigationQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/instagram/common/p/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lcom/fasterxml/jackson/a/e;

.field private d:Lcom/instagram/common/analytics/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/common/p/b;

    invoke-direct {v0}, Lcom/instagram/common/p/b;-><init>()V

    sput-object v0, Lcom/instagram/common/p/b;->b:Lcom/instagram/common/p/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/p/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    iput-object v0, p0, Lcom/instagram/common/p/b;->c:Lcom/fasterxml/jackson/a/e;

    return-void
.end method

.method public static a()Lcom/instagram/common/p/b;
    .registers 1

    sget-object v0, Lcom/instagram/common/p/b;->b:Lcom/instagram/common/p/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Lcom/instagram/common/p/b;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_14

    invoke-super {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_8

    :cond_14
    iput-object p1, p0, Lcom/instagram/common/p/b;->d:Lcom/instagram/common/analytics/e;

    return-void
.end method

.method public final b()Lcom/instagram/common/analytics/e;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/p/b;->d:Lcom/instagram/common/analytics/e;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    iget-object v0, p0, Lcom/instagram/common/p/b;->c:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    invoke-virtual {p0}, Lcom/instagram/common/p/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    const-string v1, "module"

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    const-string v1, "click_point"

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_3d

    goto :goto_12

    :catch_3d
    move-exception v0

    iget-object v0, p0, Lcom/instagram/common/p/b;->a:Ljava/lang/String;

    :goto_40
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    :try_start_45
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_3d

    goto :goto_40
.end method
