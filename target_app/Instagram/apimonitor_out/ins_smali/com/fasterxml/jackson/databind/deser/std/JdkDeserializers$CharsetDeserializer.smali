.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "JdkDeserializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/nio/charset/Charset;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/nio/charset/Charset;
move-result-object v0
return-object v0
.end method
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/nio/charset/Charset;
.registers 4
invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
return-object v0
.end method