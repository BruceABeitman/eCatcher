.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
.super Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic _constructArray(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->_constructArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final _constructArray(I)[B
    .registers 3

    new-array v0, p1, [B

    return-object v0
.end method
