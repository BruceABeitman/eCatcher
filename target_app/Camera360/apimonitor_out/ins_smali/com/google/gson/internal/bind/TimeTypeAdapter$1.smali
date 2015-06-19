.class final Lcom/google/gson/internal/bind/TimeTypeAdapter$1;
.super Ljava/lang/Object;
.source "TimeTypeAdapter.java"
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
const-class v1, Ljava/sql/Time;
if-ne v0, v1, :cond_e
new-instance v0, Lcom/google/gson/internal/bind/TimeTypeAdapter;
invoke-direct {v0}, Lcom/google/gson/internal/bind/TimeTypeAdapter;-><init>()V
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method