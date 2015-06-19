.class public Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "InetSocketAddressDeserializer.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/net/InetSocketAddress;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/InetSocketAddress;
move-result-object v0
return-object v0
.end method
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/InetSocketAddress;
.registers 9
const/16 v5, 0x3a
const/4 v1, 0x0
const/4 v4, -0x1
const-string v0, "["
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3d
const/16 v0, 0x5d
invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I
move-result v3
if-ne v3, v4, :cond_1e
new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;
const-string v1, "Bracketed IPv6 address must contain closing bracket"
const-class v2, Ljava/net/InetSocketAddress;
invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
throw v0
:cond_1e
invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I
move-result v0
if-le v0, v4, :cond_3b
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
:goto_2e
new-instance v2, Ljava/net/InetSocketAddress;
add-int/lit8 v3, v3, 0x1
invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
move-object v0, v2
:goto_3a
return-object v0
:cond_3b
move v0, v1
goto :goto_2e
:cond_3d
invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-eq v2, v4, :cond_5f
add-int/lit8 v0, v2, 0x1
invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I
move-result v0
if-ne v0, v4, :cond_5f
add-int/lit8 v0, v2, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
new-instance v0, Ljava/net/InetSocketAddress;
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
goto :goto_3a
:cond_5f
new-instance v0, Ljava/net/InetSocketAddress;
invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
goto :goto_3a
.end method