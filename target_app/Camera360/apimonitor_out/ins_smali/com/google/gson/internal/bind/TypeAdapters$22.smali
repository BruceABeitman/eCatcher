.class final Lcom/google/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;
.source "TypeAdapters.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 6
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v1
const-class v2, Ljava/sql/Timestamp;
if-eq v1, v2, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
const-class v1, Ljava/util/Date;
invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;
move-result-object v0
new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$22$1;
invoke-direct {v1, p0, v0}, Lcom/google/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/google/gson/internal/bind/TypeAdapters$22;Lcom/google/gson/TypeAdapter;)V
goto :goto_9
.end method