.class  Lcom/glympse/android/lib/d;
.super Lcom/glympse/android/lib/k;
.source "AccountLogin.java"
.field public gQ:Ljava/lang/String;
.field public gR:J
.field public gS:J
.field public gT:J
.field public gU:J
.field public gV:J
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/d;->gQ:Ljava/lang/String;
iput-wide v1, p0, Lcom/glympse/android/lib/d;->gR:J
iput-wide v1, p0, Lcom/glympse/android/lib/d;->gS:J
iput-wide v1, p0, Lcom/glympse/android/lib/d;->gT:J
iput-wide v1, p0, Lcom/glympse/android/lib/d;->gU:J
iput-wide v1, p0, Lcom/glympse/android/lib/d;->gV:J
return-void
.end method
.method public endObject(I)Z
.registers 4
const/4 v1, 0x1
if-ne v1, p1, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/d;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_8
return v1
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 8
const/4 v4, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p2, v4}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/d;->hf:Ljava/lang/String;
:cond_11
:goto_11
return v4
:cond_12
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "access_token"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
invoke-virtual {p2, v4}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/d;->gQ:Ljava/lang/String;
goto :goto_11
:cond_23
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "expires_in"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
iput-wide v0, p0, Lcom/glympse/android/lib/d;->gR:J
goto :goto_11
:cond_37
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "max_ticket_duration"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_48
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/d;->gS:J
goto :goto_11
:cond_48
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "post_rate_period"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_59
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/d;->gT:J
goto :goto_11
:cond_59
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "max_name_length"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6a
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/d;->gU:J
goto :goto_11
:cond_6a
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7b
invoke-virtual {p2, v4}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/d;->hg:Ljava/lang/String;
goto :goto_11
:cond_7b
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8c
invoke-virtual {p2, v4}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/d;->hh:Ljava/lang/String;
goto :goto_11
:cond_8c
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9e
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/d;->_time:J
goto/16 :goto_11
:cond_9e
iget-object v0, p0, Lcom/glympse/android/lib/d;->he:Ljava/lang/String;
const-string v1, "account_created"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/d;->gV:J
goto/16 :goto_11
.end method