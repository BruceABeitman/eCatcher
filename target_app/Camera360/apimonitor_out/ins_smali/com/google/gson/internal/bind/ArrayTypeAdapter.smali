.class public final Lcom/google/gson/internal/bind/ArrayTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "ArrayTypeAdapter.java"
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;
.field private final componentType:Ljava/lang/Class;
.field private final componentTypeAdapter:Lcom/google/gson/TypeAdapter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;
invoke-direct {v0}, Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;-><init>()V
sput-object v0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;
return-void
.end method
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Class;)V
.registers 5
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
invoke-direct {v0, p1, p2, p3}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
iput-object v0, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/google/gson/TypeAdapter;
iput-object p3, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;
return-void
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 8
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v4
sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v4, v5, :cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
const/4 v0, 0x0
:cond_c
return-object v0
:cond_d
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V
:goto_15
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
move-result v4
if-eqz v4, :cond_25
iget-object v4, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-virtual {v4, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v2
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_15
:cond_25
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
iget-object v4, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v5
invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
const/4 v1, 0x0
:goto_33
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
if-ge v1, v4, :cond_c
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
invoke-static {v0, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_33
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 7
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
:goto_5
return-void
:cond_6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;
const/4 v0, 0x0
invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v1
:goto_e
if-ge v0, v1, :cond_1c
invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v2
iget-object v3, p0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-virtual {v3, p1, v2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_1c
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;
goto :goto_5
.end method