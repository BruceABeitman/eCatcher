.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V
return-void
.end method
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;->_constructArray(I)[S
move-result-object v0
return-object v0
.end method
.method public final _constructArray(I)[S
.registers 3
new-array v0, p1, [S
return-object v0
.end method