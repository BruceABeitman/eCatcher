.class final Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"
.field final _data:[Ljava/lang/Object;
.field  _next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
.method public constructor <init>([Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;
return-void
.end method
.method public final getData()[Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;
return-object v0
.end method
.method public final linkNext(Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
if-eqz v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
return-void
.end method
.method public final next()Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
return-object v0
.end method