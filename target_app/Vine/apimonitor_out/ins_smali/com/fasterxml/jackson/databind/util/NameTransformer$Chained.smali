.class public Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;
.super Lcom/fasterxml/jackson/databind/util/NameTransformer;
.source "NameTransformer.java"
.field protected final _t1:Lcom/fasterxml/jackson/databind/util/NameTransformer;
.field protected final _t2:Lcom/fasterxml/jackson/databind/util/NameTransformer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/NameTransformer;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/NameTransformer;
return-void
.end method
.method public reverse(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/NameTransformer;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->reverse(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/NameTransformer;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->reverse(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_e
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[ChainedTransformer("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/NameTransformer;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/NameTransformer;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public transform(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t1:Lcom/fasterxml/jackson/databind/util/NameTransformer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;->_t2:Lcom/fasterxml/jackson/databind/util/NameTransformer;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method