.class  Lcom/glympse/android/lib/z;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "BatchJob.java"
.field public _time:J
.field private hT:Lcom/glympse/android/hal/GVector;
.field private hY:Lcom/glympse/android/hal/GVector;
.field private hZ:Lcom/glympse/android/lib/GApiEndpoint;
.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
.field private he:Ljava/lang/String;
.field public hf:Ljava/lang/String;
.field public hg:Ljava/lang/String;
.field public hh:Ljava/lang/String;
.method public constructor <init>(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/hal/GVector;Lcom/glympse/android/lib/json/GJsonHandlerStack;)V
.registers 6
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/z;->hT:Lcom/glympse/android/hal/GVector;
iput-object p2, p0, Lcom/glympse/android/lib/z;->hY:Lcom/glympse/android/hal/GVector;
iput-object p3, p0, Lcom/glympse/android/lib/z;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/z;->hf:Ljava/lang/String;
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/z;->hg:Ljava/lang/String;
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/z;->hh:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/z;->_time:J
return-void
.end method
.method public endObject(I)Z
.registers 4
const/4 v0, 0x4
if-ne v0, p1, :cond_17
iget-object v0, p0, Lcom/glympse/android/lib/z;->hZ:Lcom/glympse/android/lib/GApiEndpoint;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/glympse/android/lib/z;->hY:Lcom/glympse/android/hal/GVector;
iget-object v1, p0, Lcom/glympse/android/lib/z;->hZ:Lcom/glympse/android/lib/GApiEndpoint;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/z;->hT:Lcom/glympse/android/hal/GVector;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/z;->hZ:Lcom/glympse/android/lib/GApiEndpoint;
:cond_17
const/4 v0, 0x1
return v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
const/4 v2, 0x1
if-ne v2, p1, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/z;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/z;->hf:Ljava/lang/String;
:cond_13
:goto_13
return v2
:cond_14
const/4 v0, 0x2
if-ne v0, p1, :cond_13
iget-object v0, p0, Lcom/glympse/android/lib/z;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/z;->_time:J
goto :goto_13
:cond_28
iget-object v0, p0, Lcom/glympse/android/lib/z;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/z;->hg:Ljava/lang/String;
goto :goto_13
:cond_39
iget-object v0, p0, Lcom/glympse/android/lib/z;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/z;->hh:Ljava/lang/String;
goto :goto_13
.end method
.method public startObject(I)Z
.registers 5
const/4 v0, 0x4
if-ne v0, p1, :cond_10
iget-object v0, p0, Lcom/glympse/android/lib/z;->hT:Lcom/glympse/android/hal/GVector;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;
iput-object v0, p0, Lcom/glympse/android/lib/z;->hZ:Lcom/glympse/android/lib/GApiEndpoint;
:cond_e
:goto_e
const/4 v0, 0x1
return v0
:cond_10
const/4 v0, 0x5
if-ne v0, p1, :cond_e
iget-object v0, p0, Lcom/glympse/android/lib/z;->hZ:Lcom/glympse/android/lib/GApiEndpoint;
iget-object v1, p0, Lcom/glympse/android/lib/z;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GApiEndpoint;->getHandler(Lcom/glympse/android/lib/json/GJsonHandlerStack;)Lcom/glympse/android/lib/json/GJsonHandler;
move-result-object v0
add-int/lit8 v1, p1, -0x4
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandler;->startObject(I)Z
iget-object v1, p0, Lcom/glympse/android/lib/z;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
add-int/lit8 v2, p1, -0x4
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;I)V
goto :goto_e
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 4
iput-object p2, p0, Lcom/glympse/android/lib/z;->he:Ljava/lang/String;
const/4 v0, 0x1
return v0
.end method