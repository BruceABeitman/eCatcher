.class public Lcom/pinguo/camera360/video/view/PGVideoView;
.super Lcom/pinguo/camera360/video/view/AbsVideoView;
.source "PGVideoView.java"
.field private static final TAG:Ljava/lang/String;
.field public mAdvanceSettingIndicator:Landroid/widget/ImageView;
.field public mCameraOperationContainer:Landroid/widget/RelativeLayout;
.field private mContext:Landroid/content/Context;
.field public mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
.field private mRecordingIcon:Landroid/widget/ImageView;
.field private mRecordingTimeView:Landroid/widget/TextView;
.field private mTakePictureMask:Landroid/view/View;
.field public mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
.field public mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
.field public mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;
.field public mVideoQualityIndicator:Landroid/widget/TextView;
.field private mVideoTouchView:Lcom/pinguo/camera360/video/view/VideoTouchView;
.field private mVideoViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
.field private mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/video/view/PGVideoView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/video/view/PGVideoView;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
.registers 7
invoke-direct {p0}, Lcom/pinguo/camera360/video/view/AbsVideoView;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mContext:Landroid/content/Context;
const v2, 0x7f0a0607
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mCameraOperationContainer:Landroid/widget/RelativeLayout;
const v2, 0x7f0a060a
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/video/view/VideoTopMenuView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
const v2, 0x7f0a0608
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/video/view/VideoBottomView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;
const v2, 0x7f0a0606
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/lib/camera/view/PreviewView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
const v2, 0x7f0a03c8
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
const v2, 0x7f0a0285
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/camera/view/TimerCameraView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
const v2, 0x7f0a03c7
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mAdvanceSettingIndicator:Landroid/widget/ImageView;
const v2, 0x7f0a0605
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
const v2, 0x7f0a0604
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingIcon:Landroid/widget/ImageView;
const v2, 0x7f0a03e7
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/video/view/VideoTouchView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoTouchView:Lcom/pinguo/camera360/video/view/VideoTouchView;
const v2, 0x7f0a0609
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoQualityIndicator:Landroid/widget/TextView;
const v2, 0x7f0a060c
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTakePictureMask:Landroid/view/View;
invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateAdvanceSettingIndicator()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I
move-result v2
if-lez v2, :cond_a1
const/4 v1, 0x1
:goto_95
iget-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->updateTimerCamera(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setVisibility(I)V
return-void
:cond_a1
const/4 v1, 0x0
goto :goto_95
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/video/view/PGVideoView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTakePictureMask:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/video/view/PGVideoView;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/video/view/PGVideoView;->showOperationView(Z)V
return-void
.end method
.method private showOperationView(Z)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mCameraOperationContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mCameraOperationContainer:Landroid/widget/RelativeLayout;
const-wide/16 v1, 0xc8
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeIn(Landroid/view/View;J)V
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mCameraOperationContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mCameraOperationContainer:Landroid/widget/RelativeLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
goto :goto_e
.end method
.method public doTakeAnimation()V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTakePictureMask:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTakePictureMask:Landroid/view/View;
const/4 v1, 0x0
const/high16 v2, 0x3f80
const-wide/16 v3, 0xc8
new-instance v5, Lcom/pinguo/camera360/video/view/PGVideoView$1;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/video/view/PGVideoView$1;-><init>(Lcom/pinguo/camera360/video/view/PGVideoView;)V
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeOut(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method public hideRecordingTime()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingIcon:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_f
return-void
.end method
.method public initVideoViewListener(Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->initTopViewListener(Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/video/view/VideoBottomView;->initTopViewListener(Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoTouchView:Lcom/pinguo/camera360/video/view/VideoTouchView;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/video/view/VideoTouchView;->setGestureListener(Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;)V
return-void
.end method
.method public initZoomControlView(Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->isZoomSupported(Z)Z
move-result v1
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getMaxZoom()I
move-result v2
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getZoom()I
move-result v0
iget-object v3, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v3, v1, v2, v0, p1}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->updateView(ZIILcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;)V
return-void
.end method
.method public isInTakeAnimation()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTakePictureMask:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public setRecordingText(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_9
return-void
.end method
.method public setRecordingTextColor(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_9
return-void
.end method
.method public setZoomIndex(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomIndex(I)V
return-void
.end method
.method public showOrHideZoomControlView(ZZ)Z
.registers 8
const/4 v1, 0x1
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
move-result-object v2
invoke-virtual {v2, p2}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->isZoomSupported(Z)Z
move-result v0
if-eqz p1, :cond_15
if-eqz v0, :cond_15
iget-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
const-wide/16 v3, 0xbb8
invoke-virtual {v2, v1, v3, v4}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setAutoVisible(ZJ)V
:goto_14
:cond_14
return v1
:cond_15
iget-object v2, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->hide()V
if-eqz p1, :cond_14
const/4 v1, 0x0
goto :goto_14
.end method
.method public showRecordingTime()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingTimeView:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mRecordingIcon:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_f
return-void
.end method
.method public updateAdvanceSettingIndicator()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->hasUseAdvanceParameter()Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mAdvanceSettingIndicator:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mAdvanceSettingIndicator:Landroid/widget/ImageView;
const v1, 0x7f020184
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_18
return-void
:cond_19
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mAdvanceSettingIndicator:Landroid/widget/ImageView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mAdvanceSettingIndicator:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_18
.end method
.method public updateThumbView(ZLandroid/graphics/Bitmap;Z)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;
invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/VideoBottomView;->getThumbnailView()Lcom/pinguo/camera360/camera/view/ThumbnailView;
move-result-object v0
if-eqz v0, :cond_15
if-nez p1, :cond_16
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setVisibility(I)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setEnabled(Z)V
invoke-virtual {v0, p2, p3}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setThumb(Landroid/graphics/Bitmap;Z)V
:goto_15
:cond_15
return-void
:cond_16
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setVisibility(I)V
goto :goto_15
.end method
.method public updateTopMenuBar(Landroid/app/Activity;ZZZZ)V
.registers 12
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->update(Landroid/app/Activity;ZZZZ)V
return-void
.end method
.method public updateTopMenuBarCloudPopView(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->updateCloudPopView(I)V
return-void
.end method
.method public updateVideoQualityIndicator()V
.registers 8
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;
move-result-object v4
const-string/jumbo v5, "pref_video_quality_key"
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
if-eqz v0, :cond_46
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v4
array-length v4, v4
if-lez v4, :cond_46
iget-object v4, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mContext:Landroid/content/Context;
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const-string/jumbo v5, "string"
iget-object v6, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v2
move-object v1, v3
if-eqz v2, :cond_3a
iget-object v4, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
:cond_3a
iget-object v4, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoQualityIndicator:Landroid/widget/TextView;
invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoQualityIndicator:Landroid/widget/TextView;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
:goto_45
return-void
:cond_46
iget-object v4, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoQualityIndicator:Landroid/widget/TextView;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_45
.end method
.method public updateVideoView(Z)V
.registers 6
const/4 v3, 0x4
const/4 v2, 0x0
if-eqz p1, :cond_51
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/PGVideoView;->showRecordingTime()V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoQualityIndicator:Landroid/widget/TextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->isZoomSupported(Z)Z
move-result v0
if-nez v0, :cond_20
invoke-virtual {p0, v2, p1}, Lcom/pinguo/camera360/video/view/PGVideoView;->showOrHideZoomControlView(ZZ)Z
:cond_20
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M032:Z
if-eqz v0, :cond_34
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_JELLY_BEAN_MR1:Z
if-nez v0, :cond_34
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomIndex(I)V
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->setZoom(I)V
:cond_34
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;
iget-object v1, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f070032
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/view/VideoBottomView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mAdvanceSettingIndicator:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_4b
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/video/view/VideoBottomView;->updateBottomUI(Z)V
return-void
:cond_51
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/PGVideoView;->hideRecordingTime()V
invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateVideoQualityIndicator()V
invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateAdvanceSettingIndicator()V
iget-object v0, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;
iget-object v1, p0, Lcom/pinguo/camera360/video/view/PGVideoView;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f070069
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/view/VideoBottomView;->setBackgroundColor(I)V
goto :goto_4b
.end method