.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "CoreXMLDeserializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljavax/xml/namespace/QName;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljavax/xml/namespace/QName;
move-result-object v0
return-object v0
.end method
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljavax/xml/namespace/QName;
.registers 4
invoke-static {p1}, Ljavax/xml/namespace/QName;->valueOf(Ljava/lang/String;)Ljavax/xml/namespace/QName;
move-result-object v0
return-object v0
.end method