.class final Lcom/google/gson/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;
.source "TypeAdapters.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 5
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/lang/Enum;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_10
const-class v1, Ljava/lang/Enum;
if-ne v0, v1, :cond_12
:cond_10
const/4 v1, 0x0
:goto_11
return-object v1
:cond_12
invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z
move-result v1
if-nez v1, :cond_1c
invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v0
:cond_1c
new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
invoke-direct {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Ljava/lang/Class;)V
goto :goto_11
.end method