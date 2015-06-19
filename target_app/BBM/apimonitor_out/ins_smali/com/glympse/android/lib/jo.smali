.class  Lcom/glympse/android/lib/jo;
.super Lcom/glympse/android/lib/k;
.source "UserGroups.java"
.field public mH:Lcom/glympse/android/hal/GVector;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/jo;->mH:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public endObject(I)Z
.registers 4
const/4 v1, 0x1
if-ne p1, v1, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/jo;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_8
return v1
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
const/4 v2, 0x1
packed-switch p1, :pswitch_data_54
:goto_4
:cond_4
return v2
:pswitch_5
iget-object v0, p0, Lcom/glympse/android/lib/jo;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jo;->hf:Ljava/lang/String;
goto :goto_4
:pswitch_16
iget-object v0, p0, Lcom/glympse/android/lib/jo;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/jo;->_time:J
goto :goto_4
:cond_27
iget-object v0, p0, Lcom/glympse/android/lib/jo;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jo;->hg:Ljava/lang/String;
goto :goto_4
:cond_38
iget-object v0, p0, Lcom/glympse/android/lib/jo;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jo;->hh:Ljava/lang/String;
goto :goto_4
:pswitch_49
iget-object v0, p0, Lcom/glympse/android/lib/jo;->mH:Lcom/glympse/android/hal/GVector;
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_4
nop
:pswitch_data_54
.packed-switch 0x1
:pswitch_5
:pswitch_16
:pswitch_49
.end packed-switch
.end method