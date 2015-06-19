.class final Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
.super Ljava/lang/Object;
.source "PrimitiveArrayBuilder.java"
.field final _data:Ljava/lang/Object;
.field final _dataLength:I
.field  _next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
.method public constructor <init>(Ljava/lang/Object;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;
iput p2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I
return-void
.end method
.method public final copyData(Ljava/lang/Object;I)I
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I
invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I
add-int/2addr v0, p2
return v0
.end method
.method public final getData()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;
return-object v0
.end method
.method public final linkNext(Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
if-eqz v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
return-void
.end method
.method public final next()Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
return-object v0
.end method