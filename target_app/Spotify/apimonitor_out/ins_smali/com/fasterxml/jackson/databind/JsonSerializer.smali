.class public abstract Lcom/fasterxml/jackson/databind/JsonSerializer;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public handledType()Ljava/lang/Class;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public isEmpty(Ljava/lang/Object;)Z
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public isUnwrappingSerializer()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method
.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 9
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->handledType()Ljava/lang/Class;
move-result-object v0
if-nez v0, :cond_a
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
:cond_a
new-instance v1, Ljava/lang/UnsupportedOperationException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Type id handling not implemented for type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 2
return-object p0
.end method
.method public usesObjectId()Z
.registers 2
const/4 v0, 0x0
return v0
.end method