.class  Lcom/glympse/android/lib/k;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "ApiEndpointHandler.java"
.field public _time:J
.field public hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
.field public he:Ljava/lang/String;
.field public hf:Ljava/lang/String;
.field public hg:Ljava/lang/String;
.field public hh:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/k;->he:Ljava/lang/String;
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/k;->hf:Ljava/lang/String;
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/k;->hg:Ljava/lang/String;
invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/k;->hh:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/k;->_time:J
return-void
.end method
.method public endPair(I)Z
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/k;->he:Ljava/lang/String;
const/4 v0, 0x1
return v0
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 4
iput-object p2, p0, Lcom/glympse/android/lib/k;->he:Ljava/lang/String;
const/4 v0, 0x1
return v0
.end method