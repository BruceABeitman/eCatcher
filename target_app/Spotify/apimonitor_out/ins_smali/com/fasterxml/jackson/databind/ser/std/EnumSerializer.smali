.class public Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.field protected final _serializeAsIndex:Ljava/lang/Boolean;
.field protected final _values:Lcom/fasterxml/jackson/databind/util/EnumValues;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/EnumValues;Ljava/lang/Boolean;)V
.registers 5
const-class v0, Ljava/lang/Enum;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;Z)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_values:Lcom/fasterxml/jackson/databind/util/EnumValues;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_serializeAsIndex:Ljava/lang/Boolean;
return-void
.end method
.method protected static _isShapeWrittenUsingIndex(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;Z)Ljava/lang/Boolean;
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_7
move-object v1, v0
:goto_4
if-nez v1, :cond_c
:goto_6
:cond_6
return-object v0
:cond_7
invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v1
goto :goto_4
:cond_c
sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-eq v1, v2, :cond_6
sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->SCALAR:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-eq v1, v2, :cond_6
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-ne v1, v0, :cond_1b
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_6
:cond_1b
invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->isNumeric()Z
move-result v0
if-eqz v0, :cond_24
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_6
:cond_24
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "Unsupported serialization shape ("
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") for Enum "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", not supported as "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
if-eqz p2, :cond_5b
const-string v0, "class"
:goto_49
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " annotation"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_5b
const-string v0, "property"
goto :goto_49
.end method
.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/EnumValues;->constructFromToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumValues;
move-result-object v0
:goto_10
const/4 v1, 0x1
invoke-static {p0, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_isShapeWrittenUsingIndex(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;Z)Ljava/lang/Boolean;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumValues;Ljava/lang/Boolean;)V
return-object v2
:cond_1b
invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/EnumValues;->constructFromName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumValues;
move-result-object v0
goto :goto_10
.end method
.method protected final _serializeAsIndex(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_serializeAsIndex:Ljava/lang/Boolean;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_serializeAsIndex:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
:goto_a
return v0
:cond_b
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
goto :goto_a
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
if-eqz p2, :cond_29
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v0
if-eqz v0, :cond_29
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_isShapeWrittenUsingIndex(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;Z)Ljava/lang/Boolean;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_serializeAsIndex:Ljava/lang/Boolean;
if-eq v1, v0, :cond_29
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_values:Lcom/fasterxml/jackson/databind/util/EnumValues;
invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumValues;Ljava/lang/Boolean;)V
move-object p0, v0
:cond_29
return-object p0
.end method
.method public getEnumValues()Lcom/fasterxml/jackson/databind/util/EnumValues;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_values:Lcom/fasterxml/jackson/databind/util/EnumValues;
return-object v0
.end method
.method public final serialize(Ljava/lang/Enum;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_serializeAsIndex(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->_values:Lcom/fasterxml/jackson/databind/util/EnumValues;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/fasterxml/jackson/core/io/SerializedString;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
goto :goto_d
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Enum;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->serialize(Ljava/lang/Enum;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method