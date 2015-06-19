.class public Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "ClassDeserializer.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Class;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Class;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_21
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
:try_start_10
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findClass(Ljava/lang/String;)Ljava/lang/Class;
:try_end_13
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_15
move-result-object v0
return-object v0
:catch_15
move-exception v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->_valueClass:Ljava/lang/Class;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_21
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/a/r;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Class;
move-result-object v0
return-object v0
.end method