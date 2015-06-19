.class  Lcom/glympse/android/lib/kc;
.super Lcom/glympse/android/lib/k;
.source "UserView.java"
.field public nP:Ljava/lang/String;
.field public tz:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
return-void
.end method
.method public endObject(I)Z
.registers 3
packed-switch p1, :pswitch_data_c
:goto_3
const/4 v0, 0x1
return v0
:pswitch_5
iget-object v0, p0, Lcom/glympse/android/lib/kc;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
goto :goto_3
nop
:pswitch_data_c
.packed-switch 0x1
:pswitch_5
.end packed-switch
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
packed-switch p1, :pswitch_data_6c
:goto_5
:cond_5
return v2
:pswitch_6
iget-object v0, p0, Lcom/glympse/android/lib/kc;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kc;->hf:Ljava/lang/String;
goto :goto_5
:pswitch_17
iget-object v0, p0, Lcom/glympse/android/lib/kc;->he:Ljava/lang/String;
const-string v1, "name"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kc;->nP:Ljava/lang/String;
goto :goto_5
:cond_28
iget-object v0, p0, Lcom/glympse/android/lib/kc;->he:Ljava/lang/String;
const-string v1, "avatar"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kc;->tz:Ljava/lang/String;
goto :goto_5
:cond_39
iget-object v0, p0, Lcom/glympse/android/lib/kc;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4a
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/kc;->_time:J
goto :goto_5
:cond_4a
iget-object v0, p0, Lcom/glympse/android/lib/kc;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5b
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kc;->hg:Ljava/lang/String;
goto :goto_5
:cond_5b
iget-object v0, p0, Lcom/glympse/android/lib/kc;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kc;->hh:Ljava/lang/String;
goto :goto_5
:pswitch_data_6c
.packed-switch 0x1
:pswitch_6
:pswitch_17
.end packed-switch
.end method