.class public final Lcom/fasterxml/jackson/databind/util/LinkedNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final _next:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field final _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public final next()Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->_next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-object v0
.end method

.method public final value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->_value:Ljava/lang/Object;

    return-object v0
.end method
