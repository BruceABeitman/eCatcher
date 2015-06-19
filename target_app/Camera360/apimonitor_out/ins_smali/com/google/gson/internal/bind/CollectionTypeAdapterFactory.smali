.class public final Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;
return-void
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 10
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
move-result-object v5
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v3
const-class v6, Ljava/util/Collection;
invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-nez v6, :cond_12
const/4 v4, 0x0
:goto_11
return-object v4
:cond_12
invoke-static {v5, v3}, Lcom/google/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object v1
invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
move-result-object v6
invoke-virtual {p1, v6}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
move-result-object v2
iget-object v6, p0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;
invoke-virtual {v6, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
move-result-object v0
new-instance v4, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
invoke-direct {v4, p1, v1, v2, v0}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
goto :goto_11
.end method