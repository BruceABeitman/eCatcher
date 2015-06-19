.class final Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V
return-void
.end method
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
.registers 6
instance-of v1, p1, Lcom/google/gson/internal/bind/JsonTreeReader;
if-eqz v1, :cond_a
check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;
invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V
:goto_9
return-void
:cond_a
#getter for: Lcom/google/gson/stream/JsonReader;->peeked:I
invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$000(Lcom/google/gson/stream/JsonReader;)I
move-result v0
if-nez v0, :cond_14
#calls: Lcom/google/gson/stream/JsonReader;->doPeek()I
invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$100(Lcom/google/gson/stream/JsonReader;)I
move-result v0
:cond_14
const/16 v1, 0xd
if-ne v0, v1, :cond_1e
const/16 v1, 0x9
#setter for: Lcom/google/gson/stream/JsonReader;->peeked:I
invoke-static {p1, v1}, Lcom/google/gson/stream/JsonReader;->access$002(Lcom/google/gson/stream/JsonReader;I)I
goto :goto_9
:cond_1e
const/16 v1, 0xc
if-ne v0, v1, :cond_28
const/16 v1, 0x8
#setter for: Lcom/google/gson/stream/JsonReader;->peeked:I
invoke-static {p1, v1}, Lcom/google/gson/stream/JsonReader;->access$002(Lcom/google/gson/stream/JsonReader;I)I
goto :goto_9
:cond_28
const/16 v1, 0xe
if-ne v0, v1, :cond_32
const/16 v1, 0xa
#setter for: Lcom/google/gson/stream/JsonReader;->peeked:I
invoke-static {p1, v1}, Lcom/google/gson/stream/JsonReader;->access$002(Lcom/google/gson/stream/JsonReader;I)I
goto :goto_9
:cond_32
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Expected a name but was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " at line "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
#calls: Lcom/google/gson/stream/JsonReader;->getLineNumber()I
invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$200(Lcom/google/gson/stream/JsonReader;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
#calls: Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$300(Lcom/google/gson/stream/JsonReader;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method