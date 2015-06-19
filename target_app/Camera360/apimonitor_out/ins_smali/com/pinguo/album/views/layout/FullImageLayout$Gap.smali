.class  Lcom/pinguo/album/views/layout/FullImageLayout$Gap;
.super Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;
.source "FullImageLayout.java"
.field public mCurrentGap:I
.field public mDefaultSize:I
.field public mFromGap:I
.field public mToGap:I
.field final synthetic this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
.method private constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$Gap;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V
return-void
.end method
.method public doAnimation(II)Z
.registers 5
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
if-ne v0, p1, :cond_a
const/16 v0, 0x9
if-eq p2, v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
iput p2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationKind:I
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mFromGap:I
iput p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mToGap:I
invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->startTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationStartTime:J
invoke-static {}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$15()[I
move-result-object v0
iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationKind:I
aget v0, v0, v1
iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationDuration:I
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->advanceAnimation()Z
const/4 v0, 0x1
goto :goto_9
.end method
.method protected interpolate(F)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v3, 0x3f80
cmpl-float v3, p1, v3
if-ltz v3, :cond_d
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mToGap:I
iput v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
:cond_c
:goto_c
return v1
:cond_d
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mFromGap:I
int-to-float v3, v3
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mToGap:I
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mFromGap:I
sub-int/2addr v4, v5
int-to-float v4, v4
mul-float/2addr v4, p1
add-float/2addr v3, v4
float-to-int v3, v3
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationKind:I
const/16 v4, 0x9
if-ne v3, v4, :cond_2e
invoke-static {p1}, Lcom/pinguo/album/animations/CaptureAnim;->calculateScale(F)F
move-result v0
iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
int-to-float v1, v1
mul-float/2addr v1, v0
float-to-int v1, v1
iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
move v1, v2
goto :goto_c
:cond_2e
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mCurrentGap:I
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mToGap:I
if-eq v3, v4, :cond_c
move v1, v2
goto :goto_c
.end method
.method public startSnapback()Z
.registers 5
iget-wide v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mAnimationStartTime:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->mDefaultSize:I
const/4 v1, 0x2
invoke-virtual {p0, v0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout$Gap;->doAnimation(II)Z
move-result v0
goto :goto_9
.end method