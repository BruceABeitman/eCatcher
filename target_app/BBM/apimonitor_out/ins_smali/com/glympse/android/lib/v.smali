.class  Lcom/glympse/android/lib/v;
.super Ljava/lang/Object;
.source "AutoProxProvider.java"
.implements Lcom/glympse/android/core/GProximityProvider;
.field public static final hK:J = 0x1388L
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private cL:Lcom/glympse/android/core/GProximityListener;
.field private hL:Lcom/glympse/android/core/GLocation;
.field private hM:Lcom/glympse/android/hal/GVector;
.field private hN:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/glympse/android/core/GHandler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/v;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method private a(Lcom/glympse/android/core/GLocation;)Z
.registers 15
const-wide/16 v11, 0x4e20
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v2
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v4
const/4 v0, 0x0
move v1, v0
:goto_e
if-ge v1, v4, :cond_56
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/hb;
invoke-interface {p1, v0}, Lcom/glympse/android/core/GLocation;->distanceTo(Lcom/glympse/android/core/GLatLng;)F
move-result v5
iput v5, v0, Lcom/glympse/android/lib/hb;->rw:F
invoke-interface {p1}, Lcom/glympse/android/core/GLocation;->hasHAccuracy()Z
move-result v5
if-eqz v5, :cond_2d
iget v5, v0, Lcom/glympse/android/lib/hb;->rw:F
invoke-interface {p1}, Lcom/glympse/android/core/GLocation;->getHAccuracy()F
move-result v6
add-float/2addr v5, v6
iput v5, v0, Lcom/glympse/android/lib/hb;->rw:F
:cond_2d
iget v5, v0, Lcom/glympse/android/lib/hb;->rw:F
iget v6, v0, Lcom/glympse/android/lib/hb;->rv:F
cmpg-float v5, v5, v6
if-gez v5, :cond_52
iget v5, v0, Lcom/glympse/android/lib/hb;->rw:F
iput v5, v0, Lcom/glympse/android/lib/hb;->rv:F
iget-wide v5, v0, Lcom/glympse/android/lib/hb;->ru:J
sub-long/2addr v5, v2
cmp-long v5, v5, v11
if-gtz v5, :cond_44
iget-boolean v5, v0, Lcom/glympse/android/lib/hb;->rz:Z
if-nez v5, :cond_52
:cond_44
const-wide/16 v5, 0x3e8
iget v7, v0, Lcom/glympse/android/lib/hb;->rv:F
float-to-double v7, v7
const-wide/high16 v9, 0x3ff4
div-double/2addr v7, v9
double-to-long v7, v7
mul-long/2addr v5, v7
add-long/2addr v5, v2
add-long/2addr v5, v11
iput-wide v5, v0, Lcom/glympse/android/lib/hb;->ru:J
:cond_52
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_56
invoke-virtual {p0, v2, v3}, Lcom/glympse/android/lib/v;->d(J)Z
move-result v0
return v0
.end method
.method private ak()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
if-nez v0, :cond_1a
new-instance v1, Lcom/glympse/android/lib/w;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/v;
invoke-direct {v1, v0}, Lcom/glympse/android/lib/w;-><init>(Lcom/glympse/android/lib/v;)V
iput-object v1, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/glympse/android/lib/v;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
const-wide/16 v2, 0x1388
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
:cond_1a
return-void
.end method
.method private al()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/lib/v;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
:cond_e
return-void
.end method
.method public am()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/glympse/android/lib/v;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/v;->hN:Ljava/lang/Runnable;
const-wide/16 v2, 0x1388
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
:cond_d
return-void
.end method
.method public d(J)Z
.registers 15
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v5
const/4 v0, 0x0
move v4, v0
:goto_a
if-ge v4, v5, :cond_82
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v4}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/hb;
iget-boolean v3, v0, Lcom/glympse/android/lib/hb;->rz:Z
if-nez v3, :cond_50
const/4 v3, 0x0
:goto_19
const/16 v6, 0x8
if-ge v3, v6, :cond_50
const v6, 0x48927c00
int-to-float v7, v3
const v8, 0x47276925
mul-float/2addr v7, v8
sub-float/2addr v6, v7
float-to-long v6, v6
const/high16 v8, 0x447a
int-to-float v9, v3
const v10, 0x4307b6db
mul-float/2addr v9, v10
sub-float/2addr v8, v9
iget v9, v0, Lcom/glympse/android/lib/hb;->rw:F
cmpg-float v8, v9, v8
if-gtz v8, :cond_79
const-wide/16 v8, 0x0
iget-object v10, v0, Lcom/glympse/android/lib/hb;->ry:[J
aget-wide v10, v10, v3
cmp-long v8, v8, v10
if-nez v8, :cond_43
iget-object v8, v0, Lcom/glympse/android/lib/hb;->ry:[J
aput-wide p1, v8, v3
:cond_43
iget-object v8, v0, Lcom/glympse/android/lib/hb;->ry:[J
aget-wide v8, v8, v3
sub-long v8, p1, v8
cmp-long v6, v8, v6
if-ltz v6, :cond_7f
const/4 v3, 0x1
iput-boolean v3, v0, Lcom/glympse/android/lib/hb;->rz:Z
:cond_50
iget-boolean v3, v0, Lcom/glympse/android/lib/hb;->rz:Z
if-eqz v3, :cond_73
iget-wide v6, v0, Lcom/glympse/android/lib/hb;->ru:J
cmp-long v3, v6, p1
if-lez v3, :cond_65
iget v3, v0, Lcom/glympse/android/lib/hb;->rw:F
iget v6, v0, Lcom/glympse/android/lib/hb;->rv:F
const/high16 v7, 0x43fa
add-float/2addr v6, v7
cmpl-float v3, v3, v6
if-ltz v3, :cond_73
:cond_65
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/glympse/android/lib/hb;->rA:Z
const/4 v2, 0x1
if-nez v1, :cond_70
new-instance v1, Lcom/glympse/android/hal/GVector;
invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V
:cond_70
invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
:cond_73
move v0, v2
add-int/lit8 v2, v4, 0x1
move v4, v2
move v2, v0
goto :goto_a
:cond_79
iget-object v6, v0, Lcom/glympse/android/lib/hb;->ry:[J
const-wide/16 v7, 0x0
aput-wide v7, v6, v3
:cond_7f
add-int/lit8 v3, v3, 0x1
goto :goto_19
:cond_82
if-eqz v1, :cond_9f
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I
move-result v4
const/4 v0, 0x0
move v3, v0
:goto_8a
if-ge v3, v4, :cond_9f
invoke-virtual {v1, v3}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GRegion;
iget-object v5, p0, Lcom/glympse/android/lib/v;->cL:Lcom/glympse/android/core/GProximityListener;
if-eqz v5, :cond_9b
iget-object v5, p0, Lcom/glympse/android/lib/v;->cL:Lcom/glympse/android/core/GProximityListener;
invoke-interface {v5, v0}, Lcom/glympse/android/core/GProximityListener;->regionEntered(Lcom/glympse/android/core/GRegion;)V
:cond_9b
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_8a
:cond_9f
return v2
.end method
.method public detachRegions()Lcom/glympse/android/core/GArray;
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/v;->al()V
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/hal/GVector;
invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v1, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public locationChanged(Lcom/glympse/android/core/GLocation;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/lib/v;->hL:Lcom/glympse/android/core/GLocation;
iget-object v0, p0, Lcom/glympse/android/lib/v;->hL:Lcom/glympse/android/core/GLocation;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/lib/v;->hL:Lcom/glympse/android/core/GLocation;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/v;->a(Lcom/glympse/android/core/GLocation;)Z
:cond_b
return-void
.end method
.method public setProximityListener(Lcom/glympse/android/core/GProximityListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/v;->cL:Lcom/glympse/android/core/GProximityListener;
return-void
.end method
.method public startMonitoring(Lcom/glympse/android/core/GArray;)V
.registers 6
invoke-interface {p1}, Lcom/glympse/android/core/GArray;->length()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_6
if-ge v1, v2, :cond_17
invoke-interface {p1, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GRegion;
iget-object v3, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_17
iget-object v0, p0, Lcom/glympse/android/lib/v;->hL:Lcom/glympse/android/core/GLocation;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/glympse/android/lib/v;->hL:Lcom/glympse/android/core/GLocation;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/v;->a(Lcom/glympse/android/core/GLocation;)Z
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_2b
invoke-direct {p0}, Lcom/glympse/android/lib/v;->ak()V
:cond_2b
return-void
.end method
.method public startMonitoring(Lcom/glympse/android/core/GRegion;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/v;->hL:Lcom/glympse/android/core/GLocation;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/lib/v;->hL:Lcom/glympse/android/core/GLocation;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/v;->a(Lcom/glympse/android/core/GLocation;)Z
:cond_e
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_19
invoke-direct {p0}, Lcom/glympse/android/lib/v;->ak()V
:cond_19
return-void
.end method
.method public stopMonitoring(Lcom/glympse/android/core/GRegion;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/glympse/android/lib/v;->hM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-nez v0, :cond_10
invoke-direct {p0}, Lcom/glympse/android/lib/v;->al()V
:cond_10
return-void
.end method