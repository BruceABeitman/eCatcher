.class public Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;
.super Ljava/lang/Object;
.source "StdJdkSerializers.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static all()Ljava/util/Collection;
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
const-class v2, Ljava/net/URL;
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v2, Ljava/net/URI;
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v2, Ljava/util/Currency;
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v2, Ljava/util/UUID;
new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;
invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;-><init>()V
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v2, Ljava/util/regex/Pattern;
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v2, Ljava/util/Locale;
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v2, Ljava/util/Locale;
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v1, Ljava/util/concurrent/atomic/AtomicReference;
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicReferenceSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicBooleanSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v1, Ljava/util/concurrent/atomic/AtomicLong;
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicLongSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v1, Ljava/io/File;
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/FileSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v1, Ljava/lang/Class;
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/ClassSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
const-class v2, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method