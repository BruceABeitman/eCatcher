.class public Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
.super Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.source "EffectAppendTiltShiftLine.java"
.field private static final DEGREE:Ljava/lang/String; = "degree"
.field private static final PROG:Ljava/lang/String; = "prog"
.field private static final WIDTH:Ljava/lang/String; = "width"
.field private static final X:Ljava/lang/String; = "x"
.field private static final Y:Ljava/lang/String; = "y"
.field private bgH:I
.field private bgW:I
.field private centerPoint:Landroid/graphics/PointF;
.field private degree:I
.field private progressive:F
.field private width:F
.method protected constructor <init>()V
.registers 4
const/4 v2, 0x0
const/high16 v1, 0x3f00
invoke-direct {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;-><init>()V
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
const/16 v0, 0x5a
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
const v0, 0x3e4ccccd
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
const/high16 v0, 0x3e80
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->progressive:F
iput v2, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgW:I
iput v2, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgH:I
return-void
.end method
.method public static build(Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
.registers 6
new-instance v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;-><init>()V
if-nez p0, :cond_8
:goto_7
return-object v0
:cond_8
:try_start_8
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "x"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v2
double-to-float v2, v2
const-string/jumbo v3, "y"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
double-to-float v3, v3
invoke-virtual {v0, v2, v3}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setCenterPoint(FF)V
const-string/jumbo v2, "degree"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setDegree(I)V
const-string/jumbo v2, "prog"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v2
double-to-float v2, v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setProgressive(F)V
const-string/jumbo v2, "width"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v2
double-to-float v2, v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->setWidth(F)V
:try_end_40
.catch Lorg/json/JSONException; {:try_start_8 .. :try_end_40} :catch_41
goto :goto_7
:catch_41
move-exception v2
goto :goto_7
.end method
.method private redressValue()V
.registers 6
const v4, 0x3a83126f
const/4 v3, 0x0
const/high16 v2, 0x3f80
const/high16 v1, 0x3f00
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
if-nez v0, :cond_13
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
cmpl-float v0, v0, v2
if-gtz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
cmpg-float v0, v0, v3
if-gez v0, :cond_27
:cond_23
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iput v1, v0, Landroid/graphics/PointF;->x:F
:cond_27
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->y:F
cmpl-float v0, v0, v2
if-gtz v0, :cond_37
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->y:F
cmpg-float v0, v0, v3
if-gez v0, :cond_3b
:cond_37
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iput v1, v0, Landroid/graphics/PointF;->y:F
:cond_3b
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
const/16 v1, 0x168
if-lt v0, v1, :cond_47
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
rem-int/lit16 v0, v0, 0x168
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
:goto_47
:cond_47
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-ltz v0, :cond_6e
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
cmpl-float v0, v0, v2
if-gtz v0, :cond_57
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
cmpg-float v0, v0, v4
if-gez v0, :cond_5c
:cond_57
const v0, 0x3e4ccccd
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
:cond_5c
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->progressive:F
cmpl-float v0, v0, v2
if-gtz v0, :cond_68
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->progressive:F
cmpg-float v0, v0, v4
if-gez v0, :cond_6d
:cond_68
const v0, 0x3d4ccccd
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->progressive:F
:cond_6d
return-void
:cond_6e
iget v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
add-int/lit16 v0, v0, 0x168
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
goto :goto_47
.end method
.method public getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
.registers 14
const/high16 v8, 0x3f80
const/16 v7, 0xb4
const/16 v9, 0x2c
const/high16 v6, 0x42c8
const/high16 v5, 0x3f00
invoke-direct {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->redressValue()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
if-eqz p1, :cond_f8
const-string/jumbo v4, "guassFrame=<PyramidLevel>2</PyramidLevel><StandLength>500</StandLength><StandAmount>5</StandAmount>;tiltShiftLineParam1="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-ne p2, v7, :cond_77
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
sub-float v4, v8, v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const-string/jumbo v4, ";tiltShiftLineParam2="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:goto_3a
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const v3, 0x3f3504f2
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgW:I
if-lez v4, :cond_60
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgH:I
if-lez v4, :cond_60
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
rem-int/lit16 v4, v4, 0xb4
const/16 v5, 0x5a
if-ne v4, v5, :cond_e6
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgH:I
int-to-float v4, v4
iget v5, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgH:I
int-to-double v5, v5
iget v7, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgW:I
int-to-double v7, v7
invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D
move-result-wide v5
double-to-float v5, v5
div-float v3, v4, v5
:cond_60
:goto_60
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
mul-float/2addr v4, v3
const/high16 v5, 0x4000
div-float/2addr v4, v5
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->progressive:F
mul-float/2addr v4, v3
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
:goto_76
return-object v4
:cond_77
const/16 v4, 0x5a
if-ne p2, v4, :cond_9c
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const-string/jumbo v4, ";tiltShiftLineParam2="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
add-int/lit16 v4, v4, 0x10e
rem-int/lit16 v4, v4, 0x168
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_3a
:cond_9c
const/16 v4, 0x10e
if-ne p2, v4, :cond_c6
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
sub-float v4, v8, v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
sub-float v4, v8, v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const-string/jumbo v4, ";tiltShiftLineParam2="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
add-int/lit16 v4, v4, 0x10e
rem-int/lit16 v4, v4, 0x168
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto/16 :goto_3a
:cond_c6
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
sub-float v4, v8, v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
const-string/jumbo v4, ";tiltShiftLineParam2="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto/16 :goto_3a
:cond_e6
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgW:I
int-to-float v4, v4
iget v5, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgH:I
int-to-double v5, v5
iget v7, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgW:I
int-to-double v7, v7
invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D
move-result-wide v5
double-to-float v5, v5
div-float v3, v4, v5
goto/16 :goto_60
:cond_f8
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
rem-int/lit8 v4, v4, 0x5a
if-eqz v4, :cond_101
const/4 v4, 0x0
iput v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
:cond_101
const/16 v4, 0x5a
if-ne p2, v4, :cond_148
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-eqz v4, :cond_10d
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-ne v4, v7, :cond_137
:cond_10d
const-string/jumbo v4, "direct=1;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v0, v4
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:goto_11d
const-string/jumbo v4, ";sizebl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v2, v4
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v4, ";tsblurlv=1;tstype=0;tscolor=2;tsstep=30"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto/16 :goto_76
:cond_137
const-string/jumbo v4, "direct=0;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v0, v4
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_11d
:cond_148
if-ne p2, v7, :cond_176
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-eqz v4, :cond_152
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-ne v4, v7, :cond_163
:cond_152
const-string/jumbo v4, "direct=0;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v0, v4
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_11d
:cond_163
const-string/jumbo v4, "direct=1;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v4, v4
rsub-int/lit8 v0, v4, 0x64
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_11d
:cond_176
const/16 v4, 0x10e
if-ne p2, v4, :cond_1a9
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-eqz v4, :cond_182
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-ne v4, v7, :cond_195
:cond_182
const-string/jumbo v4, "direct=1;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v4, v4
rsub-int/lit8 v0, v4, 0x64
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_11d
:cond_195
const-string/jumbo v4, "direct=0;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v4, v4
rsub-int/lit8 v0, v4, 0x64
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto/16 :goto_11d
:cond_1a9
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-eqz v4, :cond_1b1
iget v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
if-ne v4, v7, :cond_1c5
:cond_1b1
const-string/jumbo v4, "direct=0;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->x:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v4, v4
rsub-int/lit8 v0, v4, 0x64
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto/16 :goto_11d
:cond_1c5
const-string/jumbo v4, "direct=1;centerbl="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v4, v4, Landroid/graphics/PointF;->y:F
mul-float/2addr v4, v6
add-float/2addr v4, v5
float-to-int v0, v4
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto/16 :goto_11d
.end method
.method public bridge synthetic makeCopy()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->makeCopy()Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
move-result-object v0
return-object v0
.end method
.method public makeCopy()Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
.registers 3
:try_start_0
invoke-super {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
:goto_6
:try_end_6
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7
return-object v1
:catch_7
move-exception v0
new-instance v1, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
invoke-direct {v1}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;-><init>()V
goto :goto_6
.end method
.method public setBgRect(II)V
.registers 3
iput p2, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgH:I
iput p1, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->bgW:I
return-void
.end method
.method public setCenterPoint(FF)V
.registers 4
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
return-void
.end method
.method public setDegree(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
return-void
.end method
.method public setProgressive(F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->progressive:F
return-void
.end method
.method public setWidth(F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
return-void
.end method
.method public toJson()Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->redressValue()V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_8
const-string/jumbo v2, "x"
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->x:F
float-to-double v3, v3
invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string/jumbo v2, "y"
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->centerPoint:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->y:F
float-to-double v3, v3
invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string/jumbo v2, "degree"
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->degree:I
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v2, "width"
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->width:F
float-to-double v3, v3
invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string/jumbo v2, "prog"
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->progressive:F
float-to-double v3, v3
invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
:try_end_3b
.catch Lorg/json/JSONException; {:try_start_8 .. :try_end_3b} :catch_3d
move-result-object v2
:goto_3c
return-object v2
:catch_3d
move-exception v0
const/4 v2, 0x0
goto :goto_3c
.end method