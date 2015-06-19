.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "JdkDeserializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/StackTraceElement;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;
.registers 10
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_83
const-string v3, ""
const-string v2, ""
const-string v1, ""
const/4 v0, -0x1
:cond_f
:goto_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextValue()Lcom/fasterxml/jackson/a/r;
move-result-object v4
sget-object v5, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v4, v5, :cond_7d
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v5
const-string v6, "className"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_28
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_f
:cond_28
const-string v6, "fileName"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_35
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_f
:cond_35
const-string v6, "lineNumber"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_62
invoke-virtual {v4}, Lcom/fasterxml/jackson/a/r;->c()Z
move-result v0
if-eqz v0, :cond_48
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
goto :goto_f
:cond_48
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Non-numeric token ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") for property \'lineNumber\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_62
const-string v4, "methodName"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6f
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_f
:cond_6f
const-string v4, "nativeMethod"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_f
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p0, p1, p2, v4, v5}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_f
:cond_7d
new-instance v4, Ljava/lang/StackTraceElement;
invoke-direct {v4, v3, v2, v1, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
return-object v4
:cond_83
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/a/r;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method