.class  Lcom/glympse/android/lib/is;
.super Lcom/glympse/android/lib/k;
.source "TicketUpdate.java"
.field public im:J
.field public sK:J
.method public constructor <init>()V
.registers 3
const-wide/16 v0, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
iput-wide v0, p0, Lcom/glympse/android/lib/is;->im:J
iput-wide v0, p0, Lcom/glympse/android/lib/is;->sK:J
return-void
.end method
.method public endObject(I)Z
.registers 4
const/4 v1, 0x1
if-ne v1, p1, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/is;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_8
return v1
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
const/4 v2, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/is;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/is;->hf:Ljava/lang/String;
:cond_11
:goto_11
return v2
:cond_12
iget-object v0, p0, Lcom/glympse/android/lib/is;->he:Ljava/lang/String;
const-string v1, "start_time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/is;->im:J
goto :goto_11
:cond_23
iget-object v0, p0, Lcom/glympse/android/lib/is;->he:Ljava/lang/String;
const-string v1, "end_time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/is;->sK:J
goto :goto_11
:cond_34
iget-object v0, p0, Lcom/glympse/android/lib/is;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/is;->_time:J
goto :goto_11
:cond_45
iget-object v0, p0, Lcom/glympse/android/lib/is;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_56
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/is;->hg:Ljava/lang/String;
goto :goto_11
:cond_56
iget-object v0, p0, Lcom/glympse/android/lib/is;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/is;->hh:Ljava/lang/String;
goto :goto_11
.end method