.class  Lorg/apache/log4j/i/ae;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Map;
.field private final a:Ljava/util/Map;
.method public constructor <init>(Ljava/util/Map;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
return-void
.end method
.method public clear()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public containsKey(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public containsValue(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public entrySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
return v0
.end method
.method public keySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public putAll(Ljava/util/Map;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
return v0
.end method
.method public values()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/i/ae;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method