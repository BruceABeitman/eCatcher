.class final Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 8
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
move-result-object v2
instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;
if-nez v3, :cond_17
instance-of v3, v2, Ljava/lang/Class;
if-eqz v3, :cond_15
move-object v3, v2
check-cast v3, Ljava/lang/Class;
invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z
move-result v3
if-nez v3, :cond_17
:cond_15
const/4 v3, 0x0
:goto_16
return-object v3
:cond_17
invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v0
invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
move-result-object v3
invoke-virtual {p1, v3}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
move-result-object v1
new-instance v3, Lcom/google/gson/internal/bind/ArrayTypeAdapter;
invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v4
invoke-direct {v3, p1, v1, v4}, Lcom/google/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Class;)V
goto :goto_16
.end method