.class public Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;
.super Ljava/lang/Object;
.source "StdArraySerializers.java"
.field protected static final _arraySerializers:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [Z
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$BooleanArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$BooleanArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [B
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ByteArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [C
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [S
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$ShortArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [I
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [J
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$LongArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$LongArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [F
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
const-class v1, [D
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$DoubleArraySerializer;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static findStandardImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 3
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->_arraySerializers:Ljava/util/HashMap;
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
return-object v0
.end method