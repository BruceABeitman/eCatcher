.class public final Lcom/instagram/api/b/a;
.super Ljava/lang/Object;
.source "JsonParams.java"

# interfaces
.implements Lcom/instagram/common/a/c/d;


# instance fields
.field a:Lcom/fasterxml/jackson/a/h;

.field b:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-direct {p0, v0}, Lcom/instagram/api/b/a;-><init>(Lcom/fasterxml/jackson/a/e;)V

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/a/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/b/a;->b:Ljava/io/StringWriter;

    :try_start_a
    iget-object v0, p0, Lcom/instagram/api/b/a;->b:Ljava/io/StringWriter;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method public final a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;D)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    if-nez p2, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    iget-object v0, p0, Lcom/instagram/api/b/a;->a:Lcom/fasterxml/jackson/a/h;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_11

    :goto_a
    iget-object v0, p0, Lcom/instagram/api/b/a;->b:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_11
    move-exception v0

    goto :goto_a
.end method
