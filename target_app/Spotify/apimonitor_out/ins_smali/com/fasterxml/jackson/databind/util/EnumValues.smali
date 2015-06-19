.class public final Lcom/fasterxml/jackson/databind/util/EnumValues;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final _values:Ljava/util/EnumMap;
.method private constructor <init>(Ljava/util/Map;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/EnumMap;
invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_values:Ljava/util/EnumMap;
return-void
.end method
.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumValues;
.registers 3
invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->constructFromName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumValues;
move-result-object v0
return-object v0
.end method
.method public static constructFromName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumValues;
.registers 9
invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Enum;
if-eqz v0, :cond_2c
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
array-length v3, v0
const/4 v1, 0x0
:goto_13
if-ge v1, v3, :cond_26
aget-object v4, v0, v1
invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-direct {v6, v5}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V
invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_26
new-instance v0, Lcom/fasterxml/jackson/databind/util/EnumValues;
invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/util/EnumValues;-><init>(Ljava/util/Map;)V
return-object v0
:cond_2c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not determine enum constants for Class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static constructFromToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumValues;
.registers 9
invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Enum;
if-eqz v0, :cond_2c
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
array-length v3, v0
const/4 v1, 0x0
:goto_13
if-ge v1, v3, :cond_26
aget-object v4, v0, v1
new-instance v5, Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V
invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_26
new-instance v0, Lcom/fasterxml/jackson/databind/util/EnumValues;
invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/util/EnumValues;-><init>(Ljava/util/Map;)V
return-object v0
:cond_2c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not determine enum constants for Class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final serializedValueFor(Ljava/lang/Enum;)Lcom/fasterxml/jackson/core/io/SerializedString;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumValues;->_values:Ljava/util/EnumMap;
invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/core/io/SerializedString;
return-object v0
.end method