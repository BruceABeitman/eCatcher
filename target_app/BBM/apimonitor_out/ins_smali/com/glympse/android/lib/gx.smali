.class  Lcom/glympse/android/lib/gx;
.super Ljava/lang/Object;
.source "PlacesManager.java"
.implements Lcom/glympse/android/lib/GPlacesManager;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private iC:Lcom/glympse/android/hal/GContextHolder;
.field private iD:Ljava/lang/String;
.field private jO:Lcom/glympse/android/lib/hw;
.field private rl:Lcom/glympse/android/hal/GVector;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/hw;
invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/gx;->jO:Lcom/glympse/android/lib/hw;
return-void
.end method
.method private bd()V
.registers 6
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
iget-object v0, p0, Lcom/glympse/android/lib/gx;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_10
:cond_f
return-void
:cond_10
iget-object v1, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
const-string v1, "pls"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_f
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
const/4 v0, 0x0
:goto_26
if-ge v0, v2, :cond_f
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
new-instance v4, Lcom/glympse/android/lib/gw;
invoke-direct {v4}, Lcom/glympse/android/lib/gw;-><init>()V
invoke-interface {v4, v3}, Lcom/glympse/android/lib/GPlacePrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
iget-object v3, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v3, v4}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_26
.end method
.method public a(Lcom/glympse/android/api/GPlace;)Z
.registers 7
const/4 v1, 0x0
if-nez p1, :cond_5
move v0, v1
:goto_4
return v0
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v3
move v2, v1
:goto_c
if-ge v2, v3, :cond_31
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GPlace;
invoke-interface {v0, p1}, Lcom/glympse/android/api/GPlace;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v4
if-eqz v4, :cond_2d
if-eqz v2, :cond_2b
iget-object v3, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
iget-object v2, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, v0, v1}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V
invoke-virtual {p0}, Lcom/glympse/android/lib/gx;->save()V
:cond_2b
const/4 v0, 0x1
goto :goto_4
:cond_2d
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_c
:cond_31
move v0, v1
goto :goto_4
.end method
.method public addPlace(Lcom/glympse/android/api/GPlace;)V
.registers 5
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/glympse/android/lib/gx;->bd()V
:cond_a
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/gx;->a(Lcom/glympse/android/api/GPlace;)Z
move-result v0
if-nez v0, :cond_2
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V
invoke-virtual {p0}, Lcom/glympse/android/lib/gx;->save()V
check-cast p1, Lcom/glympse/android/lib/GPlacePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GPlacePrivate;->getImage()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
if-eqz v0, :cond_2
iget-object v1, p0, Lcom/glympse/android/lib/gx;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_2
iget-object v1, p0, Lcom/glympse/android/lib/gx;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;
move-result-object v1
invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GImageCache;->cache(Lcom/glympse/android/api/GImage;Ljava/lang/String;)Z
goto :goto_2
.end method
.method public getPlaces()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/gx;->bd()V
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public hasPlace(Lcom/glympse/android/api/GPlace;)Z
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_5
move v0, v1
:goto_4
return v0
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/glympse/android/lib/gx;->bd()V
:cond_c
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v3
move v2, v1
:goto_13
if-ge v2, v3, :cond_29
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GPlace;
invoke-interface {v0, p1}, Lcom/glympse/android/api/GPlace;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v0
if-eqz v0, :cond_25
const/4 v0, 0x1
goto :goto_4
:cond_25
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_13
:cond_29
move v0, v1
goto :goto_4
.end method
.method public load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
.registers 8
iput-object p1, p0, Lcom/glympse/android/lib/gx;->iC:Lcom/glympse/android/hal/GContextHolder;
iput-object p2, p0, Lcom/glympse/android/lib/gx;->iD:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/gx;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/gx;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v2, p0, Lcom/glympse/android/lib/gx;->iD:Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "places_v2"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public removePlace(I)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/gx;->bd()V
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v0
if-lt p1, v0, :cond_10
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
invoke-virtual {p0}, Lcom/glympse/android/lib/gx;->save()V
goto :goto_f
.end method
.method public save()V
.registers 9
const/16 v0, 0x80
const/4 v7, 0x2
const/4 v3, 0x0
new-instance v4, Lcom/glympse/android/lib/Primitive;
invoke-direct {v4, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v1, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->length()I
move-result v1
if-le v1, v0, :cond_12
move v1, v0
:cond_12
new-instance v5, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x1
invoke-direct {v5, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
move v2, v3
:goto_19
if-ge v2, v1, :cond_32
iget-object v0, p0, Lcom/glympse/android/lib/gx;->rl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GPlacePrivate;
new-instance v6, Lcom/glympse/android/lib/Primitive;
invoke-direct {v6, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, v6, v3}, Lcom/glympse/android/lib/GPlacePrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
invoke-interface {v5, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_19
:cond_32
const-string v0, "pls"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/gx;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0, v4}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public start(Lcom/glympse/android/api/GGlympse;)V
.registers 2
check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p1, p0, Lcom/glympse/android/lib/gx;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gx;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/gx;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method