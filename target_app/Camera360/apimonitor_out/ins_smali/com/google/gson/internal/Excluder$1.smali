.class  Lcom/google/gson/internal/Excluder$1;
.super Lcom/google/gson/TypeAdapter;
.source "Excluder.java"
.field private delegate:Lcom/google/gson/TypeAdapter;
.field final synthetic this$0:Lcom/google/gson/internal/Excluder;
.field final synthetic val$gson:Lcom/google/gson/Gson;
.field final synthetic val$skipDeserialize:Z
.field final synthetic val$skipSerialize:Z
.field final synthetic val$type:Lcom/google/gson/reflect/TypeToken;
.method constructor <init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V
.registers 6
iput-object p1, p0, Lcom/google/gson/internal/Excluder$1;->this$0:Lcom/google/gson/internal/Excluder;
iput-boolean p2, p0, Lcom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z
iput-boolean p3, p0, Lcom/google/gson/internal/Excluder$1;->val$skipSerialize:Z
iput-object p4, p0, Lcom/google/gson/internal/Excluder$1;->val$gson:Lcom/google/gson/Gson;
iput-object p5, p0, Lcom/google/gson/internal/Excluder$1;->val$type:Lcom/google/gson/reflect/TypeToken;
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method private delegate()Lcom/google/gson/TypeAdapter;
.registers 5
iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->delegate:Lcom/google/gson/TypeAdapter;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->val$gson:Lcom/google/gson/Gson;
iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->this$0:Lcom/google/gson/internal/Excluder;
iget-object v3, p0, Lcom/google/gson/internal/Excluder$1;->val$type:Lcom/google/gson/reflect/TypeToken;
invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
move-result-object v0
iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->delegate:Lcom/google/gson/TypeAdapter;
goto :goto_4
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z
if-eqz v0, :cond_9
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V
const/4 v0, 0x0
:goto_8
return-object v0
:cond_9
invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->delegate()Lcom/google/gson/TypeAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v0
goto :goto_8
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 4
iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->val$skipSerialize:Z
if-eqz v0, :cond_8
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
:goto_7
return-void
:cond_8
invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->delegate()Lcom/google/gson/TypeAdapter;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
goto :goto_7
.end method