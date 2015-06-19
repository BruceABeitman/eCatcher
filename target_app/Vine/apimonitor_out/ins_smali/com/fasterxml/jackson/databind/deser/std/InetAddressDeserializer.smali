.class  Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "InetAddressDeserializer.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/net/InetAddress;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/InetAddress;
move-result-object v0
return-object v0
.end method
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/InetAddress;
.registers 4
invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
move-result-object v0
return-object v0
.end method