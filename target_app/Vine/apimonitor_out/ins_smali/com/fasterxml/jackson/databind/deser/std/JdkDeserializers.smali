.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source "JdkDeserializers.java"
.field private static final _classNames:Ljava/util/HashSet;
.method static constructor <clinit>()V
.registers 5
const/4 v0, 0x0
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;
const/16 v1, 0xe
new-array v1, v1, [Ljava/lang/Class;
const-class v2, Ljava/util/UUID;
aput-object v2, v1, v0
const/4 v2, 0x1
const-class v3, Ljava/net/URL;
aput-object v3, v1, v2
const/4 v2, 0x2
const-class v3, Ljava/net/URI;
aput-object v3, v1, v2
const/4 v2, 0x3
const-class v3, Ljava/io/File;
aput-object v3, v1, v2
const/4 v2, 0x4
const-class v3, Ljava/util/Currency;
aput-object v3, v1, v2
const/4 v2, 0x5
const-class v3, Ljava/util/regex/Pattern;
aput-object v3, v1, v2
const/4 v2, 0x6
const-class v3, Ljava/util/Locale;
aput-object v3, v1, v2
const/4 v2, 0x7
const-class v3, Ljava/net/InetAddress;
aput-object v3, v1, v2
const/16 v2, 0x8
const-class v3, Ljava/net/InetSocketAddress;
aput-object v3, v1, v2
const/16 v2, 0x9
const-class v3, Ljava/nio/charset/Charset;
aput-object v3, v1, v2
const/16 v2, 0xa
const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;
aput-object v3, v1, v2
const/16 v2, 0xb
const-class v3, Ljava/lang/Class;
aput-object v3, v1, v2
const/16 v2, 0xc
const-class v3, Ljava/lang/StackTraceElement;
aput-object v3, v1, v2
const/16 v2, 0xd
const-class v3, Ljava/nio/ByteBuffer;
aput-object v3, v1, v2
array-length v2, v1
:goto_58
if-ge v0, v2, :cond_68
aget-object v3, v1, v0
sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_58
:cond_68
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
const-class v0, Ljava/net/URI;
if-ne p0, v0, :cond_11
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;
goto :goto_9
:cond_11
const-class v0, Ljava/net/URL;
if-ne p0, v0, :cond_18
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;
goto :goto_9
:cond_18
const-class v0, Ljava/io/File;
if-ne p0, v0, :cond_1f
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;
goto :goto_9
:cond_1f
const-class v0, Ljava/util/UUID;
if-ne p0, v0, :cond_26
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;
goto :goto_9
:cond_26
const-class v0, Ljava/util/Currency;
if-ne p0, v0, :cond_2d
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;
goto :goto_9
:cond_2d
const-class v0, Ljava/util/regex/Pattern;
if-ne p0, v0, :cond_34
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;
goto :goto_9
:cond_34
const-class v0, Ljava/util/Locale;
if-ne p0, v0, :cond_3b
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;
goto :goto_9
:cond_3b
const-class v0, Ljava/net/InetAddress;
if-ne p0, v0, :cond_42
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/InetAddressDeserializer;
goto :goto_9
:cond_42
const-class v0, Ljava/net/InetSocketAddress;
if-ne p0, v0, :cond_49
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/InetSocketAddressDeserializer;
goto :goto_9
:cond_49
const-class v0, Ljava/nio/charset/Charset;
if-ne p0, v0, :cond_53
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/CharsetDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/CharsetDeserializer;-><init>()V
goto :goto_9
:cond_53
const-class v0, Ljava/lang/Class;
if-ne p0, v0, :cond_5a
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;
goto :goto_9
:cond_5a
const-class v0, Ljava/lang/StackTraceElement;
if-ne p0, v0, :cond_61
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;
goto :goto_9
:cond_61
const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;
if-ne p0, v0, :cond_68
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;
goto :goto_9
:cond_68
const-class v0, Ljava/nio/ByteBuffer;
if-ne p0, v0, :cond_72
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;-><init>()V
goto :goto_9
:cond_72
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Internal error: can\'t find deserializer for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method