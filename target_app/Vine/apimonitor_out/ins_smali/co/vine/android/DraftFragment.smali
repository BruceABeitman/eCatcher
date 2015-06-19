.class public Lco/vine/android/DraftFragment;
.super Lco/vine/android/BaseFragment;
.source "DraftFragment.java"
.implements Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.implements Lco/vine/android/player/VideoViewInterface$OnErrorListener;
.implements Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;
.field private static final VISIBILITY_DELAY:I = 0x64
.field private mBitmap:Landroid/graphics/Bitmap;
.field public mCanUnhide:Z
.field private mDimen:I
.field private mExpired:Z
.field private mFadeIn:Landroid/view/animation/Animation;
.field private mFolder:Ljava/io/File;
.field private mHolder:Lco/vine/android/DraftFragment$DraftPageViewHolder;
.field private mIndex:I
.field private mListener:Landroid/view/View$OnClickListener;
.field private mProgress:I
.field private mQuickFadeOut:Landroid/view/animation/Animation;
.field private mSelected:Z
.field private final mStartPlayingRunnable:Ljava/lang/Runnable;
.field private mThumbUrl:Ljava/lang/String;
.field private mVideoUrl:Ljava/lang/String;
.field private mVideoView:Lco/vine/android/player/SdkVideoView;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/DraftFragment;->mCanUnhide:Z
new-instance v0, Lco/vine/android/DraftFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/DraftFragment$1;-><init>(Lco/vine/android/DraftFragment;)V
iput-object v0, p0, Lco/vine/android/DraftFragment;->mStartPlayingRunnable:Ljava/lang/Runnable;
return-void
.end method
.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/io/File;II)V
.registers 9
invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/DraftFragment;->mCanUnhide:Z
new-instance v0, Lco/vine/android/DraftFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/DraftFragment$1;-><init>(Lco/vine/android/DraftFragment;)V
iput-object v0, p0, Lco/vine/android/DraftFragment;->mStartPlayingRunnable:Ljava/lang/Runnable;
iput p2, p0, Lco/vine/android/DraftFragment;->mIndex:I
iput-boolean p1, p0, Lco/vine/android/DraftFragment;->mSelected:Z
iput-object p3, p0, Lco/vine/android/DraftFragment;->mVideoUrl:Ljava/lang/String;
iput-object p5, p0, Lco/vine/android/DraftFragment;->mFolder:Ljava/io/File;
iput p6, p0, Lco/vine/android/DraftFragment;->mProgress:I
iput-object p4, p0, Lco/vine/android/DraftFragment;->mThumbUrl:Ljava/lang/String;
iput p7, p0, Lco/vine/android/DraftFragment;->mDimen:I
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/DraftFragment;->mExpired:Z
return-void
.end method
.method static synthetic access$000(Lco/vine/android/DraftFragment;)Lco/vine/android/player/SdkVideoView;
.registers 2
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
return-object v0
.end method
.method private onSelected()V
.registers 1
invoke-virtual {p0}, Lco/vine/android/DraftFragment;->resumePlayer()V
return-void
.end method
.method private onUnselected()V
.registers 2
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V
return-void
.end method
.method public getProgressView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/DraftFragment;->mHolder:Lco/vine/android/DraftFragment$DraftPageViewHolder;
iget-object v0, v0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->progressView:Lco/vine/android/recorder/ProgressView;
return-object v0
.end method
.method public getThumbnailView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/DraftFragment;->mHolder:Lco/vine/android/DraftFragment$DraftPageViewHolder;
iget-object v0, v0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->thumb:Landroid/widget/ImageView;
return-object v0
.end method
.method public isExpired()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/DraftFragment;->mExpired:Z
return v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 21
invoke-virtual/range {p0 .. p0}, Lco/vine/android/DraftFragment;->getResources()Landroid/content/res/Resources;
move-result-object v9
const v13, 0x7f030036
const/4 v14, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-virtual {v0, v13, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v11
new-instance v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mVideoUrl:Ljava/lang/String;
invoke-direct {v4, v11, v13}, Lco/vine/android/DraftFragment$DraftPageViewHolder;-><init>(Landroid/view/View;Ljava/lang/String;)V
const v13, 0x7f0b006a
invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v7
const v13, 0x7f0b0033
invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v3
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->draftContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;
add-int v13, v7, v3
iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->draftContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const v13, 0x7f0a00d6
invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v12
check-cast v12, Landroid/widget/RelativeLayout;
const/4 v13, 0x1
invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V
invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v6
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/DraftFragment;->mDimen:I
iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/DraftFragment;->mDimen:I
iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual {v12, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mFolder:Ljava/io/File;
invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mListener:Landroid/view/View$OnClickListener;
invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->progressView:Lco/vine/android/recorder/ProgressView;
invoke-virtual {v13}, Lco/vine/android/recorder/ProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/DraftFragment;->mDimen:I
iput v13, v8, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->progressView:Lco/vine/android/recorder/ProgressView;
invoke-virtual {v13, v8}, Lco/vine/android/recorder/ProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->progressView:Lco/vine/android/recorder/ProgressView;
move-object/from16 v0, p0
iget v14, v0, Lco/vine/android/DraftFragment;->mProgress:I
int-to-float v14, v14
const v15, 0x45bb8000
div-float/2addr v14, v15
invoke-virtual {v13, v14}, Lco/vine/android/recorder/ProgressView;->setProgressRatio(F)V
const v13, 0x7f0a00d4
invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v6
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/DraftFragment;->mDimen:I
iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual/range {p0 .. p0}, Lco/vine/android/DraftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v13
check-cast v13, Lco/vine/android/AbstractRecordingActivity;
invoke-virtual {v13}, Lco/vine/android/AbstractRecordingActivity;->getScreenSize()Landroid/graphics/Point;
move-result-object v13
iget v13, v13, Landroid/graphics/Point;->y:I
iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mThumbUrl:Ljava/lang/String;
invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v13
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/DraftFragment;->mBitmap:Landroid/graphics/Bitmap;
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->thumb:Landroid/widget/ImageView;
invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/DraftFragment;->mDimen:I
iput v13, v10, Landroid/view/ViewGroup$LayoutParams;->height:I
move-object/from16 v0, p0
iget v13, v0, Lco/vine/android/DraftFragment;->mDimen:I
iput v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->thumb:Landroid/widget/ImageView;
invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->thumb:Landroid/widget/ImageView;
new-instance v14, Lco/vine/android/drawable/RecyclableBitmapDrawable;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/DraftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v15
invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/DraftFragment;->mBitmap:Landroid/graphics/Bitmap;
move-object/from16 v16, v0
invoke-direct/range {v14 .. v16}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->thumb:Landroid/widget/ImageView;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V
move-object/from16 v0, p0
iput-object v4, v0, Lco/vine/android/DraftFragment;->mHolder:Lco/vine/android/DraftFragment$DraftPageViewHolder;
iget-object v13, v4, Lco/vine/android/DraftFragment$DraftPageViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/DraftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v13
check-cast v13, Lco/vine/android/AbstractRecordingActivity;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v13, v14}, Lco/vine/android/AbstractRecordingActivity;->addPlayerToPool(Lco/vine/android/player/SdkVideoView;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
move-object/from16 v0, p0
invoke-virtual {v13, v0}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Lco/vine/android/player/SdkVideoView;->setKeepScreenOn(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Lco/vine/android/player/SdkVideoView;->setLooping(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
move-object/from16 v0, p0
invoke-virtual {v13, v0}, Lco/vine/android/player/SdkVideoView;->setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
move-object/from16 v0, p0
invoke-virtual {v13, v0}, Lco/vine/android/player/SdkVideoView;->setSurfaceReadyListener(Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/DraftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v13
const v14, 0x7f04000d
invoke-static {v13, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v13
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/DraftFragment;->mFadeIn:Landroid/view/animation/Animation;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/DraftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v13
const v14, 0x7f040013
invoke-static {v13, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v13
move-object/from16 v0, p0
iput-object v13, v0, Lco/vine/android/DraftFragment;->mQuickFadeOut:Landroid/view/animation/Animation;
const/4 v13, 0x1
invoke-virtual {v11, v13}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
const/high16 v13, 0x10
invoke-virtual {v11, v13}, Landroid/view/View;->setDrawingCacheQuality(I)V
return-object v11
.end method
.method public onDestroyView()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseFragment;->onDestroyView()V
iget-object v0, p0, Lco/vine/android/DraftFragment;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/DraftFragment;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_c
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
if-eqz v0, :cond_15
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->suspend()V
:cond_15
return-void
.end method
.method public onError(Lco/vine/android/player/VideoViewInterface;II)Z
.registers 7
invoke-virtual {p0}, Lco/vine/android/DraftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/AbstractRecordingActivity;
if-eqz v0, :cond_13
iget-object v1, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
iget-object v1, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lco/vine/android/player/SdkVideoView;->retryOpenVideo(Z)Z
:cond_13
const/4 v1, 0x1
return v1
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lco/vine/android/DraftFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V
:cond_c
const-string v1, " - Lco/vine/android/DraftFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepared(Lco/vine/android/player/VideoViewInterface;)V
.registers 6
iget-boolean v0, p0, Lco/vine/android/DraftFragment;->mSelected:Z
if-eqz v0, :cond_16
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->isPlaying()Z
move-result v0
if-nez v0, :cond_16
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->start()V
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
iget-object v1, p0, Lco/vine/android/DraftFragment;->mStartPlayingRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/player/SdkVideoView;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_16
return-void
.end method
.method public onSurfaceTextureAvailable(Lco/vine/android/player/SdkVideoView;)V
.registers 3
const/4 v0, 0x4
invoke-virtual {p1, v0}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->startOpenVideo()V
return-void
.end method
.method public pausePlayer()V
.registers 2
iget-boolean v0, p0, Lco/vine/android/DraftFragment;->mSelected:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->canPause()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V
:cond_11
return-void
.end method
.method public release()V
.registers 2
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->suspend()V
return-void
.end method
.method public resumePlayer()V
.registers 3
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
iget-object v1, p0, Lco/vine/android/DraftFragment;->mVideoUrl:Ljava/lang/String;
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->isPathPlaying(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V
:goto_17
return-void
:cond_18
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isSurfaceReady()Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
iget-object v1, p0, Lco/vine/android/DraftFragment;->mVideoUrl:Ljava/lang/String;
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V
goto :goto_17
:cond_2e
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
iget-object v1, p0, Lco/vine/android/DraftFragment;->mVideoUrl:Ljava/lang/String;
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
goto :goto_17
.end method
.method public setExpired(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/DraftFragment;->mExpired:Z
return-void
.end method
.method public setListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/DraftFragment;->mListener:Landroid/view/View$OnClickListener;
return-void
.end method
.method public setSelected(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/DraftFragment;->mSelected:Z
if-eqz p1, :cond_8
invoke-direct {p0}, Lco/vine/android/DraftFragment;->onSelected()V
:goto_7
return-void
:cond_8
invoke-direct {p0}, Lco/vine/android/DraftFragment;->onUnselected()V
goto :goto_7
.end method
.method public showImage()V
.registers 3
iget-object v0, p0, Lco/vine/android/DraftFragment;->mHolder:Lco/vine/android/DraftFragment$DraftPageViewHolder;
iget-object v0, v0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->thumb:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/DraftFragment;->mHolder:Lco/vine/android/DraftFragment$DraftPageViewHolder;
iget-object v0, v0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
return-void
.end method