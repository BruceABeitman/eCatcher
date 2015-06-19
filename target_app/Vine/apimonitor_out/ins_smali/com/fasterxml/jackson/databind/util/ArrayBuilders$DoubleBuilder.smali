.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
.super Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V
return-void
.end method
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;->_constructArray(I)[D
move-result-object v0
return-object v0
.end method
.method public final _constructArray(I)[D
.registers 3
new-array v0, p1, [D
return-object v0
.end method