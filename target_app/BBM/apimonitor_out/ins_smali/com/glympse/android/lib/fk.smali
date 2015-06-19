.class public Lcom/glympse/android/lib/fk;
.super Lcom/glympse/android/lib/k;
.source "LinkAccount.java"
.field public pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/fk;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
return-void
.end method
.method public endObject(I)Z
.registers 4
const/4 v1, 0x1
if-ne v1, p1, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/fk;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_8
return v1
.end method
.method public bridge synthetic endPair(I)Z
.registers 3
invoke-super {p0, p1}, Lcom/glympse/android/lib/k;->endPair(I)Z
move-result v0
return v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
const/4 v2, 0x1
packed-switch p1, :pswitch_data_4a
:goto_4
:cond_4
return v2
:pswitch_5
iget-object v0, p0, Lcom/glympse/android/lib/fk;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/fk;->hf:Ljava/lang/String;
goto :goto_4
:pswitch_16
iget-object v0, p0, Lcom/glympse/android/lib/fk;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/fk;->_time:J
goto :goto_4
:cond_27
iget-object v0, p0, Lcom/glympse/android/lib/fk;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;
goto :goto_4
:cond_38
iget-object v0, p0, Lcom/glympse/android/lib/fk;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/fk;->hh:Ljava/lang/String;
goto :goto_4
nop
:pswitch_data_4a
.packed-switch 0x1
:pswitch_5
:pswitch_16
.end packed-switch
.end method
.method public startObject(I)Z
.registers 6
const/4 v0, 0x3
if-ne v0, p1, :cond_29
iget-object v0, p0, Lcom/glympse/android/lib/fk;->he:Ljava/lang/String;
const-string v1, "account"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
new-instance v0, Lcom/glympse/android/lib/fl;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/glympse/android/lib/fl;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/fk;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/fk;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/fk;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v1, Lcom/glympse/android/lib/fm;
iget-object v2, p0, Lcom/glympse/android/lib/fk;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iget-object v3, p0, Lcom/glympse/android/lib/fk;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;
invoke-direct {v1, v2, p1, v3}, Lcom/glympse/android/lib/fm;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;ILcom/glympse/android/lib/GLinkedAccountPrivate;)V
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
:cond_29
const/4 v0, 0x1
return v0
.end method
.method public bridge synthetic startPair(ILjava/lang/String;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/glympse/android/lib/k;->startPair(ILjava/lang/String;)Z
move-result v0
return v0
.end method