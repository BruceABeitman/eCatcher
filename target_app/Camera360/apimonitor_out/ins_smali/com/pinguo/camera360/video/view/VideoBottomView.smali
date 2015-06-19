.class public Lcom/pinguo/camera360/video/view/VideoBottomView;
.super Landroid/widget/LinearLayout;
.source "VideoBottomView.java"
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;
.field private static final MOVE_DISTANCE:F = 100.0f
.field private mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
.field private mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
.field private mShutterBtn:Landroid/widget/ImageButton;
.field private mSnapshotBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
.field private mTouchDownX:F
.field private mTouchDownY:F
.field private mTouchUpX:F
.field private mTouchUpY:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownX:F
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownY:F
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpX:F
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpY:F
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownX:F
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownY:F
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpX:F
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpY:F
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/video/view/VideoBottomView;)Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
return-object v0
.end method
.method private clearTouchValue()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownX:F
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownY:F
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpX:F
iput v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpY:F
return-void
.end method
.method public closeModePickerBtn()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getCurrentState()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->close()V
:cond_e
return-void
.end method
.method public getThumbnailView()Lcom/pinguo/camera360/camera/view/ThumbnailView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
return-object v0
.end method
.method public initTopViewListener(Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/video/view/VideoBottomView; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_7a
:goto_8
:cond_8
const-string v1, " - Lcom/pinguo/camera360/video/view/VideoBottomView; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
const v0, 0x7f0a0173
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
const/4 v1, 0x4
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V
goto :goto_8
:sswitch_1a
const v0, 0x7f0a023a
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
const/4 v1, 0x5
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V
goto :goto_8
:sswitch_2b
const v0, 0x7f0a023b
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V
const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraModeUsed(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
const/4 v1, 0x6
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V
goto :goto_8
:sswitch_42
const v0, 0x7f0a0603
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
const/4 v1, 0x7
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V
goto :goto_8
:sswitch_53
const v0, 0x7f0a023e
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->isClickable()Z
move-result v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->open()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/pinguo/camera360/video/view/VideoBottomView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/video/view/VideoBottomView$1;-><init>(Lcom/pinguo/camera360/video/view/VideoBottomView;)V
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_8
:sswitch_data_7a
.sparse-switch
0x7f0a0239 -> :sswitch_9
0x7f0a023b -> :sswitch_2b
0x7f0a023e -> :sswitch_53
0x7f0a0602 -> :sswitch_1a
0x7f0a0603 -> :sswitch_42
.end sparse-switch
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V
const v0, 0x7f0a023b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mShutterBtn:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mShutterBtn:Landroid/widget/ImageButton;
invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0239
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/ThumbnailView;
iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a023e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/AnimCircleView;
iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0603
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mSnapshotBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mSnapshotBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 8
const/4 v1, 0x1
const/high16 v4, 0x42c8
const/4 v3, 0x0
const/4 v0, 0x0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-nez v2, :cond_18
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownX:F
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownY:F
:goto_17
return v0
:cond_18
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-ne v2, v1, :cond_6c
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpX:F
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpY:F
iget v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpX:F
iget v2, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownX:F
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v1, v1, v4
if-lez v1, :cond_3d
iget v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownX:F
cmpl-float v1, v1, v3
if-nez v1, :cond_50
:cond_3d
iget v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchUpY:F
iget v2, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownY:F
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v1, v1, v4
if-lez v1, :cond_54
iget v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mTouchDownY:F
cmpl-float v1, v1, v3
if-eqz v1, :cond_54
:cond_50
invoke-direct {p0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->clearTouchValue()V
goto :goto_17
:cond_54
iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mShutterBtn:Landroid/widget/ImageButton;
invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I
move-result v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
if-eqz v1, :cond_68
iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mBottomViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
const/4 v2, 0x6
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V
:cond_68
invoke-direct {p0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->clearTouchValue()V
goto :goto_17
:cond_6c
move v0, v1
goto :goto_17
.end method
.method public setOrientation(IZ)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mSnapshotBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
return-void
.end method
.method public updateBottomUI(Z)V
.registers 6
const/4 v1, 0x4
const/4 v3, 0x0
if-eqz p1, :cond_2e
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isVideoSnapshotSupported()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mSnapshotBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mShutterBtn:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f020103
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_2d
return-void
:cond_2e
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mShutterBtn:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f02010a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoBottomView;->mSnapshotBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
goto :goto_2d
.end method