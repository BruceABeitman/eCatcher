.class public Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
.super Landroid/widget/TextView;
.source "PGEditAutoHideTextView.java"
.field private static final AUTO:I = 0x1
.field private static final SEND_TIME:J = 0xc8L
.field private autoHideHandler:Landroid/os/Handler;
.field private mHideAnimation:Landroid/view/animation/AlphaAnimation;
.field private mLastSetRateTime:J
.field private mNowAlpha:F
.field private mShowAnimation:Landroid/view/animation/AlphaAnimation;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->autoHideHandler:Landroid/os/Handler;
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->autoHideHandler:Landroid/os/Handler;
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->autoHideHandler:Landroid/os/Handler;
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->init()V
return-void
.end method
.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)J
.registers 3
iget-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mLastSetRateTime:J
return-wide v0
.end method
.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->autoHideHandler:Landroid/os/Handler;
return-object v0
.end method
.method private init()V
.registers 8
const/4 v6, 0x0
const/high16 v5, 0x3f80
const/4 v4, 0x0
const/4 v3, 0x1
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mShowAnimation:Landroid/view/animation/AlphaAnimation;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mShowAnimation:Landroid/view/animation/AlphaAnimation;
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mShowAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mShowAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mHideAnimation:Landroid/view/animation/AlphaAnimation;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mHideAnimation:Landroid/view/animation/AlphaAnimation;
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mHideAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mHideAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mHideAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->autoHideHandler:Landroid/os/Handler;
const-wide/16 v1, 0xc8
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method
.method private showForAlpha()V
.registers 3
const/high16 v1, 0x3f80
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mNowAlpha:F
cmpl-float v0, v0, v1
if-eqz v0, :cond_f
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mNowAlpha:F
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mShowAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_f
return-void
.end method
.method public destroyAutoHide()V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->autoHideHandler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.method public hideForAlpha()V
.registers 3
const/4 v1, 0x0
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mNowAlpha:F
cmpl-float v0, v0, v1
if-eqz v0, :cond_e
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mNowAlpha:F
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mHideAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_e
return-void
.end method
.method public setRateTextView(F)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const/high16 v1, 0x42c8
mul-float/2addr v1, p1
float-to-int v1, v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "%"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mLastSetRateTime:J
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->showForAlpha()V
return-void
.end method