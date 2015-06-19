.class final Lcom/google/gson/internal/bind/TypeAdapters$27;
.super Ljava/lang/Object;
.source "TypeAdapters.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.field final synthetic val$type:Lcom/google/gson/reflect/TypeToken;
.field final synthetic val$typeAdapter:Lcom/google/gson/TypeAdapter;
.method constructor <init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)V
.registers 3
iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/google/gson/reflect/TypeToken;
iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/google/gson/TypeAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 4
iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/google/gson/reflect/TypeToken;
invoke-virtual {p2, v0}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/google/gson/TypeAdapter;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method