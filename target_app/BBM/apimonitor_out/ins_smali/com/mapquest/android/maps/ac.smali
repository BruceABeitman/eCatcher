.class public final Lcom/mapquest/android/maps/ac;
.super Lcom/mapquest/android/maps/bh;
.source "LineOverlay.java"
.field  a:I
.field public b:Ljava/util/List;
.field public c:Ljava/util/ArrayList;
.field public volatile d:Ljava/util/List;
.field public e:Lcom/mapquest/android/maps/b;
.field  f:Z
.field  g:Lcom/mapquest/android/maps/af;
.field private m:Landroid/graphics/Paint;
.field private n:Landroid/graphics/Paint;
.field private o:Landroid/graphics/Path;
.field private p:Z
.field private q:Z
.field private r:Lcom/mapquest/android/maps/ax;
.field private s:Landroid/os/HandlerThread;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/mapquest/android/maps/bh;-><init>()V
const/16 v0, 0x9
iput v0, p0, Lcom/mapquest/android/maps/ac;->a:I
iput-boolean v2, p0, Lcom/mapquest/android/maps/ac;->p:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mapquest/android/maps/ac;->f:Z
iput-boolean v2, p0, Lcom/mapquest/android/maps/ac;->q:Z
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->r:Lcom/mapquest/android/maps/ax;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/ac;->o:Landroid/graphics/Path;
return-void
.end method
.method public constructor <init>(Landroid/graphics/Paint;)V
.registers 2
invoke-direct {p0}, Lcom/mapquest/android/maps/ac;-><init>()V
iput-object p1, p0, Lcom/mapquest/android/maps/ac;->m:Landroid/graphics/Paint;
return-void
.end method
.method private a(Landroid/graphics/Point;Landroid/graphics/Point;)V
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->o:Landroid/graphics/Path;
iget v1, p1, Landroid/graphics/Point;->x:I
int-to-float v1, v1
iget v2, p1, Landroid/graphics/Point;->y:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->o:Landroid/graphics/Path;
iget v1, p2, Landroid/graphics/Point;->x:I
int-to-float v1, v1
iget v2, p2, Landroid/graphics/Point;->y:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V
return-void
.end method
.method private b(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
.registers 34
move-object/from16 v0, p0
iget-object v12, v0, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;
const/4 v3, 0x1
const-wide v5, 0x41dfffffffc00000L
move-object/from16 v0, p1
iget v2, v0, Lcom/mapquest/android/maps/s;->b:I
int-to-long v13, v2
move-object/from16 v0, p1
iget v2, v0, Lcom/mapquest/android/maps/s;->a:I
int-to-long v15, v2
const/4 v8, 0x0
const/4 v7, 0x0
invoke-interface {v12}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v17, v2, -0x1
const/4 v2, 0x0
move v11, v2
:goto_1e
move/from16 v0, v17
if-ge v11, v0, :cond_f6
invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v4, v2, Lcom/mapquest/android/maps/s;->b:I
invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v9, v2, Lcom/mapquest/android/maps/s;->a:I
add-int/lit8 v2, v11, 0x1
invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
sub-int/2addr v2, v4
int-to-long v0, v2
move-wide/from16 v18, v0
add-int/lit8 v2, v11, 0x1
invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->a:I
sub-int/2addr v2, v9
int-to-long v0, v2
move-wide/from16 v20, v0
move-wide/from16 v0, v18
long-to-float v2, v0
const/4 v10, 0x0
cmpl-float v2, v2, v10
if-nez v2, :cond_5e
move-wide/from16 v0, v20
long-to-float v2, v0
const/4 v10, 0x0
cmpl-float v2, v2, v10
if-eqz v2, :cond_16f
:cond_5e
int-to-long v2, v4
sub-long v2, v13, v2
int-to-long v0, v9
move-wide/from16 v22, v0
sub-long v22, v15, v22
mul-long v24, v18, v2
mul-long v26, v20, v22
add-long v24, v24, v26
move-wide/from16 v0, v24
long-to-float v10, v0
const/16 v26, 0x0
cmpg-float v10, v10, v26
if-gtz v10, :cond_a5
const/4 v9, 0x0
mul-long/2addr v2, v2
mul-long v18, v22, v22
add-long v2, v2, v18
long-to-double v3, v2
cmpg-double v2, v3, v5
if-gez v2, :cond_169
invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v5, v2, Lcom/mapquest/android/maps/s;->a:I
invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
move v6, v9
move/from16 v28, v2
move-wide/from16 v29, v3
move-wide/from16 v2, v29
move/from16 v4, v28
:goto_99
add-int/lit8 v7, v11, 0x1
move v11, v7
move v8, v5
move v7, v4
move-wide/from16 v28, v2
move v3, v6
move-wide/from16 v5, v28
goto/16 :goto_1e
:cond_a5
move-wide/from16 v0, v24
long-to-double v2, v0
mul-long v22, v18, v18
mul-long v24, v20, v20
add-long v22, v22, v24
move-wide/from16 v0, v22
long-to-double v0, v0
move-wide/from16 v22, v0
div-double v2, v2, v22
const-wide/high16 v22, 0x3ff0
cmpl-double v10, v2, v22
if-ltz v10, :cond_c4
const/4 v2, 0x1
move v4, v7
move-wide/from16 v28, v5
move v5, v8
move v6, v2
move-wide/from16 v2, v28
goto :goto_99
:cond_c4
const/4 v10, 0x0
move-wide/from16 v0, v18
long-to-double v0, v0
move-wide/from16 v18, v0
mul-double v18, v18, v2
move-wide/from16 v0, v18
double-to-int v0, v0
move/from16 v18, v0
add-int v4, v4, v18
move-wide/from16 v0, v20
long-to-double v0, v0
move-wide/from16 v18, v0
mul-double v2, v2, v18
double-to-int v2, v2
add-int/2addr v9, v2
int-to-long v2, v4
sub-long v2, v13, v2
long-to-double v2, v2
int-to-long v0, v9
move-wide/from16 v18, v0
sub-long v18, v15, v18
move-wide/from16 v0, v18
long-to-double v0, v0
move-wide/from16 v18, v0
mul-double/2addr v2, v2
mul-double v18, v18, v18
add-double v2, v2, v18
cmpg-double v18, v2, v5
if-gez v18, :cond_163
move v5, v9
move v6, v10
goto :goto_99
:cond_f6
if-eqz v3, :cond_130
move/from16 v0, v17
invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
int-to-long v2, v2
sub-long v2, v13, v2
long-to-double v3, v2
move/from16 v0, v17
invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->a:I
int-to-long v9, v2
sub-long v9, v15, v9
long-to-double v9, v9
mul-double v2, v3, v3
mul-double/2addr v9, v9
add-double/2addr v2, v9
cmpg-double v2, v2, v5
if-gez v2, :cond_130
move/from16 v0, v17
invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v8, v2, Lcom/mapquest/android/maps/s;->a:I
move/from16 v0, v17
invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/mapquest/android/maps/s;
iget v7, v2, Lcom/mapquest/android/maps/s;->b:I
:cond_130
new-instance v2, Lcom/mapquest/android/maps/s;
invoke-direct {v2, v8, v7}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-virtual/range {p2 .. p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v3
const/4 v4, 0x0
invoke-interface {v3, v2, v4}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v2
invoke-virtual/range {p2 .. p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v3
const/4 v4, 0x0
move-object/from16 v0, p1
invoke-interface {v3, v0, v4}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v3
iget v4, v3, Landroid/graphics/Point;->x:I
int-to-float v4, v4
iget v3, v3, Landroid/graphics/Point;->y:I
int-to-float v3, v3
iget v5, v2, Landroid/graphics/Point;->x:I
int-to-float v5, v5
iget v2, v2, Landroid/graphics/Point;->y:I
int-to-float v2, v2
invoke-static {v4, v3, v5, v2}, Lcom/mapquest/android/maps/cv;->a(FFFF)F
move-result v2
const/high16 v3, 0x40a0
cmpg-float v2, v2, v3
if-gez v2, :cond_161
const/4 v2, 0x1
:goto_160
return v2
:cond_161
const/4 v2, 0x0
goto :goto_160
:cond_163
move-wide v2, v5
move v4, v7
move v5, v8
move v6, v10
goto/16 :goto_99
:cond_169
move-wide v2, v5
move v4, v7
move v5, v8
move v6, v9
goto/16 :goto_99
:cond_16f
move v4, v7
move-wide/from16 v28, v5
move v5, v8
move v6, v3
move-wide/from16 v2, v28
goto/16 :goto_99
.end method
.method public final a(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
.registers 15
iget-boolean v0, p0, Lcom/mapquest/android/maps/ac;->q:Z
if-eqz v0, :cond_b
const-string v0, "com.mapquest.android.maps.lineoverlay"
const-string v1, "LineOverlay.draw()"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_b
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->r:Lcom/mapquest/android/maps/ax;
if-nez v0, :cond_37
new-instance v0, Lcom/mapquest/android/maps/ad;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/ad;-><init>(Lcom/mapquest/android/maps/ac;B)V
iput-object v0, p0, Lcom/mapquest/android/maps/ac;->r:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->r:Lcom/mapquest/android/maps/ax;
invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
new-instance v2, Landroid/os/Handler;
new-instance v3, Lcom/mapquest/android/maps/at;
invoke-direct {v3, p2, v0, p2}, Lcom/mapquest/android/maps/at;-><init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ax;Lcom/mapquest/android/maps/MapView;)V
invoke-direct {v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
iget-object v1, p2, Lcom/mapquest/android/maps/MapView;->o:Ljava/util/HashMap;
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v2}, Lcom/mapquest/android/maps/g;->a(Landroid/os/Handler;)V
:cond_37
invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v4
invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;
move-result-object v1
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->e:Lcom/mapquest/android/maps/b;
invoke-static {v0, p2}, Lcom/mapquest/android/maps/cv;->b(Lcom/mapquest/android/maps/b;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;
move-result-object v3
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->m:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v0
float-to-int v0, v0
div-int/lit8 v0, v0, 0x2
neg-int v2, v0
neg-int v0, v0
invoke-virtual {v3, v2, v0}, Landroid/graphics/Rect;->inset(II)V
invoke-static {v1, p2}, Lcom/mapquest/android/maps/cv;->a(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/b;
move-result-object v5
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;
iget-boolean v2, p0, Lcom/mapquest/android/maps/ac;->f:Z
if-eqz v2, :cond_1f6
iget-object v2, p0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
if-eqz v2, :cond_65
iget-object v2, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
if-nez v2, :cond_81
:cond_65
new-instance v2, Landroid/os/HandlerThread;
const-string v6, "simplifier"
const/4 v7, 0x1
invoke-direct {v2, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V
iput-object v2, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
iget-object v2, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
new-instance v2, Lcom/mapquest/android/maps/af;
iget-object v6, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v6
invoke-direct {v2, p0, p2, v6}, Lcom/mapquest/android/maps/af;-><init>(Lcom/mapquest/android/maps/ac;Lcom/mapquest/android/maps/MapView;Landroid/os/Looper;)V
iput-object v2, p0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
:cond_81
iget-object v2, p0, Lcom/mapquest/android/maps/ac;->d:Ljava/util/List;
if-nez v2, :cond_e2
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Lcom/mapquest/android/maps/ac;->d:Ljava/util/List;
new-instance v2, Lcom/mapquest/android/maps/ae;
const/4 v6, 0x0
invoke-direct {v2, p0, v4, v6}, Lcom/mapquest/android/maps/ae;-><init>(Lcom/mapquest/android/maps/ac;Lcom/mapquest/android/maps/bq;B)V
invoke-virtual {p2, v2}, Lcom/mapquest/android/maps/MapView;->post(Ljava/lang/Runnable;)Z
move-object v2, v0
:goto_96
invoke-static {v3, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
move-result v0
if-eqz v0, :cond_1f5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->o:Landroid/graphics/Path;
invoke-virtual {v0}, Landroid/graphics/Path;->reset()V
const/4 v1, 0x0
const/4 v0, 0x0
move v3, v0
:goto_a8
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
if-ge v3, v0, :cond_154
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/s;
invoke-virtual {v5, v0}, Lcom/mapquest/android/maps/b;->a(Lcom/mapquest/android/maps/s;)Z
move-result v8
if-nez v8, :cond_f0
add-int/lit8 v8, v3, 0x1
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v9
if-ge v8, v9, :cond_ee
invoke-interface {v4, v0, v1}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v1
add-int/lit8 v0, v3, 0x1
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/s;
invoke-virtual {v5, v0}, Lcom/mapquest/android/maps/b;->a(Lcom/mapquest/android/maps/s;)Z
move-result v8
if-eqz v8, :cond_dc
const/4 v8, 0x0
invoke-interface {v4, v0, v8}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
invoke-direct {p0, v0, v1}, Lcom/mapquest/android/maps/ac;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V
:cond_dc
move-object v0, v1
:goto_dd
add-int/lit8 v1, v3, 0x1
move v3, v1
move-object v1, v0
goto :goto_a8
:cond_e2
iget-object v2, p0, Lcom/mapquest/android/maps/ac;->d:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-eqz v2, :cond_1f6
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->d:Ljava/util/List;
move-object v2, v0
goto :goto_96
:cond_ee
move-object v0, v1
goto :goto_dd
:cond_f0
invoke-interface {v4, v0, v1}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v1
iget-boolean v0, p0, Lcom/mapquest/android/maps/ac;->p:Z
if-eqz v0, :cond_134
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->n:Landroid/graphics/Paint;
if-nez v0, :cond_123
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->n:Landroid/graphics/Paint;
if-nez v0, :cond_151
new-instance v0, Landroid/graphics/Paint;
const/4 v8, 0x1
invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V
iget-object v8, p0, Lcom/mapquest/android/maps/ac;->m:Landroid/graphics/Paint;
invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I
move-result v8
invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V
iget-object v8, p0, Lcom/mapquest/android/maps/ac;->m:Landroid/graphics/Paint;
invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I
move-result v8
invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v8, p0, Lcom/mapquest/android/maps/ac;->m:Landroid/graphics/Paint;
invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v8
invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V
:goto_121
iput-object v0, p0, Lcom/mapquest/android/maps/ac;->n:Landroid/graphics/Paint;
:cond_123
iget v0, v1, Landroid/graphics/Point;->x:I
int-to-float v0, v0
iget v8, v1, Landroid/graphics/Point;->y:I
int-to-float v8, v8
iget-object v9, p0, Lcom/mapquest/android/maps/ac;->n:Landroid/graphics/Paint;
invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v9
iget-object v10, p0, Lcom/mapquest/android/maps/ac;->n:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
:cond_134
const/4 v0, 0x0
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v8
add-int/lit8 v9, v3, 0x1
if-le v8, v9, :cond_145
add-int/lit8 v0, v3, 0x1
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/s;
:cond_145
if-eqz v0, :cond_14f
const/4 v8, 0x0
invoke-interface {v4, v0, v8}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
invoke-direct {p0, v1, v0}, Lcom/mapquest/android/maps/ac;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V
:cond_14f
move-object v0, v1
goto :goto_dd
:cond_151
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->n:Landroid/graphics/Paint;
goto :goto_121
:cond_154
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->o:Landroid/graphics/Path;
invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z
move-result v0
if-eqz v0, :cond_18e
const/4 v0, 0x0
move v3, v0
:goto_15e
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
if-ge v3, v0, :cond_18e
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/s;
const/4 v1, 0x0
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v5
add-int/lit8 v8, v3, 0x1
if-le v5, v8, :cond_17b
add-int/lit8 v1, v3, 0x1
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/mapquest/android/maps/s;
:cond_17b
if-eqz v1, :cond_18a
const/4 v5, 0x0
invoke-interface {v4, v0, v5}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
const/4 v5, 0x0
invoke-interface {v4, v1, v5}, Lcom/mapquest/android/maps/bq;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/mapquest/android/maps/ac;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V
:cond_18a
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_15e
:cond_18e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-boolean v3, p0, Lcom/mapquest/android/maps/ac;->q:Z
if-eqz v3, :cond_1be
const-string v3, "com.mapquest.android.maps.lineoverlay"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Time to process shapepoints: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v5, v0, v6
long-to-float v5, v5
const/high16 v6, 0x447a
div-float/2addr v5, v6
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "; no. of points: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_1be
iget-object v3, p0, Lcom/mapquest/android/maps/ac;->o:Landroid/graphics/Path;
iget-object v4, p0, Lcom/mapquest/android/maps/ac;->m:Landroid/graphics/Paint;
invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-boolean v3, p0, Lcom/mapquest/android/maps/ac;->q:Z
if-eqz v3, :cond_1f5
const-string v3, "com.mapquest.android.maps.lineoverlay"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Time to draw path shapepoints: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long v0, v5, v0
long-to-float v0, v0
const/high16 v1, 0x447a
div-float/2addr v0, v1
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "; no. of points: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_1f5
return-void
:cond_1f6
move-object v2, v0
goto/16 :goto_96
.end method
.method public final a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->i:Lcom/mapquest/android/maps/bj;
if-eqz v0, :cond_20
invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
float-to-int v1, v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
float-to-int v2, v2
invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/ac;->b(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->i:Lcom/mapquest/android/maps/bj;
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public final a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->h:Lcom/mapquest/android/maps/bi;
if-eqz v0, :cond_11
invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/ac;->b(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->h:Lcom/mapquest/android/maps/bi;
invoke-interface {v0}, Lcom/mapquest/android/maps/bi;->a()V
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public final b(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->j:Lcom/mapquest/android/maps/bk;
if-eqz v0, :cond_20
invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
float-to-int v1, v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
float-to-int v2, v2
invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/ac;->b(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->j:Lcom/mapquest/android/maps/bk;
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->c:Ljava/util/ArrayList;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->d:Ljava/util/List;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->e:Lcom/mapquest/android/maps/b;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->o:Landroid/graphics/Path;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->m:Landroid/graphics/Paint;
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->n:Landroid/graphics/Paint;
iput-boolean v2, p0, Lcom/mapquest/android/maps/ac;->f:Z
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/af;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
iget-object v0, v0, Lcom/mapquest/android/maps/af;->a:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->clear()V
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
:cond_24
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
if-eqz v0, :cond_33
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
:cond_33
iput-object v1, p0, Lcom/mapquest/android/maps/ac;->s:Landroid/os/HandlerThread;
:cond_35
return-void
.end method