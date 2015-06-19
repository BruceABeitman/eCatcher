.class  Lcom/glympse/android/lib/el;
.super Lcom/glympse/android/lib/k;
.source "InviteCreate.java"
.field public cb:I
.field public kq:Ljava/lang/String;
.field public mi:Ljava/lang/String;
.field public nX:J
.field public oa:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/el;->nX:J
const/4 v0, 0x4
iput v0, p0, Lcom/glympse/android/lib/el;->cb:I
return-void
.end method
.method public endObject(I)Z
.registers 4
const/4 v1, 0x1
if-ne v1, p1, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/el;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_8
return v1
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
const/4 v2, 0x1
packed-switch p1, :pswitch_data_a8
:goto_4
:cond_4
return v2
:pswitch_5
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/el;->hf:Ljava/lang/String;
goto :goto_4
:pswitch_16
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "id"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/el;->mi:Ljava/lang/String;
goto :goto_4
:cond_2b
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "status"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/ej;->u(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/glympse/android/lib/el;->cb:I
goto :goto_4
:cond_40
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "url"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/el;->kq:Ljava/lang/String;
goto :goto_4
:cond_51
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "text"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_62
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/el;->oa:Ljava/lang/String;
goto :goto_4
:cond_62
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "created"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_73
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/el;->nX:J
goto :goto_4
:cond_73
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/el;->_time:J
goto :goto_4
:cond_84
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_96
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/el;->hg:Ljava/lang/String;
goto/16 :goto_4
:cond_96
iget-object v0, p0, Lcom/glympse/android/lib/el;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/el;->hh:Ljava/lang/String;
goto/16 :goto_4
:pswitch_data_a8
.packed-switch 0x1
:pswitch_5
:pswitch_16
.end packed-switch
.end method