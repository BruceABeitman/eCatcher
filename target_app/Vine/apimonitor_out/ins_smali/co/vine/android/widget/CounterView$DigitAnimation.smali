.class public Lco/vine/android/widget/CounterView$DigitAnimation;
.super Ljava/lang/Object;
.source "CounterView.java"
.field public mAnimatingCount:J
.field public mAnimationDuration:J
.field public mAnimationStartTime:J
.field public mCurrentAnimatingToDigit:I
.field private final mDivider:D
.field public mDrawingDigit:I
.field public final mIndexFromRight:I
.field public mIsAnimating:Z
.field private final mNextDivider:D
.field final synthetic this$0:Lco/vine/android/widget/CounterView;
.method public constructor <init>(Lco/vine/android/widget/CounterView;IDJ)V
.registers 11
iput-object p1, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->this$0:Lco/vine/android/widget/CounterView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
const-wide/high16 v0, 0x4024
iget v2, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
int-to-double v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDivider:D
const-wide/high16 v0, 0x4024
iget v2, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
add-int/lit8 v2, v2, 0x1
int-to-double v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mNextDivider:D
iget v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
if-lez v0, :cond_75
long-to-double v0, p5
iget-wide v2, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDivider:D
div-double/2addr v0, v2
const-wide/high16 v2, 0x4024
rem-double/2addr v0, v2
double-to-int v0, v0
iput v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
:goto_2d
iput-wide p5, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J
const-wide/16 v0, 0x0
cmpl-double v0, p3, v0
if-lez v0, :cond_8a
#getter for: Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;
invoke-static {p1}, Lco/vine/android/widget/CounterView;->access$000(Lco/vine/android/widget/CounterView;)Lco/vine/android/widget/CounterView$AnimationMode;
move-result-object v0
iget-boolean v0, v0, Lco/vine/android/widget/CounterView$AnimationMode;->continuousAnimation:Z
if-eqz v0, :cond_84
iget v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
if-lez v0, :cond_7d
const-wide/high16 v0, 0x3ff0
iget v2, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
mul-int/lit8 v2, v2, 0xa
int-to-double v2, v2
div-double v2, p3, v2
div-double/2addr v0, v2
double-to-long v0, v0
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
:goto_4e
sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
iget-wide v1, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
iget-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
invoke-static {}, Lco/vine/android/widget/CounterView;->access$100()I
move-result v2
int-to-long v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
iget-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
invoke-static {}, Lco/vine/android/widget/CounterView;->access$200()I
move-result v2
int-to-long v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
return-void
:cond_75
const-wide/16 v0, 0xa
rem-long v0, p5, v0
long-to-int v0, v0
iput v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
goto :goto_2d
:cond_7d
const-wide/high16 v0, 0x3ff0
div-double/2addr v0, p3
double-to-long v0, v0
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
goto :goto_4e
:cond_84
const-wide/32 v0, 0x7fffffff
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
goto :goto_4e
:cond_8a
const-wide/32 v0, 0x7fffffff
iput-wide v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
goto :goto_4e
.end method
.method public invalidate(JJZ)Z
.registers 14
iget v0, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
iget-boolean v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIsAnimating:Z
if-eqz v4, :cond_33
iget-wide v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationStartTime:J
sub-long v4, p1, v4
iget-wide v6, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J
cmp-long v4, v4, v6
if-lez v4, :cond_33
iget v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
if-lez v4, :cond_6b
iget-wide v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J
long-to-double v4, v4
iget-wide v6, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDivider:D
div-double/2addr v4, v6
const-wide/high16 v6, 0x4024
rem-double/2addr v4, v6
double-to-int v0, v4
:goto_1e
iget-object v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->this$0:Lco/vine/android/widget/CounterView;
#getter for: Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;
invoke-static {v4}, Lco/vine/android/widget/CounterView;->access$000(Lco/vine/android/widget/CounterView;)Lco/vine/android/widget/CounterView$AnimationMode;
move-result-object v4
iget-boolean v4, v4, Lco/vine/android/widget/CounterView$AnimationMode;->pedometerAnimation:Z
if-eqz v4, :cond_72
iget v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
add-int/lit8 v4, v4, 0x1
rem-int/lit8 v4, v4, 0xa
iput v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
:goto_30
const/4 v4, 0x0
iput-boolean v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIsAnimating:Z
:cond_33
const/4 v3, 0x0
if-nez p5, :cond_3a
iget v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
if-eq v0, v4, :cond_6a
:cond_3a
iget-boolean v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIsAnimating:Z
if-nez v4, :cond_6a
const/4 v4, 0x1
iput-boolean v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIsAnimating:Z
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationStartTime:J
iget-wide v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J
long-to-double v4, v4
iget-wide v6, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mNextDivider:D
div-double/2addr v4, v6
double-to-int v1, v4
long-to-double v4, p3
iget-wide v6, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mNextDivider:D
div-double/2addr v4, v6
double-to-int v2, v4
if-eq v1, v2, :cond_77
const/4 v3, 0x1
:goto_56
iput-wide p3, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J
iget-object v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->this$0:Lco/vine/android/widget/CounterView;
#getter for: Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;
invoke-static {v4}, Lco/vine/android/widget/CounterView;->access$000(Lco/vine/android/widget/CounterView;)Lco/vine/android/widget/CounterView$AnimationMode;
move-result-object v4
iget-boolean v4, v4, Lco/vine/android/widget/CounterView$AnimationMode;->pedometerAnimation:Z
if-eqz v4, :cond_79
iget v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
add-int/lit8 v4, v4, 0x1
rem-int/lit8 v4, v4, 0xa
iput v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I
:goto_6a
:cond_6a
return v3
:cond_6b
iget-wide v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J
const-wide/16 v6, 0xa
rem-long/2addr v4, v6
long-to-int v0, v4
goto :goto_1e
:cond_72
iget v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I
iput v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I
goto :goto_30
:cond_77
const/4 v3, 0x0
goto :goto_56
:cond_79
iget v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mIndexFromRight:I
if-lez v4, :cond_8a
iget-wide v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J
long-to-double v4, v4
iget-wide v6, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mDivider:D
div-double/2addr v4, v6
const-wide/high16 v6, 0x4024
rem-double/2addr v4, v6
double-to-int v4, v4
iput v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I
goto :goto_6a
:cond_8a
iget-wide v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J
const-wide/16 v6, 0xa
rem-long/2addr v4, v6
long-to-int v4, v4
iput v4, p0, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I
goto :goto_6a
.end method