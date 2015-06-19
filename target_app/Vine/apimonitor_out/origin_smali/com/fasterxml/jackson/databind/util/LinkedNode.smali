.class public final Lcom/fasterxml/jackson/databind/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


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


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->_value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->_next:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-void
.end method

.method public static contains(Lcom/fasterxml/jackson/databind/util/LinkedNode;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<TST;>;TST;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object p0

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public next()Lcom/fasterxml/jackson/databind/util/LinkedNode;
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

.method public value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LinkedNode;->_value:Ljava/lang/Object;

    return-object v0
.end method
