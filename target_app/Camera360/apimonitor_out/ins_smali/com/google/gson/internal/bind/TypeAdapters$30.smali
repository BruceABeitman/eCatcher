.class final Lcom/google/gson/internal/bind/TypeAdapters$30;
.super Ljava/lang/Object;
.source "TypeAdapters.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.field final synthetic val$base:Ljava/lang/Class;
.field final synthetic val$sub:Ljava/lang/Class;
.field final synthetic val$typeAdapter:Lcom/google/gson/TypeAdapter;
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V
.registers 4
iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$base:Ljava/lang/Class;
iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$sub:Ljava/lang/Class;
iput-object p3, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$typeAdapter:Lcom/google/gson/TypeAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 5
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v0
iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$base:Ljava/lang/Class;
if-eq v0, v1, :cond_c
iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$sub:Ljava/lang/Class;
if-ne v0, v1, :cond_f
:cond_c
iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$typeAdapter:Lcom/google/gson/TypeAdapter;
:goto_e
return-object v1
:cond_f
const/4 v1, 0x0
goto :goto_e
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "Factory[type="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$base:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "+"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$sub:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ",adapter="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$30;->val$typeAdapter:Lcom/google/gson/TypeAdapter;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method