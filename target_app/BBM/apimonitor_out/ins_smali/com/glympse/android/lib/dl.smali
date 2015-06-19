.class  Lcom/glympse/android/lib/dl;
.super Lcom/glympse/android/lib/k;
.source "GroupParser.java"
.field public _name:Ljava/lang/String;
.field private mN:Lcom/glympse/android/lib/GGroupMemberPrivate;
.field private mQ:I
.field public mR:J
.field public mh:Z
.field public mk:Lcom/glympse/android/hal/GVector;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/glympse/android/lib/dl;->mQ:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/dl;->mR:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/dl;->mh:Z
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dl;->mk:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public constructor <init>(I)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
iput p1, p0, Lcom/glympse/android/lib/dl;->mQ:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/dl;->mR:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/dl;->mh:Z
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dl;->mk:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public endObject(I)Z
.registers 4
iget v0, p0, Lcom/glympse/android/lib/dl;->mQ:I
if-ne p1, v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/lib/dl;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_9
:goto_9
const/4 v0, 0x1
return v0
:cond_b
const/4 v0, 0x4
if-ne v0, p1, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/dl;->mN:Lcom/glympse/android/lib/GGroupMemberPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUserId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/dl;->mk:Lcom/glympse/android/hal/GVector;
iget-object v1, p0, Lcom/glympse/android/lib/dl;->mN:Lcom/glympse/android/lib/GGroupMemberPrivate;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_9
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
const/4 v2, 0x1
packed-switch p1, :pswitch_data_b2
:pswitch_4
:goto_4
:cond_4
return v2
:pswitch_5
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dl;->hf:Ljava/lang/String;
goto :goto_4
:pswitch_16
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "events"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/dl;->mR:J
goto :goto_4
:cond_27
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "public"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getBool()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/dl;->mh:Z
goto :goto_4
:cond_38
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "name"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
const/4 v0, 0x4
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getType()I
move-result v1
if-ne v0, v1, :cond_4
const/4 v0, 0x0
invoke-virtual {p2, v0}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dl;->_name:Ljava/lang/String;
goto :goto_4
:cond_51
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_62
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/dl;->_time:J
goto :goto_4
:cond_62
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_73
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dl;->hg:Ljava/lang/String;
goto :goto_4
:cond_73
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dl;->hh:Ljava/lang/String;
goto :goto_4
:pswitch_84
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "id"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_99
iget-object v0, p0, Lcom/glympse/android/lib/dl;->mN:Lcom/glympse/android/lib/GGroupMemberPrivate;
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setUserId(Ljava/lang/String;)V
goto/16 :goto_4
:cond_99
iget-object v0, p0, Lcom/glympse/android/lib/dl;->he:Ljava/lang/String;
const-string v1, "invite"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/dl;->mN:Lcom/glympse/android/lib/GGroupMemberPrivate;
invoke-static {v0}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setInviteCode(Ljava/lang/String;)V
goto/16 :goto_4
:pswitch_data_b2
.packed-switch 0x1
:pswitch_5
:pswitch_16
:pswitch_4
:pswitch_84
.end packed-switch
.end method
.method public startObject(I)Z
.registers 3
const/4 v0, 0x4
if-ne v0, p1, :cond_a
new-instance v0, Lcom/glympse/android/lib/dg;
invoke-direct {v0}, Lcom/glympse/android/lib/dg;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dl;->mN:Lcom/glympse/android/lib/GGroupMemberPrivate;
:cond_a
const/4 v0, 0x1
return v0
.end method