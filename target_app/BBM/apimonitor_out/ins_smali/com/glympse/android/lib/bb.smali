.class  Lcom/glympse/android/lib/bb;
.super Lcom/glympse/android/lib/HttpJob;
.source "DirectionsJob.java"
.field private _time:J
.field private jR:Lcom/glympse/android/core/GLatLng;
.field private jS:Lcom/glympse/android/core/GLatLng;
.field private jT:I
.field private jU:Lcom/glympse/android/lib/bq;
.field private jV:Lcom/glympse/android/lib/bd;
.method public constructor <init>(JLcom/glympse/android/core/GLatLng;Lcom/glympse/android/core/GLatLng;ILcom/glympse/android/lib/bq;)V
.registers 7
invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V
iput-wide p1, p0, Lcom/glympse/android/lib/bb;->_time:J
iput-object p3, p0, Lcom/glympse/android/lib/bb;->jR:Lcom/glympse/android/core/GLatLng;
iput-object p4, p0, Lcom/glympse/android/lib/bb;->jS:Lcom/glympse/android/core/GLatLng;
iput p5, p0, Lcom/glympse/android/lib/bb;->jT:I
iput-object p6, p0, Lcom/glympse/android/lib/bb;->jU:Lcom/glympse/android/lib/bq;
return-void
.end method
.method public checkResponse(II)Z
.registers 4
const/16 v0, 0xc8
if-ne v0, p1, :cond_8
if-eqz p2, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public getRetryInterval(I)I
.registers 3
const/4 v0, -0x1
return v0
.end method
.method public onAbort()V
.registers 7
const-wide/16 v1, 0x0
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V
iget-object v0, p0, Lcom/glympse/android/lib/bb;->jU:Lcom/glympse/android/lib/bq;
const/4 v5, 0x0
move-wide v3, v1
invoke-interface/range {v0 .. v5}, Lcom/glympse/android/lib/bq;->a(JJLcom/glympse/android/api/GTrack;)V
return-void
.end method
.method public onComplete()V
.registers 7
const-wide/16 v1, 0x0
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V
iget-object v0, p0, Lcom/glympse/android/lib/bb;->jV:Lcom/glympse/android/lib/bd;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/glympse/android/lib/bb;->jV:Lcom/glympse/android/lib/bd;
invoke-virtual {v0}, Lcom/glympse/android/lib/bd;->aH()Lcom/glympse/android/lib/GTrackPrivate;
move-result-object v5
if-eqz v5, :cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/bb;->jV:Lcom/glympse/android/lib/bd;
invoke-virtual {v0}, Lcom/glympse/android/lib/bd;->getDistance()I
move-result v0
invoke-interface {v5, v0}, Lcom/glympse/android/lib/GTrackPrivate;->setDistance(I)V
:cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/bb;->jU:Lcom/glympse/android/lib/bq;
iget-wide v1, p0, Lcom/glympse/android/lib/bb;->_time:J
iget-object v3, p0, Lcom/glympse/android/lib/bb;->jV:Lcom/glympse/android/lib/bd;
invoke-virtual {v3}, Lcom/glympse/android/lib/bd;->getEta()J
move-result-wide v3
invoke-interface/range {v0 .. v5}, Lcom/glympse/android/lib/bq;->a(JJLcom/glympse/android/api/GTrack;)V
:goto_27
return-void
:cond_28
iget-object v0, p0, Lcom/glympse/android/lib/bb;->jU:Lcom/glympse/android/lib/bq;
const/4 v5, 0x0
move-wide v3, v1
invoke-interface/range {v0 .. v5}, Lcom/glympse/android/lib/bq;->a(JJLcom/glympse/android/api/GTrack;)V
goto :goto_27
.end method
.method public onPreProcess()V
.registers 5
const/16 v3, 0x2c
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x100
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "http://maps.googleapis.com/maps/api/directions/json?sensor=true&origin="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/bb;->jR:Lcom/glympse/android/core/GLatLng;
invoke-interface {v1}, Lcom/glympse/android/core/GLatLng;->getLatitude()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/bb;->jR:Lcom/glympse/android/core/GLatLng;
invoke-interface {v1}, Lcom/glympse/android/core/GLatLng;->getLongitude()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
const-string v1, "&destination="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/bb;->jS:Lcom/glympse/android/core/GLatLng;
invoke-interface {v1}, Lcom/glympse/android/core/GLatLng;->getLatitude()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/bb;->jS:Lcom/glympse/android/core/GLatLng;
invoke-interface {v1}, Lcom/glympse/android/core/GLatLng;->getLongitude()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/glympse/android/lib/bb;->jT:I
packed-switch v1, :pswitch_data_64
:goto_42
:pswitch_42
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/bb;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V
return-void
:pswitch_4c
const-string v1, "&mode=driving"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_42
:pswitch_52
const-string v1, "&mode=bicycling"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_42
:pswitch_58
const-string v1, "&mode=walking"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_42
:pswitch_5e
const-string v1, "&mode=transit"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_42
:pswitch_data_64
.packed-switch 0x1
:pswitch_4c
:pswitch_52
:pswitch_58
:pswitch_42
:pswitch_5e
.end packed-switch
.end method
.method public onProcessResponse()V
.registers 3
invoke-virtual {p0}, Lcom/glympse/android/lib/bb;->isSucceeded()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lcom/glympse/android/lib/json/JsonParser;
invoke-direct {v0}, Lcom/glympse/android/lib/json/JsonParser;-><init>()V
new-instance v1, Lcom/glympse/android/lib/bd;
invoke-direct {v1}, Lcom/glympse/android/lib/bd;-><init>()V
iput-object v1, p0, Lcom/glympse/android/lib/bb;->jV:Lcom/glympse/android/lib/bd;
iget-object v1, p0, Lcom/glympse/android/lib/bb;->jV:Lcom/glympse/android/lib/bd;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonParser;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
iget-object v1, p0, Lcom/glympse/android/lib/bb;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v1}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonParser;->parse(Ljava/lang/String;)Z
goto :goto_6
.end method