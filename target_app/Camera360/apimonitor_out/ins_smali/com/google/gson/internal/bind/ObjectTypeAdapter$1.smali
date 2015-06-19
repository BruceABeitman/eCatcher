.class final Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 6
const/4 v1, 0x0
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v0
const-class v2, Ljava/lang/Object;
if-ne v0, v2, :cond_f
new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;
invoke-direct {v0, p1, v1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;)V
:goto_e
return-object v0
:cond_f
move-object v0, v1
goto :goto_e
.end method