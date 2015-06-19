.class  Lcom/glympse/android/hal/bu;
.super Ljava/lang/Object;
.source "WifiInfo.java"
.implements Lcom/glympse/android/hal/GWifiInfo;
.field private eM:Ljava/lang/String;
.field private eN:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/bu;->eM:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/hal/bu;->eN:Ljava/lang/String;
return-void
.end method
.method public getBSSID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/bu;->eN:Ljava/lang/String;
return-object v0
.end method
.method public getSSID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/bu;->eM:Ljava/lang/String;
return-object v0
.end method
.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
.registers 4
check-cast p1, Lcom/glympse/android/hal/bu;
if-eqz p1, :cond_1a
iget-object v0, p0, Lcom/glympse/android/hal/bu;->eM:Ljava/lang/String;
iget-object v1, p1, Lcom/glympse/android/hal/bu;->eM:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/glympse/android/hal/bu;->eN:Ljava/lang/String;
iget-object v1, p1, Lcom/glympse/android/hal/bu;->eN:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method