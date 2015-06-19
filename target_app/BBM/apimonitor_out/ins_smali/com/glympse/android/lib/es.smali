.class  Lcom/glympse/android/lib/es;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "InviteTicketParser.java"
.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
.field private he:Ljava/lang/String;
.field public jz:Lcom/glympse/android/hal/GVector;
.field private mQ:I
.field public oE:Lcom/glympse/android/lib/GTicketPrivate;
.field public oF:Z
.field public oG:Z
.field public oH:Z
.field public oI:Z
.field public oJ:Z
.field public oK:Z
.field public oL:Z
.field public oM:Lcom/glympse/android/hal/GVector;
.field public oN:Lcom/glympse/android/hal/GVector;
.field public oz:Lcom/glympse/android/lib/GUserPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iput p2, p0, Lcom/glympse/android/lib/es;->mQ:I
new-instance v0, Lcom/glympse/android/lib/jj;
invoke-direct {v0}, Lcom/glympse/android/lib/jj;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/es;->oz:Lcom/glympse/android/lib/GUserPrivate;
new-instance v0, Lcom/glympse/android/lib/hz;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/hz;-><init>(Z)V
iput-object v0, p0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
iput-boolean v2, p0, Lcom/glympse/android/lib/es;->oF:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/es;->oG:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/es;->oH:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/es;->oI:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/es;->oJ:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/es;->oK:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/es;->oL:Z
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/es;->jz:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/es;->oM:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/es;->oN:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public endObject(I)Z
.registers 3
iget v0, p0, Lcom/glympse/android/lib/es;->mQ:I
if-ne p1, v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_9
const/4 v0, 0x1
return v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
packed-switch p1, :pswitch_data_1a
:cond_3
:goto_3
const/4 v0, 0x1
return v0
:pswitch_5
iget-object v0, p0, Lcom/glympse/android/lib/es;->he:Ljava/lang/String;
const-string v1, "next"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3
iget-object v0, p0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setNext(J)V
goto :goto_3
nop
:pswitch_data_1a
.packed-switch 0x2
:pswitch_5
.end packed-switch
.end method
.method public startArray(I)Z
.registers 7
const/4 v4, 0x1
const/4 v0, 0x3
if-ne v0, p1, :cond_2c
iget-object v0, p0, Lcom/glympse/android/lib/es;->he:Ljava/lang/String;
const-string v1, "properties"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
iget-object v1, p0, Lcom/glympse/android/lib/es;->he:Ljava/lang/String;
const-string v2, "data"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
:cond_18
iput-boolean v0, p0, Lcom/glympse/android/lib/es;->oF:Z
iget-object v1, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v2, Lcom/glympse/android/lib/ev;
iget-object v3, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/es;
invoke-direct {v2, v3, v0}, Lcom/glympse/android/lib/ev;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;Lcom/glympse/android/lib/es;)V
invoke-interface {v1, v2, v4}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;I)V
:cond_2c
:goto_2c
return v4
:cond_2d
iget-object v0, p0, Lcom/glympse/android/lib/es;->he:Ljava/lang/String;
const-string v1, "recipients"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4a
iget-object v1, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v2, Lcom/glympse/android/lib/et;
iget-object v3, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/es;
invoke-direct {v2, v3, p1, v0}, Lcom/glympse/android/lib/et;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;ILcom/glympse/android/lib/es;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
goto :goto_2c
:cond_4a
iget-object v0, p0, Lcom/glympse/android/lib/es;->he:Ljava/lang/String;
const-string v1, "location"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
iget-object v1, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v2, Lcom/glympse/android/lib/eu;
iget-object v3, p0, Lcom/glympse/android/lib/es;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/es;
invoke-direct {v2, v3, p1, v0}, Lcom/glympse/android/lib/eu;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;ILcom/glympse/android/lib/es;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
goto :goto_2c
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 4
iput-object p2, p0, Lcom/glympse/android/lib/es;->he:Ljava/lang/String;
const/4 v0, 0x1
return v0
.end method