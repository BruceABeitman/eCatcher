.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
.super Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V
return-void
.end method
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;->_constructArray(I)[J
move-result-object v0
return-object v0
.end method
.method public final _constructArray(I)[J
.registers 3
new-array v0, p1, [J
return-object v0
.end method