.class  Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;
.super Ljava/lang/Object;
.source "Paper.java"
.field private static final ABSORB_TIME:I = 0xc8
.field private static final RELEASE_TIME:I = 0x1f4
.field private static final STATE_ABSORB:I = 0x2
.field private static final STATE_IDLE:I = 0x0
.field private static final STATE_PULL:I = 0x1
.field private static final STATE_RELEASE:I = 0x3
.field private static final TAG:Ljava/lang/String; = "EdgeAnimation"
.field private static final VELOCITY_FACTOR:F = 0.1f
.field private mDuration:J
.field private final mInterpolator:Landroid/view/animation/Interpolator;
.field private mStartTime:J
.field private mState:I
.field private mValue:F
.field private mValueFinish:F
.field private mValueStart:F
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
return-void
.end method
.method private now()J
.registers 3
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J
move-result-wide v0
return-wide v0
.end method
.method private startAnimation(FFJI)V
.registers 8
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValueStart:F
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValueFinish:F
iput-wide p3, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mDuration:J
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->now()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mStartTime:J
iput p5, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
return-void
.end method
.method public getValue()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
return v0
.end method
.method public onAbsorb(F)V
.registers 8
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
const v1, 0x3dcccccd
mul-float/2addr v1, p1
add-float/2addr v0, v1
const/high16 v1, -0x4080
const/high16 v3, 0x3f80
invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v2
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
const-wide/16 v3, 0xc8
const/4 v5, 0x2
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->startAnimation(FFJI)V
return-void
.end method
.method public onPull(F)V
.registers 5
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_6
:goto_5
return-void
:cond_6
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
add-float/2addr v0, p1
const/high16 v1, -0x4080
const/high16 v2, 0x3f80
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
goto :goto_5
.end method
.method public onRelease()V
.registers 7
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
if-eqz v0, :cond_9
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_a
:cond_9
:goto_9
return-void
:cond_a
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
const/4 v2, 0x0
const-wide/16 v3, 0x1f4
const/4 v5, 0x3
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->startAnimation(FFJI)V
goto :goto_9
.end method
.method public update()Z
.registers 12
const/4 v0, 0x0
const/high16 v5, 0x3f80
const/4 v2, 0x0
const/4 v8, 0x1
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
if-nez v1, :cond_a
:goto_9
return v0
:cond_a
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
if-ne v1, v8, :cond_10
move v0, v8
goto :goto_9
:cond_10
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->now()J
move-result-wide v3
iget-wide v9, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mStartTime:J
sub-long/2addr v3, v9
long-to-float v1, v3
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mDuration:J
long-to-float v3, v3
div-float/2addr v1, v3
invoke-static {v1, v2, v5}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v7
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
const/4 v3, 0x2
if-ne v1, v3, :cond_3c
move v6, v7
:goto_26
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValueStart:F
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValueFinish:F
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValueStart:F
sub-float/2addr v3, v4
mul-float/2addr v3, v6
add-float/2addr v1, v3
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
cmpl-float v1, v7, v5
if-ltz v1, :cond_3a
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
packed-switch v1, :pswitch_data_50
:goto_3a
:cond_3a
move v0, v8
goto :goto_9
:cond_3c
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;
invoke-interface {v1, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v6
goto :goto_26
:pswitch_43
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mValue:F
const-wide/16 v3, 0x1f4
const/4 v5, 0x3
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->startAnimation(FFJI)V
goto :goto_3a
:pswitch_4d
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeAnimation;->mState:I
goto :goto_3a
:pswitch_data_50
.packed-switch 0x2
:pswitch_43
:pswitch_4d
.end packed-switch
.end method