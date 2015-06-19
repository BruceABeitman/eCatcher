.class public final Lcom/google/gson/internal/bind/JsonTreeWriter;
.super Lcom/google/gson/stream/JsonWriter;
.source "JsonTreeWriter.java"
.field private static final SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;
.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;
.field private pendingName:Ljava/lang/String;
.field private product:Lcom/google/gson/JsonElement;
.field private final stack:Ljava/util/List;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/gson/internal/bind/JsonTreeWriter$1;
invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonTreeWriter$1;-><init>()V
sput-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;
new-instance v0, Lcom/google/gson/JsonPrimitive;
const-string/jumbo v1, "closed"
invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;
return-void
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;
invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;
iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;
return-void
.end method
.method private peek()Lcom/google/gson/JsonElement;
.registers 3
iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/gson/JsonElement;
return-object v0
.end method
.method private put(Lcom/google/gson/JsonElement;)V
.registers 5
iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;
if-eqz v2, :cond_1f
invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z
move-result v2
if-eqz v2, :cond_10
invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->getSerializeNulls()Z
move-result v2
if-eqz v2, :cond_1b
:cond_10
invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;
move-result-object v1
check-cast v1, Lcom/google/gson/JsonObject;
iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;
invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
:cond_1b
const/4 v2, 0x0
iput-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;
:goto_1e
return-void
:cond_1f
iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_2a
iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;
goto :goto_1e
:cond_2a
invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;
move-result-object v0
instance-of v2, v0, Lcom/google/gson/JsonArray;
if-eqz v2, :cond_38
check-cast v0, Lcom/google/gson/JsonArray;
invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V
goto :goto_1e
:cond_38
new-instance v2, Ljava/lang/IllegalStateException;
invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V
throw v2
.end method
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
.registers 3
new-instance v0, Lcom/google/gson/JsonArray;
invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V
invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public beginObject()Lcom/google/gson/stream/JsonWriter;
.registers 3
new-instance v0, Lcom/google/gson/JsonObject;
invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V
invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public close()V
.registers 3
iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_11
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Incomplete document"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
sget-object v1, Lcom/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public endArray()Lcom/google/gson/stream/JsonWriter;
.registers 4
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_c
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;
if-eqz v1, :cond_12
:cond_c
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
:cond_12
invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;
move-result-object v0
instance-of v1, v0, Lcom/google/gson/JsonArray;
if-eqz v1, :cond_28
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
return-object p0
:cond_28
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
.end method
.method public endObject()Lcom/google/gson/stream/JsonWriter;
.registers 4
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_c
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;
if-eqz v1, :cond_12
:cond_c
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
:cond_12
invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;
move-result-object v0
instance-of v1, v0, Lcom/google/gson/JsonObject;
if-eqz v1, :cond_28
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
return-object p0
:cond_28
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
.end method
.method public flush()V
.registers 1
return-void
.end method
.method public get()Lcom/google/gson/JsonElement;
.registers 4
iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_24
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Expected one JSON element but was "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;
return-object v0
.end method
.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.registers 4
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_c
iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;
if-eqz v1, :cond_12
:cond_c
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
:cond_12
invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;
move-result-object v0
instance-of v1, v0, Lcom/google/gson/JsonObject;
if-eqz v1, :cond_1d
iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;
return-object p0
:cond_1d
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V
throw v1
.end method
.method public nullValue()Lcom/google/gson/stream/JsonWriter;
.registers 2
sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;
invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
return-object p0
.end method
.method public value(D)Lcom/google/gson/stream/JsonWriter;
.registers 6
invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->isLenient()Z
move-result v0
if-nez v0, :cond_2c
invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z
move-result v0
if-nez v0, :cond_12
invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z
move-result v0
if-eqz v0, :cond_2c
:cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "JSON forbids NaN and infinities: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
new-instance v0, Lcom/google/gson/JsonPrimitive;
invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V
invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
return-object p0
.end method
.method public value(J)Lcom/google/gson/stream/JsonWriter;
.registers 5
new-instance v0, Lcom/google/gson/JsonPrimitive;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V
invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
return-object p0
.end method
.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
.registers 7
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
move-result-object p0
:goto_6
return-object p0
:cond_7
invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->isLenient()Z
move-result v2
if-nez v2, :cond_37
invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z
move-result v2
if-nez v2, :cond_1d
invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z
move-result v2
if-eqz v2, :cond_37
:cond_1d
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "JSON forbids NaN and infinities: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_37
new-instance v2, Lcom/google/gson/JsonPrimitive;
invoke-direct {v2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V
invoke-direct {p0, v2}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
goto :goto_6
.end method
.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.registers 3
if-nez p1, :cond_7
invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
move-result-object p0
:goto_6
return-object p0
:cond_7
new-instance v0, Lcom/google/gson/JsonPrimitive;
invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
goto :goto_6
.end method
.method public value(Z)Lcom/google/gson/stream/JsonWriter;
.registers 4
new-instance v0, Lcom/google/gson/JsonPrimitive;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V
invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V
return-object p0
.end method