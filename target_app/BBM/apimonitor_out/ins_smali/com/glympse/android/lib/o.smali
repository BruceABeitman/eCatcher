.class  Lcom/glympse/android/lib/o;
.super Ljava/lang/Object;
.source "AppProfile.java"
.implements Lcom/glympse/android/api/GAppProfile;
.field private _name:Ljava/lang/String;
.field private hm:Ljava/lang/String;
.field private hn:Lcom/glympse/android/lib/GImagePrivate;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/dz;
invoke-direct {v0}, Lcom/glympse/android/lib/dz;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/o;->hm:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/o;->_name:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/dz;
const/4 v1, 0x0
invoke-direct {v0, p3, v1}, Lcom/glympse/android/lib/dz;-><init>(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)V
iput-object v0, p0, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
return-void
.end method
.method public decode(Lcom/glympse/android/core/GPrimitive;)V
.registers 4
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/o;->hm:Ljava/lang/String;
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/o;->_name:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
const-string v1, "icon"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V
return-void
.end method
.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/o;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/o;->hm:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_13
iget-object v0, p0, Lcom/glympse/android/lib/o;->_name:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/o;->_name:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_26
iget-object v0, p0, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3b
const-string v1, "icon"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_3b
return-void
.end method
.method public getIcon()Lcom/glympse/android/api/GImage;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/o;->hm:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/o;->_name:Ljava/lang/String;
return-object v0
.end method
.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
.registers 5
const/4 v0, 0x0
check-cast p1, Lcom/glympse/android/lib/o;
if-nez p1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
iget-object v1, p0, Lcom/glympse/android/lib/o;->hm:Ljava/lang/String;
iget-object v2, p1, Lcom/glympse/android/lib/o;->hm:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/glympse/android/lib/o;->_name:Ljava/lang/String;
iget-object v2, p1, Lcom/glympse/android/lib/o;->_name:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
if-nez v1, :cond_24
iget-object v1, p1, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
if-nez v1, :cond_5
:cond_22
const/4 v0, 0x1
goto :goto_5
:cond_24
iget-object v1, p1, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;
move-result-object v1
iget-object v2, p1, Lcom/glympse/android/lib/o;->hn:Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_22
goto :goto_5
.end method