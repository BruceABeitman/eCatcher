.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
.super Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V
return-void
.end method
.method public final bridge synthetic _constructArray(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;->_constructArray(I)[S
move-result-object v0
return-object v0
.end method
.method public final _constructArray(I)[S
.registers 3
new-array v0, p1, [S
return-object v0
.end method