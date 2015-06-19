.class public final Lcom/fasterxml/jackson/databind/type/CollectionType;
.super Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.source "CollectionType.java"
.field private static final serialVersionUID:J = -0x6cbb315ebf8435f0L
.method private constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-void
.end method
.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;
.registers 8
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
const/4 v5, 0x0
move-object v1, p0
move-object v2, p1
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method protected final _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
move-object v1, p1
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method public final narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
move-object p0, v0
goto :goto_8
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[collection type; class "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", contains "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
move-object p0, v0
goto :goto_8
.end method
.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method public final bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method public final bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionType;
.registers 7
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
if-eqz v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;
const/4 v5, 0x1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
move-object p0, v0
goto :goto_4
.end method
.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
move-object v4, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
return-object v0
.end method
.method public final withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method