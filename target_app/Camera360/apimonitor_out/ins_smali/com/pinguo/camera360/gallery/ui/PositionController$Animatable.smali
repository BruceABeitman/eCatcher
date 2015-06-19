.class abstract Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;
.super Ljava/lang/Object;
.source "PositionController.java"
.field public mAnimationDuration:I
.field public mAnimationKind:I
.field public mAnimationStartTime:J
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;-><init>()V
return-void
.end method
.method private static applyInterpolationCurve(IF)F
.registers 5
const/high16 v2, 0x3f80
sub-float v0, v2, p1
packed-switch p0, :pswitch_data_1e
:goto_7
return p1
:pswitch_8
sub-float p1, v2, v0
goto :goto_7
:pswitch_b
mul-float v1, v0, v0
sub-float p1, v2, v1
goto :goto_7
:pswitch_10
mul-float v1, v0, v0
mul-float/2addr v1, v0
sub-float p1, v2, v1
goto :goto_7
:pswitch_16
mul-float v1, v0, v0
mul-float/2addr v1, v0
mul-float/2addr v1, v0
mul-float/2addr v1, v0
sub-float p1, v2, v1
goto :goto_7
:pswitch_data_1e
.packed-switch 0x0
:pswitch_8
:pswitch_b
:pswitch_16
:pswitch_16
:pswitch_16
:pswitch_10
:pswitch_8
:pswitch_8
:pswitch_8
:pswitch_8
.end packed-switch
.end method
.method public advanceAnimation()Z
.registers 11
const-wide/16 v8, -0x1
const-wide/16 v6, -0x2
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->mAnimationStartTime:J
cmp-long v4, v4, v8
if-nez v4, :cond_c
const/4 v4, 0x0
:goto_b
return v4
:cond_c
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->mAnimationStartTime:J
cmp-long v4, v4, v6
if-nez v4, :cond_19
iput-wide v8, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->mAnimationStartTime:J
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->startSnapback()Z
move-result v4
goto :goto_b
:cond_19
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->mAnimationDuration:I
if-nez v4, :cond_29
const/high16 v3, 0x3f80
:goto_1f
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->interpolate(F)Z
move-result v0
if-eqz v0, :cond_27
iput-wide v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->mAnimationStartTime:J
:cond_27
const/4 v4, 0x1
goto :goto_b
:cond_29
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J
move-result-wide v1
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->mAnimationStartTime:J
sub-long v4, v1, v4
long-to-float v4, v4
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;->mAnimationDuration:I
int-to-float v5, v5
div-float v3, v4, v5
goto :goto_1f
.end method
.method protected abstract interpolate(F)Z
.end method
.method public abstract startSnapback()Z
.end method