.class  Lcom/glympse/android/lib/eo;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "InviteGroupParser.java"
.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
.field private he:Ljava/lang/String;
.field private mQ:I
.field public mu:Ljava/lang/String;
.field public ox:Lcom/glympse/android/lib/GUserPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/eo;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iput p2, p0, Lcom/glympse/android/lib/eo;->mQ:I
new-instance v0, Lcom/glympse/android/lib/jj;
invoke-direct {v0}, Lcom/glympse/android/lib/jj;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/eo;->ox:Lcom/glympse/android/lib/GUserPrivate;
return-void
.end method
.method public endObject(I)Z
.registers 3
iget v0, p0, Lcom/glympse/android/lib/eo;->mQ:I
if-ne p1, v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/eo;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_9
const/4 v0, 0x1
return v0
.end method
.method public endPair(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
packed-switch p1, :pswitch_data_5a
:goto_5
:cond_5
return v2
:pswitch_6
iget-object v0, p0, Lcom/glympse/android/lib/eo;->he:Ljava/lang/String;
const-string v1, "group"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/eo;->mu:Ljava/lang/String;
goto :goto_5
:pswitch_17
iget-object v0, p0, Lcom/glympse/android/lib/eo;->he:Ljava/lang/String;
const-string v1, "id"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/glympse/android/lib/eo;->ox:Lcom/glympse/android/lib/GUserPrivate;
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V
goto :goto_5
:cond_2b
iget-object v0, p0, Lcom/glympse/android/lib/eo;->he:Ljava/lang/String;
const-string v1, "name"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/glympse/android/lib/eo;->ox:Lcom/glympse/android/lib/GUserPrivate;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setNicknameCore(Ljava/lang/String;)V
goto :goto_5
:cond_3f
iget-object v0, p0, Lcom/glympse/android/lib/eo;->he:Ljava/lang/String;
const-string v1, "avatar"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/glympse/android/lib/eo;->ox:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V
goto :goto_5
nop
:pswitch_data_5a
.packed-switch 0x2
:pswitch_6
:pswitch_17
.end packed-switch
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 4
iput-object p2, p0, Lcom/glympse/android/lib/eo;->he:Ljava/lang/String;
const/4 v0, 0x1
return v0
.end method