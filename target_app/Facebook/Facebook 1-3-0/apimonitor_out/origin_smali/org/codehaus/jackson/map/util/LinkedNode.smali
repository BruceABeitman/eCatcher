.class public final Lorg/codehaus/jackson/map/util/LinkedNode;
.super Ljava/lang/Object;


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
.field final _next:Lorg/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LinkedNode",
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
.method public constructor <init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/util/LinkedNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_value:Ljava/lang/Object;

    iput-object p2, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_next:Lorg/codehaus/jackson/map/util/LinkedNode;

    return-void
.end method

.method public static contains(Lorg/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<TST;>;TST;)Z"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LinkedNode;->next()Lorg/codehaus/jackson/map/util/LinkedNode;

    move-result-object v0

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public next()Lorg/codehaus/jackson/map/util/LinkedNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_next:Lorg/codehaus/jackson/map/util/LinkedNode;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/LinkedNode;->_value:Ljava/lang/Object;

    return-object v0
.end method
