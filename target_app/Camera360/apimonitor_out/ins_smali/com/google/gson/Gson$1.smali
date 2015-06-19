.class  Lcom/google/gson/Gson$1;
.super Ljava/lang/Object;
.source "Gson.java"
.implements Lcom/google/gson/JsonDeserializationContext;
.field final synthetic this$0:Lcom/google/gson/Gson;
.method constructor <init>(Lcom/google/gson/Gson;)V
.registers 2
iput-object p1, p0, Lcom/google/gson/Gson$1;->this$0:Lcom/google/gson/Gson;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/gson/Gson$1;->this$0:Lcom/google/gson/Gson;
invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method