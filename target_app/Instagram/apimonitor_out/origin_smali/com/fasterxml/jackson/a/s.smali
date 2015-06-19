.class public abstract Lcom/fasterxml/jackson/a/s;
.super Ljava/lang/Object;
.source "ObjectCodec.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createArrayNode()Lcom/fasterxml/jackson/a/v;
.end method

.method public abstract createObjectNode()Lcom/fasterxml/jackson/a/v;
.end method

.method public getFactory()Lcom/fasterxml/jackson/a/e;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/s;->getJsonFactory()Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract getJsonFactory()Lcom/fasterxml/jackson/a/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readTree(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/a/v;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/a;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/a;",
            ")",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/a/f/b",
            "<*>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/l;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;
.end method

.method public abstract treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/a/v;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V
.end method
