.class public final Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
.super Ljava/lang/Object;
.source "WritableObjectId.java"
.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.field public id:Ljava/lang/Object;
.field protected idWritten:Z
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
return-void
.end method
.method public generateId(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->generateId(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;
return-object v0
.end method
.method public writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
.registers 6
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteObjectId()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectId(Ljava/lang/Object;)V
:cond_12
:goto_12
return-void
:cond_13
iget-object v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/fasterxml/jackson/core/io/SerializedString;
if-eqz v0, :cond_12
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
iget-object v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_12
.end method
.method public writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;
if-eqz v0, :cond_25
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z
if-nez v0, :cond_c
iget-boolean v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z
if-eqz v0, :cond_25
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteObjectId()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectRef(Ljava/lang/Object;)V
:goto_1b
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
iget-object v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_1b
:cond_25
const/4 v0, 0x0
goto :goto_1c
.end method