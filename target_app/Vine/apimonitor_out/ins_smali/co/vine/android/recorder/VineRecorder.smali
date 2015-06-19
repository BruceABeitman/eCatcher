.class public Lco/vine/android/recorder/VineRecorder;
.super Lco/vine/android/recorder/RegularVineRecorder;
.source "VineRecorder.java"
.implements Landroid/view/View$OnTouchListener;
.implements Lco/vine/android/recorder/RecordController$OnRecorderControllerStateChangedListener;
.implements Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;
.implements Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.implements Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;
.implements Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;
.implements Landroid/view/View$OnKeyListener;
.field private static final JAPANESE_LANG:Ljava/lang/String; = "ja"
.field private static final JAPANESE_MCC:I = 0x1b8
.field private static final REMOVE_THUMBNAIL_MILLIS:J = 0x64L
.field private static final TRANSITION_DURATION:J = 0xfaL
.field private static final TRASH_BRIGHT:I = 0x1
.field private static final TRASH_INVISIBLE:I = 0x2
.field private static final TRASH_VISIBLE:I
.field public detectedInvalidSession:Z
.field private mCameraSwitcher:Landroid/view/ViewGroup;
.field private final mCameraSwitcherId:I
.field private final mCameraSwitcherViewListener:Landroid/view/View$OnClickListener;
.field private final mChangeProgressOverlayVisibilityRunnable:Ljava/lang/Runnable;
.field private mCurrentFrameRate:I
.field private mDefaultColor:I
.field private mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
.field private final mDragSortWidgetId:I
.field private mEditing:Z
.field private mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
.field private mEditorButtons:Landroid/view/View;
.field private mEditorButtonsHeight:I
.field private final mEditorButtonsId:I
.field private mEditorCancelButton:Landroid/view/View;
.field private final mEditorCancelButtonId:I
.field private mEditorDoneButton:Landroid/view/View;
.field private final mEditorDoneButtonId:I
.field private mEnabledColor:I
.field private mFinishButton:Landroid/view/View;
.field private final mFinishButtonId:I
.field private final mFinishClicker:Landroid/view/View$OnClickListener;
.field private mFinishLoadingOverlay:Landroid/view/View;
.field private final mFinishLoadingOverlayId:I
.field private mFlashSwitcher:Landroid/view/View;
.field private final mFlashSwitcherId:I
.field private final mFocusAnimationSet:Landroid/view/animation/AnimationSet;
.field private final mFocusDisabledDrawable:I
.field private final mFocusDismissAnimation:Landroid/view/animation/AlphaAnimation;
.field private final mFocusEnabledDrawable:I
.field private final mFocusIndicator:Landroid/widget/ImageView;
.field private mFocusView:Landroid/view/View;
.field private final mFocusViewResourceId:I
.field private final mGhostButton:Landroid/widget/ToggleButton;
.field private mGhostModeEnabled:Z
.field private final mGhostView:Landroid/widget/ImageView;
.field private mGridSwitch:Landroid/widget/ToggleButton;
.field private final mGridSwitchId:I
.field private mHasPreviewedAlready:Z
.field private final mInitiallyStartedWithEditMode:Z
.field private mIsGridOn:Z
.field private final mIsMessaging:Z
.field private mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
.field private mLastSelectedPosition:I
.field private mLastUpdatedZoom:I
.field private mMediaActionSound:Landroid/media/MediaActionSound;
.field private mPickedUpPosition:I
.field private mPlayButton:Landroid/view/View;
.field private mPlayButtonContainer:Landroid/view/View;
.field private final mPlayButtonContainerId:I
.field private mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
.field private mPlayRefreshButton:Landroid/view/View;
.field private mPlaySound:Z
.field private mPreviewLoadingOverlay:Landroid/view/View;
.field private final mPreviewLoadingOverlayId:I
.field private mProgressOverlay:Landroid/view/View;
.field private final mProgressOverlayId:I
.field private mRecordingOptions:Landroid/view/View;
.field private final mRecordingOptionsRowId:I
.field private mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
.field private mResources:Landroid/content/res/Resources;
.field private mReturnToPreview:Z
.field private mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
.field private mSegmentChangeThread:Ljava/lang/Thread;
.field private mShortAnimTime:I
.field private mStartWithEditMode:Z
.field private final mSwitchFlashViewListener:Landroid/view/View$OnClickListener;
.field private mThumbnailList:Landroid/view/View;
.field private mThumbnailOverlay:Landroid/widget/ImageView;
.field private final mThumbnailOverlayId:I
.field private mThumbnailPadding:I
.field private mThumbnailSegment:Lco/vine/android/recorder/RecordSegment;
.field private mTimeLapseDelay:D
.field  mTimeLapseRunnable:Ljava/lang/Runnable;
.field private mTimelapsing:Z
.field private mTrashCanButton:Landroid/view/View;
.field private final mTrashCanButtonId:I
.field private mTrashUndoContainer:Landroid/view/View;
.field private final mTrashUndoContainerId:I
.field private mUndoButton:Landroid/view/View;
.field private final mUndoButtonId:I
.field private mVideoAttr:Landroid/util/AttributeSet;
.field private mVideoPlayer:Lco/vine/android/player/SdkVideoView;
.field private mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
.field private mZoomSeek:Landroid/widget/SeekBar;
.field private mZoomSeekContainer:Landroid/view/View;
.field private final mZoomSeekContainerId:I
.field private final mZoomSeekId:I
.field private final mZoomSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
.field private final mZoomUpdateRunnable:Ljava/lang/Runnable;
.field private final onCameraReadyRunnable:Ljava/lang/Runnable;
.method public varargs constructor <init>(Lco/vine/android/recorder/RecordSessionVersion;ZLandroid/graphics/Point;ZZLco/vine/android/recorder/RecordingFile;Landroid/app/Activity;Lco/vine/android/player/SdkVideoView;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIILjava/lang/String;Landroid/widget/ToggleButton;ZZIIIILandroid/media/MediaActionSound;[Ljava/lang/CharSequence;)V
.registers 69
if-eqz p44, :cond_1f9
const/16 v3, 0x42
:goto_4
move-object/from16 v2, p0
move-object/from16 v4, p3
move-object/from16 v5, p7
move/from16 v6, p17
move/from16 v7, p18
move/from16 v8, p22
move/from16 v9, p23
move/from16 v10, p31
move/from16 v11, p32
move/from16 v12, p35
move-object/from16 v13, p41
move/from16 v14, p43
move-object/from16 v15, p1
move-object/from16 v16, p50
invoke-direct/range {v2 .. v16}, Lco/vine/android/recorder/RegularVineRecorder;-><init>(ILandroid/graphics/Point;Landroid/app/Activity;IIIIIIILjava/lang/String;ZLco/vine/android/recorder/RecordSessionVersion;[Ljava/lang/CharSequence;)V
const/4 v2, 0x0
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/recorder/VineRecorder;->mGhostModeEnabled:Z
new-instance v2, Lco/vine/android/recorder/RecordSegment;
const-wide/16 v3, 0x0
invoke-direct {v2, v3, v4}, Lco/vine/android/recorder/RecordSegment;-><init>(J)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
new-instance v2, Lco/vine/android/recorder/VineRecorder$1;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$1;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mSwitchFlashViewListener:Landroid/view/View$OnClickListener;
new-instance v2, Lco/vine/android/recorder/VineRecorder$2;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$2;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
new-instance v2, Lco/vine/android/recorder/VineRecorder$3;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$3;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherViewListener:Landroid/view/View$OnClickListener;
new-instance v2, Lco/vine/android/recorder/VineRecorder$4;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$4;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->onCameraReadyRunnable:Ljava/lang/Runnable;
const/4 v2, 0x0
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/recorder/VineRecorder;->mPlaySound:Z
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Lco/vine/android/recorder/VineRecorder;->mLastUpdatedZoom:I
new-instance v2, Lco/vine/android/recorder/VineRecorder$6;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$6;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mFinishClicker:Landroid/view/View$OnClickListener;
new-instance v2, Lco/vine/android/recorder/VineRecorder$7;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$7;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mZoomUpdateRunnable:Ljava/lang/Runnable;
const/4 v2, 0x0
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/recorder/VineRecorder;->mTimelapsing:Z
new-instance v2, Lco/vine/android/recorder/VineRecorder$17;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$17;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mTimeLapseRunnable:Ljava/lang/Runnable;
new-instance v2, Lco/vine/android/recorder/VineRecorder$31;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/recorder/VineRecorder$31;-><init>(Lco/vine/android/recorder/VineRecorder;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mChangeProgressOverlayVisibilityRunnable:Ljava/lang/Runnable;
move/from16 v0, p4
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/VineRecorder;->mReturnToPreview:Z
move/from16 v0, p5
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/VineRecorder;->mHasPreviewedAlready:Z
move/from16 v0, p2
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/VineRecorder;->mStartWithEditMode:Z
move/from16 v0, p2
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/VineRecorder;->mInitiallyStartedWithEditMode:Z
move/from16 v0, p27
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainerId:I
move/from16 v0, p37
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mEditorButtonsHeight:I
move-object/from16 v0, p8
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const/high16 v3, 0x10e
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Lco/vine/android/recorder/VineRecorder;->mShortAnimTime:I
move/from16 v0, p36
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mThumbnailPadding:I
move/from16 v0, p29
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mUndoButtonId:I
move/from16 v0, p21
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mFinishButtonId:I
move-object/from16 v0, p42
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v0, p7
move/from16 v1, p30
invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;
move/from16 v0, p34
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlayId:I
move/from16 v0, p20
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcherId:I
move/from16 v0, p19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherId:I
move/from16 v0, p11
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mGridSwitchId:I
move/from16 v0, p38
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlayId:I
move/from16 v0, p33
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainerId:I
move/from16 v0, p39
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlayId:I
move/from16 v0, p24
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mEditorButtonsId:I
move/from16 v0, p25
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButtonId:I
move/from16 v0, p26
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButtonId:I
move/from16 v0, p28
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mTrashCanButtonId:I
move/from16 v0, p9
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mRecordingOptionsRowId:I
move/from16 v0, p16
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mFocusViewResourceId:I
move/from16 v0, p14
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mFocusEnabledDrawable:I
move/from16 v0, p15
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mFocusDisabledDrawable:I
move/from16 v0, p10
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mDragSortWidgetId:I
move-object/from16 v0, p7
move/from16 v1, p13
invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
move-object/from16 v0, p7
move/from16 v1, p12
invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
const v3, 0x3eb33333
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
invoke-static {v2}, Lco/vine/android/recorder/RecordingAnimations;->getFocusDismissAnimation(Landroid/widget/ImageView;)Landroid/view/animation/AlphaAnimation;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mFocusDismissAnimation:Landroid/view/animation/AlphaAnimation;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mFocusDismissAnimation:Landroid/view/animation/AlphaAnimation;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
invoke-static {v2, v3}, Lco/vine/android/recorder/RecordingAnimations;->getFocusAnimationSet(Landroid/view/animation/AlphaAnimation;Landroid/widget/ImageView;)Landroid/view/animation/AnimationSet;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mFocusAnimationSet:Landroid/view/animation/AnimationSet;
move/from16 v0, p40
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mProgressOverlayId:I
move-object/from16 v0, p49
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mMediaActionSound:Landroid/media/MediaActionSound;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v17
if-eqz v17, :cond_1ba
const-string v2, "ja"
invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1cc
:cond_1ba
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget v2, v2, Landroid/content/res/Configuration;->mcc:I
const/16 v3, 0x1b8
if-ne v2, v3, :cond_1fd
:cond_1cc
const/4 v2, 0x1
:goto_1cd
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/recorder/VineRecorder;->mPlaySound:Z
const-string v2, "Init"
move-object/from16 v0, p0
move-object/from16 v1, p6
invoke-virtual {v0, v2, v1}, Lco/vine/android/recorder/VineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move/from16 v0, p44
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/recorder/VineRecorder;->mIsMessaging:Z
move/from16 v0, p45
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mEnabledColor:I
move/from16 v0, p46
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mDefaultColor:I
move/from16 v0, p47
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainerId:I
move/from16 v0, p48
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mZoomSeekId:I
return-void
:cond_1f9
const/16 v3, 0x3e8
goto/16 :goto_4
:cond_1fd
const/4 v2, 0x0
goto :goto_1cd
.end method
.method static synthetic access$000(Lco/vine/android/recorder/VineRecorder;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->invalidateZoomSlider()V
return-void
.end method
.method static synthetic access$100(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1000(Lco/vine/android/recorder/VineRecorder;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mInitiallyStartedWithEditMode:Z
return v0
.end method
.method static synthetic access$1100(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordSegment;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
return-object v0
.end method
.method static synthetic access$1102(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/RecordSegment;)Lco/vine/android/recorder/RecordSegment;
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
return-object p1
.end method
.method static synthetic access$1200(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/SeekBar;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
return-object v0
.end method
.method static synthetic access$1300(Lco/vine/android/recorder/VineRecorder;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastUpdatedZoom:I
return v0
.end method
.method static synthetic access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$1500(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingOptions:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1600(Lco/vine/android/recorder/VineRecorder;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtonsHeight:I
return v0
.end method
.method static synthetic access$1700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/player/SdkVideoView;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
return-object v0
.end method
.method static synthetic access$200(Lco/vine/android/recorder/VineRecorder;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusEnabledDrawable:I
return v0
.end method
.method static synthetic access$2000(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/RelativeLayout$LayoutParams;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
return-object v0
.end method
.method static synthetic access$2100(Lco/vine/android/recorder/VineRecorder;)D
.registers 3
iget-wide v0, p0, Lco/vine/android/recorder/VineRecorder;->mTimeLapseDelay:D
return-wide v0
.end method
.method static synthetic access$2200(Lco/vine/android/recorder/VineRecorder;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->refreshFullPreview()V
return-void
.end method
.method static synthetic access$2300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/SegmentEditorAdapter;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
return-object v0
.end method
.method static synthetic access$2400(Lco/vine/android/recorder/VineRecorder;)Landroid/util/AttributeSet;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoAttr:Landroid/util/AttributeSet;
return-object v0
.end method
.method static synthetic access$2402(Lco/vine/android/recorder/VineRecorder;Landroid/util/AttributeSet;)Landroid/util/AttributeSet;
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoAttr:Landroid/util/AttributeSet;
return-object p1
.end method
.method static synthetic access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
return-object v0
.end method
.method static synthetic access$2700(Lco/vine/android/recorder/VineRecorder;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->adjustEditBoundaries()V
return-void
.end method
.method static synthetic access$2800(Lco/vine/android/recorder/VineRecorder;Z)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder;->animatePreviewSpinner(Z)V
return-void
.end method
.method static synthetic access$2900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/recorder/VineRecorder;)Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mResources:Landroid/content/res/Resources;
return-object v0
.end method
.method static synthetic access$3000(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3100(Lco/vine/android/recorder/VineRecorder;Landroid/view/View;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/recorder/VineRecorder;->animateSpinner(Landroid/view/View;Z)V
return-void
.end method
.method static synthetic access$3200(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3400(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3500(Lco/vine/android/recorder/VineRecorder;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mReturnToPreview:Z
return v0
.end method
.method static synthetic access$3600(Lco/vine/android/recorder/VineRecorder;)J
.registers 3
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->getDurationFromSegments()J
move-result-wide v0
return-wide v0
.end method
.method static synthetic access$3700(Lco/vine/android/recorder/VineRecorder;Z)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder;->animateEditModeControlsOut(Z)V
return-void
.end method
.method static synthetic access$3800(Lco/vine/android/recorder/VineRecorder;Z)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder;->returnToPreview(Z)V
return-void
.end method
.method static synthetic access$3900(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButton:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/recorder/VineRecorder;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusDisabledDrawable:I
return v0
.end method
.method static synthetic access$4000(Lco/vine/android/recorder/VineRecorder;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditing:Z
return v0
.end method
.method static synthetic access$4100(Lco/vine/android/recorder/VineRecorder;I)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
return-void
.end method
.method static synthetic access$4200(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$4300(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$4400(Lco/vine/android/recorder/VineRecorder;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
return v0
.end method
.method static synthetic access$4402(Lco/vine/android/recorder/VineRecorder;I)I
.registers 2
iput p1, p0, Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
return p1
.end method
.method static synthetic access$4500(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressOverlay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$500(Lco/vine/android/recorder/VineRecorder;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mIsMessaging:Z
return v0
.end method
.method static synthetic access$600(Lco/vine/android/recorder/VineRecorder;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mEnabledColor:I
return v0
.end method
.method static synthetic access$700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic access$800(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ToggleButton;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/recorder/VineRecorder;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mIsGridOn:Z
return v0
.end method
.method private adjustEditBoundaries()V
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
if-eqz v1, :cond_1f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I
:cond_1f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
if-eqz v1, :cond_2a
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_2a
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
if-eqz v1, :cond_35
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_35
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
if-eqz v1, :cond_40
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoViewParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_40
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
if-eqz v1, :cond_68
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
iget v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtonsHeight:I
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
add-int/2addr v1, v2
iget v2, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailPadding:I
add-int/2addr v1, v2
invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
:goto_59
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
if-eqz v1, :cond_67
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
new-instance v2, Lco/vine/android/recorder/VineRecorder$12;
invoke-direct {v2, p0, v0}, Lco/vine/android/recorder/VineRecorder$12;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/RelativeLayout$LayoutParams;)V
invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_67
return-void
:cond_68
const/4 v0, 0x0
goto :goto_59
.end method
.method private animateCaptureControlsIn()V
.registers 5
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getHandler()Landroid/os/Handler;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/VineRecorder$9;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$9;-><init>(Lco/vine/android/recorder/VineRecorder;)V
const-wide/16 v2, 0xfa
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
if-eqz v0, :cond_18
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_18
return-void
.end method
.method private animateCaptureControlsOut()V
.registers 8
const-wide/16 v5, 0xfa
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
if-eqz v1, :cond_28
invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
if-eqz v0, :cond_28
invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v2
iget v3, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtonsHeight:I
int-to-float v3, v3
invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v2
new-instance v3, Lco/vine/android/recorder/ViewGoneAnimationListener;
invoke-direct {v3, v1}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V
:cond_28
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;
if-eqz v1, :cond_46
invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
if-eqz v0, :cond_46
invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v2
new-instance v3, Lco/vine/android/recorder/ViewGoneAnimationListener;
invoke-direct {v3, v1}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V
:cond_46
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingOptions:Landroid/view/View;
if-eqz v1, :cond_64
invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
if-eqz v0, :cond_64
invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v2
new-instance v3, Lco/vine/android/recorder/ViewGoneAnimationListener;
invoke-direct {v3, v1}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V
:cond_64
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
if-eqz v2, :cond_6e
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
:cond_6e
return-void
.end method
.method private animateEditModeControlsIn()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x4
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getHandler()Landroid/os/Handler;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/VineRecorder$10;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$10;-><init>(Lco/vine/android/recorder/VineRecorder;)V
const-wide/16 v2, 0xfa
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0, v6}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
if-eqz v0, :cond_24
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V
:cond_24
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
if-eqz v0, :cond_32
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V
:cond_32
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
if-eqz v0, :cond_42
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
:cond_42
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
if-eqz v0, :cond_4b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:cond_4b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
if-eqz v0, :cond_54
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:cond_54
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
if-eqz v0, :cond_5d
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_5d
return-void
.end method
.method private animateEditModeControlsOut(Z)V
.registers 8
const-wide/16 v4, 0xfa
const/4 v3, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
if-eqz v0, :cond_f2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
if-eqz v0, :cond_f2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
if-eqz v0, :cond_f2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
if-eqz v0, :cond_f2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
if-eqz v0, :cond_f2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
if-eqz v0, :cond_f2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButton:Landroid/view/View;
if-eqz v0, :cond_f2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v1
neg-int v1, v1
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setSelection(I)V
:cond_f2
if-eqz p1, :cond_fe
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
if-eqz v0, :cond_fe
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
:cond_fe
return-void
.end method
.method private animatePlayButton(Z)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButton:Landroid/view/View;
if-eqz v0, :cond_3a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayRefreshButton:Landroid/view/View;
if-eqz v0, :cond_3a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
if-eqz v0, :cond_3a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V
if-nez p1, :cond_3b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget v1, p0, Lco/vine/android/recorder/VineRecorder;->mShortAnimTime:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
:goto_3a
:cond_3a
return-void
:cond_3b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;
if-eqz v0, :cond_67
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButton:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayRefreshButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_4b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget v1, p0, Lco/vine/android/recorder/VineRecorder;->mShortAnimTime:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
goto :goto_3a
:cond_67
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayRefreshButton:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_4b
.end method
.method private animatePreviewSpinner(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
invoke-direct {p0, v0, p1}, Lco/vine/android/recorder/VineRecorder;->animateSpinner(Landroid/view/View;Z)V
return-void
.end method
.method private animateSpinner(Landroid/view/View;Z)V
.registers 6
const/4 v1, 0x0
if-eqz p1, :cond_27
invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V
if-nez p2, :cond_28
invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget v1, p0, Lco/vine/android/recorder/VineRecorder;->mShortAnimTime:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
invoke-direct {v1, p1}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
:goto_27
:cond_27
return-void
:cond_28
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V
invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget v1, p0, Lco/vine/android/recorder/VineRecorder;->mShortAnimTime:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
goto :goto_27
.end method
.method private animateTopButtons(I)V
.registers 6
const/16 v3, 0x8
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
if-eqz v0, :cond_21
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
if-eqz v0, :cond_21
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V
packed-switch p1, :pswitch_data_64
:goto_21
:cond_21
return-void
:pswitch_22
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
goto :goto_21
:pswitch_37
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V
goto :goto_21
:pswitch_42
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
if-eqz v0, :cond_21
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->canUndoDelete()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_21
nop
:pswitch_data_64
.packed-switch 0x0
:pswitch_22
:pswitch_37
:pswitch_42
.end packed-switch
.end method
.method private commitChanges()Z
.registers 12
const/4 v2, 0x0
const/4 v7, 0x1
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
if-eqz v0, :cond_88
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->commitDelete()V
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v6
const/4 v3, 0x0
if-lez v6, :cond_1c
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
add-int/lit8 v9, v6, -0x1
invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/recorder/RecordSegment;
:cond_1c
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getData()Ljava/util/ArrayList;
move-result-object v8
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_61
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getData()Ljava/util/ArrayList;
move-result-object v8
add-int/lit8 v9, v4, -0x1
invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
if-eq v3, v8, :cond_33
move v2, v7
:goto_33
:cond_33
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getData()Ljava/util/ArrayList;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getDeleted()Ljava/util/ArrayList;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getDeleted()Ljava/util/ArrayList;
move-result-object v8
invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_52
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_65
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lco/vine/android/recorder/RecordSegment;
iput-boolean v7, v5, Lco/vine/android/recorder/RecordSegment;->removed:Z
goto :goto_52
:cond_61
if-eqz v3, :cond_64
move v2, v7
:cond_64
goto :goto_33
:cond_65
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {p0, v8}, Lco/vine/android/recorder/VineRecorder;->swapTimestampsFromSegments(Ljava/util/ArrayList;)V
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mToRemove:Ljava/util/HashSet;
iget-object v9, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v9}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v9
iget-object v10, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-static {v9, v10}, Lco/vine/android/recorder/RecordSegment;->applyEditedChanges(Lco/vine/android/recorder/RecordSession;Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iput-boolean v7, v8, Lco/vine/android/recorder/RecordingFile;->isDirty:Z
const-string v7, "Changes commited, last segment has changed? {}."
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
invoke-static {v7, v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
:cond_88
return v2
.end method
.method private dismissFocusIndicator()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFocusDismissAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_13
return-void
.end method
.method private floatViewIntersectsTrashCan()Z
.registers 8
const/4 v4, 0x1
const/4 v5, 0x0
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
if-eqz v3, :cond_3f
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;
iget v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v3}, Lco/vine/android/dragsort/DragSortWidget;->getFloatViewBounds()Landroid/graphics/Rect;
move-result-object v0
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v3}, Lco/vine/android/dragsort/DragSortWidget;->floatViewIsFromContentView()Z
move-result v3
if-eqz v3, :cond_26
iget v3, v0, Landroid/graphics/Rect;->top:I
if-ge v3, v1, :cond_24
move v3, v4
:goto_23
return v3
:cond_24
move v3, v5
goto :goto_23
:cond_26
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getBottom()I
move-result v3
iget-object v6, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v6}, Lco/vine/android/player/SdkVideoView;->getTop()I
move-result v6
sub-int/2addr v3, v6
div-int/lit8 v3, v3, 0x2
add-int v2, v3, v1
iget v3, v0, Landroid/graphics/Rect;->top:I
if-ge v3, v2, :cond_3d
:goto_3b
move v3, v4
goto :goto_23
:cond_3d
move v4, v5
goto :goto_3b
:cond_3f
move v3, v5
goto :goto_23
.end method
.method private getDurationFromSegments()J
.registers 8
const/4 v0, 0x0
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v3}, Lco/vine/android/recorder/SegmentEditorAdapter;->getData()Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/recorder/RecordSegment;
iget-boolean v3, v2, Lco/vine/android/recorder/RecordSegment;->removed:Z
if-nez v3, :cond_b
invoke-virtual {v2}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;
move-result-object v3
iget v3, v3, Lco/vine/android/recorder/AudioData;->size:I
add-int/2addr v0, v3
goto :goto_b
:cond_23
invoke-static {v0}, Lco/vine/android/recorder/RecordConfigUtils;->getTimeStampInNsFromSampleCounted(I)I
move-result v3
int-to-long v3, v3
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
return-wide v3
.end method
.method private hideCaptureControls()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
if-eqz v0, :cond_a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProgressView;->setVisibility(I)V
:cond_a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1c
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingOptions:Landroid/view/View;
if-eqz v0, :cond_25
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingOptions:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_25
return-void
.end method
.method private invalidateGhostView()V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_2a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
if-eqz v0, :cond_2a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
if-eqz v0, :cond_2a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v0, :cond_2a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->getLastFramePath()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_2a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->invalidateGhostFrame()V
return-void
.end method
.method private invalidateZoomSlider()V
.registers 5
const/16 v3, 0x8
const/4 v2, 0x0
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainer:Landroid/view/View;
if-eqz v1, :cond_3d
iget-boolean v1, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->isZoomButtonEnabled:Z
if-eqz v1, :cond_4e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
if-eqz v1, :cond_4e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainer:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-boolean v1, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z
if-eqz v1, :cond_3e
invoke-static {}, Lco/vine/android/recorder/CameraManager;->getInstance()Lco/vine/android/recorder/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->isZoomSupported()Z
move-result v1
if-eqz v1, :cond_3e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
invoke-static {}, Lco/vine/android/recorder/CameraManager;->getInstance()Lco/vine/android/recorder/CameraManager;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/recorder/CameraManager;->getMaxZoom()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V
:cond_3d
:goto_3d
return-void
:cond_3e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainer:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V
goto :goto_3d
:cond_4e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainer:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_3d
.end method
.method private refreshFullPreview()V
.registers 14
const-string v10, "Refresh full preview."
invoke-static {v10}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v2
const/4 v8, 0x0
if-eqz v2, :cond_10
invoke-virtual {v2}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v8
:cond_10
if-eqz v8, :cond_88
iget-object v10, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v10}, Lco/vine/android/recorder/SegmentEditorAdapter;->getData()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v10
if-lez v10, :cond_85
const/4 v10, 0x0
invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v10}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v10
iget v3, v10, Lco/vine/android/recorder/CameraSetting;->frameRate:I
:goto_2b
invoke-virtual {v8}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B
move-result-object v10
array-length v10, v10
new-array v9, v10, [B
new-instance v0, Lco/vine/android/recorder/AudioArray;
invoke-virtual {v8}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;
move-result-object v10
iget v10, v10, Lco/vine/android/recorder/AudioArray;->length:I
invoke-virtual {v8}, Lco/vine/android/recorder/RecordSession;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v11
invoke-virtual {v11}, Lco/vine/android/recorder/RecordSessionVersion;->getAudioArrayType()Lco/vine/android/recorder/AudioArray$AudioArrayType;
move-result-object v11
invoke-direct {v0, v10, v11}, Lco/vine/android/recorder/AudioArray;-><init>(ILco/vine/android/recorder/AudioArray$AudioArrayType;)V
iget-object v10, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v11
invoke-virtual {v11}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v11
invoke-static {v11, v9, v0, v1}, Lco/vine/android/recorder/RecordSegment;->applyForEditedChanges(Lco/vine/android/recorder/RecordSession;[BLco/vine/android/recorder/AudioArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v11
invoke-virtual {v10, v11, v9, v0, v3}, Lco/vine/android/recorder/RecordController;->writeToFile(Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;I)V
const-wide/16 v5, 0x0
const/4 v4, 0x0
:goto_59
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v10
if-ge v4, v10, :cond_88
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lco/vine/android/recorder/RecordSegment;
iput v4, v7, Lco/vine/android/recorder/RecordSegment;->index:I
iput-wide v5, v7, Lco/vine/android/recorder/RecordSegment;->startTimestamp:J
invoke-virtual {v7}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;
move-result-object v10
iget v10, v10, Lco/vine/android/recorder/AudioData;->size:I
invoke-static {v10}, Lco/vine/android/recorder/RecordConfigUtils;->getTimeStampInNsFromSampleCounted(I)I
move-result v10
div-int/lit16 v10, v10, 0x3e8
int-to-long v10, v10
add-long/2addr v5, v10
const-string v10, "Timestamp modified to: {}."
iget-wide v11, v7, Lco/vine/android/recorder/RecordSegment;->startTimestamp:J
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v11
invoke-static {v10, v11}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
add-int/lit8 v4, v4, 0x1
goto :goto_59
:cond_85
const/16 v3, 0x1e
goto :goto_2b
:cond_88
return-void
.end method
.method private releaseSegmentChangeDetector()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeThread:Ljava/lang/Thread;
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
const/4 v1, 0x0
iput-boolean v1, v0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->runThread:Z
:try_start_9
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->join()V
:try_end_e
.catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_12
:goto_e
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeThread:Ljava/lang/Thread;
:cond_11
return-void
:catch_12
move-exception v0
goto :goto_e
.end method
.method private returnToPreview(Z)V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_19
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v0, :cond_19
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->releaseSegmentChangeDetector()V
if-nez p1, :cond_11
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->commitChanges()Z
:cond_11
iput-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->writePreviewToFile()V
invoke-virtual {p0, v1}, Lco/vine/android/recorder/VineRecorder;->startHashTask(Z)V
:cond_19
return-void
.end method
.method private showCameraSwitcher()V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
if-eqz v0, :cond_10
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v2, 0x8
if-eq v1, v2, :cond_10
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_10
return-void
.end method
.method protected adjustBoundaries(Lco/vine/android/recorder/CameraSetting;)V
.registers 24
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
if-eqz v4, :cond_218
if-eqz p1, :cond_218
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->originalW:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v12, v0
move-object/from16 v0, p1
iget-boolean v0, v0, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z
move/from16 v19, v0
if-eqz v19, :cond_219
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F
move/from16 v19, v0
const/16 v20, 0x0
cmpl-float v19, v19, v20
if-lez v19, :cond_219
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->originalH:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F
move/from16 v20, v0
mul-float v12, v19, v20
:cond_38
:goto_38
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->frontFacingAspectRatio:F
move/from16 v19, v0
const/16 v20, 0x0
cmpl-float v19, v19, v20
if-gtz v19, :cond_50
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F
move/from16 v19, v0
const/16 v20, 0x0
cmpl-float v19, v19, v20
if-lez v19, :cond_ed
:cond_50
new-instance v19, Lco/vine/android/VineLoggingException;
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string v21, "Adjusting ratio originalW = "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->originalW:I
move/from16 v21, v0
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, " originalH = "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->originalH:I
move/from16 v21, v0
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, " hardware "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "Hardware Version: "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, " - "
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, " ("
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "."
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "."
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "."
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "."
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, "."
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
sget-object v21, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
const-string v21, ")"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-direct/range {v19 .. v20}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V
invoke-static/range {v19 .. v19}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
:cond_ed
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
move-object/from16 v19, v0
if-eqz v19, :cond_139
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v19, v0
if-eqz v19, :cond_139
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lco/vine/android/player/SdkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
move/from16 v0, v19
iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
move/from16 v0, v19
iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
move-object/from16 v19, v0
new-instance v20, Lco/vine/android/recorder/VineRecorder$29;
move-object/from16 v0, v20
move-object/from16 v1, p0
invoke-direct {v0, v1, v10}, Lco/vine/android/recorder/VineRecorder$29;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
:cond_139
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->originalH:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v11, v0
div-float v5, v12, v11
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
mul-float v19, v19, v5
move/from16 v0, v19
float-to-int v15, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;
move-object/from16 v19, v0
if-eqz v19, :cond_218
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;
move-object/from16 v19, v0
if-eqz v19, :cond_218
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v19
move-object/from16 v0, v19
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v18, v0
div-int/lit8 v16, v15, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
div-int/lit8 v19, v19, 0x2
add-int v9, v19, v18
sub-int v17, v9, v16
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
move/from16 v0, v19
iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I
iput v15, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I
const/16 v19, 0x0
const/16 v20, 0x0
const/16 v21, 0x0
move/from16 v0, v19
move/from16 v1, v17
move/from16 v2, v20
move/from16 v3, v21
invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mRootLayoutView:Landroid/view/View;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I
move-result v13
sub-int v19, v13, v18
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v20, v0
sub-int v6, v19, v20
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v7
check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;
iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I
const-string v19, "capture"
const/16 v20, 0x0
move-object/from16 v0, v19
move/from16 v1, v20
invoke-virtual {v4, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v14
invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v19
move-object/from16 v0, p1
iget-boolean v0, v0, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z
move/from16 v20, v0
invoke-static/range {v20 .. v20}, Lco/vine/android/recorder/VineRecorder;->getBottomMaskHeightPref(Z)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v19
invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z
new-instance v19, Lco/vine/android/recorder/VineRecorder$30;
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-direct {v0, v1, v8, v7}, Lco/vine/android/recorder/VineRecorder$30;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_218
return-void
:cond_219
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F
move/from16 v19, v0
const/16 v20, 0x0
cmpl-float v19, v19, v20
if-lez v19, :cond_38
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->originalH:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
move-object/from16 v0, p1
iget v0, v0, Lco/vine/android/recorder/CameraSetting;->backFacingAspectRatio:F
move/from16 v20, v0
mul-float v12, v19, v20
goto/16 :goto_38
.end method
.method public canChangeFocus()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
if-nez v0, :cond_e
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->canChangeFocus()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public canPickUpFloatView()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
if-eqz v1, :cond_e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-eqz v1, :cond_e
const/4 v0, 0x1
:cond_e
return v0
.end method
.method public changeProgress(J)V
.registers 5
invoke-super {p0, p1, p2}, Lco/vine/android/recorder/RegularVineRecorder;->changeProgress(J)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressOverlay:Landroid/view/View;
if-eqz v0, :cond_12
invoke-static {}, Lco/vine/android/util/SystemUtil;->isOnMainThread()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mChangeProgressOverlayVisibilityRunnable:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_12
:goto_12
return-void
:cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mChangeProgressOverlayVisibilityRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_12
.end method
.method public doOneFrame()V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v0, :cond_20
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v0
if-nez v0, :cond_20
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mAutoFocusing:Z
if-eqz v0, :cond_20
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->startRelativeTime()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/recorder/VineRecorder$14;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$14;-><init>(Lco/vine/android/recorder/VineRecorder;)V
const-wide/16 v2, 0x19
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_20
return-void
.end method
.method public declared-synchronized endRelativeTime()Z
.registers 3
monitor-enter p0
:try_start_1
invoke-super {p0}, Lco/vine/android/recorder/RegularVineRecorder;->endRelativeTime()Z
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mGhostModeEnabled:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->requestGhostDrawing(Z)V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
:cond_e
const/4 v0, 0x1
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method public floatViewDropped(I)Z
.registers 6
const/4 v2, 0x0
const/4 v3, 0x1
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->floatViewIntersectsTrashCan()Z
move-result v0
invoke-direct {p0, v2}, Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
if-eqz v0, :cond_20
if-nez p1, :cond_3d
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v1
if-le v1, v3, :cond_3d
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1, v3}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {p0, v1}, Lco/vine/android/recorder/VineRecorder;->showThumbnailOverlay(Lco/vine/android/recorder/RecordSegment;)V
:goto_20
:cond_20
iget v1, p0, Lco/vine/android/recorder/VineRecorder;->mPickedUpPosition:I
if-ne v1, p1, :cond_26
if-eqz v0, :cond_2f
:cond_26
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
const/4 v2, 0x0
iput-object v2, v1, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
iput-boolean v3, v1, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z
:cond_2f
if-eqz v0, :cond_39
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v1
if-eq v1, v3, :cond_3c
:cond_39
invoke-direct {p0, v3}, Lco/vine/android/recorder/VineRecorder;->animatePlayButton(Z)V
:cond_3c
return v0
:cond_3d
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v1
if-le v1, v3, :cond_20
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1, v2}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {p0, v1}, Lco/vine/android/recorder/VineRecorder;->showThumbnailOverlay(Lco/vine/android/recorder/RecordSegment;)V
goto :goto_20
.end method
.method public floatViewLanded(I)V
.registers 2
return-void
.end method
.method public floatViewMoved()V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->floatViewIntersectsTrashCan()Z
move-result v3
if-eqz v3, :cond_17
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v3}, Lco/vine/android/dragsort/DragSortWidget;->canDelete()Z
move-result v3
if-eqz v3, :cond_17
move v0, v1
:goto_11
if-eqz v0, :cond_19
invoke-direct {p0, v1}, Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
:goto_16
return-void
:cond_17
move v0, v2
goto :goto_11
:cond_19
invoke-direct {p0, v2}, Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
goto :goto_16
.end method
.method public floatViewPickedUp(I)V
.registers 5
const/4 v2, 0x0
iput p1, p0, Lco/vine/android/recorder/VineRecorder;->mPickedUpPosition:I
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
if-eqz v1, :cond_1a
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1, p1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->showThumbnailOverlay(Lco/vine/android/recorder/RecordSegment;)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
iput-object v0, v1, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
iput-boolean v2, v1, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z
:cond_1a
invoke-virtual {p0, v2}, Lco/vine/android/recorder/VineRecorder;->pausePreview(Z)V
return-void
.end method
.method public getCurrentlyPlayingPosition()I
.registers 3
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
const/4 v1, -0x1
if-ne v0, v1, :cond_26
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
if-eqz v0, :cond_26
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
iget v0, v0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->lastFirstItem:I
if-ltz v0, :cond_24
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
if-eqz v0, :cond_24
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
iget v0, v0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->lastFirstItem:I
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v1
if-ge v0, v1, :cond_24
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
iget v0, v0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->lastFirstItem:I
:goto_23
return v0
:cond_24
const/4 v0, 0x0
goto :goto_23
:cond_26
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
goto :goto_23
.end method
.method protected getFinishProcessRunnable()Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
.registers 2
new-instance v0, Lco/vine/android/recorder/VineRecorder$5;
invoke-direct {v0, p0}, Lco/vine/android/recorder/VineRecorder$5;-><init>(Lco/vine/android/recorder/VineRecorder;)V
return-object v0
.end method
.method public getFinishProcessTask(Ljava/lang/String;Ljava/lang/Runnable;ZZ)Lco/vine/android/recorder/BaseFinishProcessTask;
.registers 11
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mFastEncoding:Z
if-eqz v0, :cond_f
new-instance v0, Lco/vine/android/recorder/VineRecorder$19;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v4, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/VineRecorder$19;-><init>(Lco/vine/android/recorder/VineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
:goto_e
return-object v0
:cond_f
invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/recorder/RegularVineRecorder;->getFinishProcessTask(Ljava/lang/String;Ljava/lang/Runnable;ZZ)Lco/vine/android/recorder/BaseFinishProcessTask;
move-result-object v0
goto :goto_e
.end method
.method public getGhostView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
return-object v0
.end method
.method public getOnResumeTask(Landroid/view/View;Ljava/lang/String;)Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
.registers 4
new-instance v0, Lco/vine/android/recorder/VineRecorder$18;
invoke-direct {v0, p0, p1, p2}, Lco/vine/android/recorder/VineRecorder$18;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/view/View;Ljava/lang/String;)V
return-object v0
.end method
.method public getProgressView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
return-object v0
.end method
.method public getSize()Landroid/graphics/Point;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;
return-object v0
.end method
.method public hideThumbnailOverlay()V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
if-eqz v0, :cond_2a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget v1, p0, Lco/vine/android/recorder/VineRecorder;->mShortAnimTime:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_2a
return-void
.end method
.method public hideThumbnailOverlayDelayed()V
.registers 5
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getHandler()Landroid/os/Handler;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/VineRecorder$13;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$13;-><init>(Lco/vine/android/recorder/VineRecorder;)V
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method protected invalidateFinishButton()V
.registers 6
iget-wide v1, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentDuration:J
iget v3, p0, Lco/vine/android/recorder/VineRecorder;->mThresholdMs:I
int-to-long v3, v3
cmp-long v1, v1, v3
if-gez v1, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/view/View;
if-eqz v0, :cond_12
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_12
:goto_12
return-void
:cond_13
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->onProgressThresholdReached()V
goto :goto_12
.end method
.method public isAutoFocusing()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mAutoFocusing:Z
return v0
.end method
.method public isEditing()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditing:Z
if-eqz v0, :cond_a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isEditingDirty()Z
.registers 3
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->compareTo(Ljava/util/ArrayList;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public modifyZoom(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->modifyZoom(Z)V
:cond_d
return-void
.end method
.method public onCameraReady(Lco/vine/android/recorder/RecordController;)V
.registers 5
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
if-eqz v1, :cond_28
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v1
iget-boolean v1, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z
if-eqz v1, :cond_1e
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
if-eqz v0, :cond_1e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->isFlashSupported()Z
move-result v1
if-eqz v1, :cond_29
const/4 v1, 0x0
:goto_1b
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->onCameraReadyRunnable:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-super {p0, p1}, Lco/vine/android/recorder/RegularVineRecorder;->onCameraReady(Lco/vine/android/recorder/RecordController;)V
:cond_28
return-void
:cond_29
const/16 v1, 0x8
goto :goto_1b
.end method
.method public onCameraSwitcherPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherViewListener:Landroid/view/View$OnClickListener;
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
return-void
.end method
.method public onGhostSwitchPressed()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mGhostModeEnabled:Z
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_5
invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->setGhostMode(Z)Z
move-result v0
return v0
:cond_a
const/4 v0, 0x0
goto :goto_5
.end method
.method public declared-synchronized onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/recorder/VineRecorder; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
packed-switch p2, :pswitch_data_1c
const/4 v0, 0x0
:goto_5
monitor-exit p0
move v2, v0
const-string v1, " - Lco/vine/android/recorder/VineRecorder; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:try_start_7
:pswitch_7
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_22
:goto_e
const/4 v0, 0x1
goto :goto_5
:pswitch_10
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->startRelativeTime()Z
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_14
goto :goto_e
:catchall_14
move-exception v0
monitor-exit p0
throw v0
:pswitch_17
:try_start_17
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z
:try_end_1a
.catchall {:try_start_17 .. :try_end_1a} :catchall_14
goto :goto_e
nop
:pswitch_data_22
.packed-switch 0x0
:pswitch_10
:pswitch_17
.end packed-switch
:pswitch_data_1c
.packed-switch 0x1b
:pswitch_7
.end packed-switch
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lco/vine/android/recorder/VineRecorder; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/recorder/RegularVineRecorder;->onPause()V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_12
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mMediaActionSound:Landroid/media/MediaActionSound;
if-eqz v0, :cond_12
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mMediaActionSound:Landroid/media/MediaActionSound;
invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V
:cond_12
const-string v1, " - Lco/vine/android/recorder/VineRecorder; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepared(Lco/vine/android/player/VideoViewInterface;)V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0}, Lco/vine/android/dragsort/DragSortWidget;->hasFloatView()Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0, v1}, Lco/vine/android/recorder/VineRecorder;->pausePreview(Z)V
:cond_10
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->hideThumbnailOverlayDelayed()V
invoke-direct {p0, v1}, Lco/vine/android/recorder/VineRecorder;->animatePreviewSpinner(Z)V
:cond_16
return-void
.end method
.method public onProgressMaxReached()V
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mHasPreviewedAlready:Z
if-nez v0, :cond_9
const-string v0, "progressMaxReached"
invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->finish(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public onProgressThresholdReached()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/view/View;
if-eqz v0, :cond_8
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_8
return-void
.end method
.method public onResume(Ljava/lang/String;Z)V
.registers 10
const-string v1, " + Lco/vine/android/recorder/VineRecorder; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z
move-result v0
const-string v4, "Resume VineRecorder: delayDialog: {} canKeepRecording: {} isEditing: {} NullFinalFile: {}."
const/4 v1, 0x4
new-array v5, v1, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
aput-object v1, v5, v3
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
aput-object v1, v5, v2
const/4 v1, 0x2
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v6
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v5, v1
const/4 v6, 0x3
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v1, :cond_44
move v1, v2
:goto_28
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
aput-object v1, v5, v6
invoke-static {v4, v5}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v0, :cond_7e
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v1
if-nez v1, :cond_7a
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->initPreviewSurface()V
iget-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartWithEditMode:Z
if-eqz v1, :cond_46
invoke-virtual {p0, v2, v3}, Lco/vine/android/recorder/VineRecorder;->setEditMode(ZZ)V
:goto_43
:cond_43
const-string v1, " - Lco/vine/android/recorder/VineRecorder; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_44
move v1, v3
goto :goto_28
:cond_46
const/4 v1, 0x0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "OnResume_"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v1, v4}, Lco/vine/android/recorder/VineRecorder;->getOnResumeTask(Landroid/view/View;Ljava/lang/String;)Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
move-result-object v1
iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
if-nez p2, :cond_6e
iget-object v4, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-boolean v4, v4, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z
if-eqz v4, :cond_78
iget-boolean v4, p0, Lco/vine/android/recorder/VineRecorder;->mNeverResumedRecorder:Z
if-eqz v4, :cond_78
:goto_6e
:cond_6e
iput-boolean v2, v1, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->showDialogDelayed:Z
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
new-array v2, v3, [Ljava/lang/Void;
invoke-virtual {v1, v2}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_43
:cond_78
move v2, v3
goto :goto_6e
:cond_7a
invoke-virtual {p0, v2, v3}, Lco/vine/android/recorder/VineRecorder;->setEditMode(ZZ)V
goto :goto_43
:cond_7e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v1, :cond_88
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
goto :goto_43
:cond_88
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
if-eqz v1, :cond_43
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;
invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
if-nez p2, :cond_43
:try_start_95
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
:try_end_9a
.catch Landroid/view/WindowManager$BadTokenException; {:try_start_95 .. :try_end_9a} :catch_9b
goto :goto_43
:catch_9b
move-exception v1
goto :goto_43
.end method
.method public onSelectionChanged(IZ)V
.registers 9
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
iput p1, p0, Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
if-eqz v0, :cond_25
const/4 v2, -0x1
if-eq p1, v2, :cond_26
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge p1, v2, :cond_26
invoke-direct {p0, v3}, Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
invoke-virtual {v0, p1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/RecordSegment;
if-eqz p2, :cond_22
invoke-virtual {p0, v1, v4}, Lco/vine/android/recorder/VineRecorder;->playPreview(Lco/vine/android/recorder/RecordSegment;Z)V
:cond_22
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->commitDelete()V
:goto_25
:cond_25
return-void
:cond_26
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v2
if-lez v2, :cond_49
invoke-direct {p0, v5}, Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
if-eqz p2, :cond_3f
const/4 v2, 0x0
invoke-virtual {p0, v2, v4}, Lco/vine/android/recorder/VineRecorder;->playPreview(Lco/vine/android/recorder/RecordSegment;Z)V
:goto_35
:cond_35
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
if-eqz v2, :cond_25
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v2, v3}, Lco/vine/android/dragsort/DragSortWidget;->setFocused(I)V
goto :goto_25
:cond_3f
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
if-eqz v2, :cond_35
if-nez p2, :cond_35
invoke-virtual {p0, v4}, Lco/vine/android/recorder/VineRecorder;->pausePreview(Z)V
goto :goto_35
:cond_49
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->suspend()V
invoke-direct {p0, v3}, Lco/vine/android/recorder/VineRecorder;->animatePlayButton(Z)V
invoke-direct {p0, v3}, Lco/vine/android/recorder/VineRecorder;->animatePreviewSpinner(Z)V
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->hideThumbnailOverlay()V
invoke-direct {p0, v5}, Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
goto :goto_25
.end method
.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v0
if-nez v0, :cond_10
invoke-super {p0, p1, p2}, Lco/vine/android/recorder/RegularVineRecorder;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_12
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_e
monitor-exit p0
return v0
:cond_10
const/4 v0, 0x0
goto :goto_e
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public onUiPaused()V
.registers 5
const/4 v3, 0x0
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->releaseSegmentChangeDetector()V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
if-eqz v1, :cond_d
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v1}, Lco/vine/android/dragsort/DragSortWidget;->releaseReferences()V
:cond_d
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mResources:Landroid/content/res/Resources;
:try_start_f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
if-eqz v1, :cond_19
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;->cancel(Z)Z
:goto_19
:cond_19
:try_end_19
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_a8
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
if-eqz v1, :cond_27
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v1, v3}, Lco/vine/android/player/SdkVideoView;->setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v1, v3}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V
:cond_27
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingOptions:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
if-eqz v1, :cond_36
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_36
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainer:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
if-eqz v1, :cond_52
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_52
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailSegment:Lco/vine/android/recorder/RecordSegment;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
if-eqz v1, :cond_5f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_5f
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButton:Landroid/view/View;
if-eqz v1, :cond_6a
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButton:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_6a
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButton:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
if-eqz v1, :cond_7a
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:cond_7a
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mFocusView:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
if-eqz v1, :cond_95
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v1, v3}, Lco/vine/android/dragsort/DragSortWidget;->setSelectionChangedListener(Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v1, v3}, Lco/vine/android/dragsort/DragSortWidget;->setFloatViewInteractionListener(Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v1, v3}, Lco/vine/android/dragsort/DragSortWidget;->setCurrentlyPlayingProvider(Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;)V
:cond_95
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/view/View;
if-eqz v1, :cond_a2
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_a2
iput-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/view/View;
invoke-super {p0}, Lco/vine/android/recorder/RegularVineRecorder;->onUiPaused()V
return-void
:catch_a8
move-exception v0
const-string v1, "It\'s probably detached already."
invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_19
.end method
.method public onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
.registers 11
const/16 v6, 0x8
const/4 v5, 0x0
const/4 v4, 0x0
invoke-super {p0, p1, p2, p3}, Lco/vine/android/recorder/RegularVineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mResources:Landroid/content/res/Resources;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingOptionsRowId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingOptions:Landroid/view/View;
const v0, 0x102000a
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlayId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainerId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$20;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$20;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlayId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainerId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
new-instance v0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
invoke-direct {v0, p0, v5}, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;-><init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$21;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$21;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButtonId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishClicker:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButton:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
check-cast v0, Landroid/view/ViewGroup;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlayRefreshButton:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidgetId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/dragsort/DragSortWidget;
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0, p0}, Lco/vine/android/dragsort/DragSortWidget;->setSelectionChangedListener(Lco/vine/android/dragsort/DragSortWidget$SelectionChangedListener;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0, p0}, Lco/vine/android/dragsort/DragSortWidget;->setFloatViewInteractionListener(Lco/vine/android/dragsort/DragSortWidget$FloatViewInteractionListener;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0, p0}, Lco/vine/android/dragsort/DragSortWidget;->setCurrentlyPlayingProvider(Lco/vine/android/dragsort/DragSortWidget$CurrentlyPlayingProvider;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtonsId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$22;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$22;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButtonId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButton:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlayId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewLoadingOverlay:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorDoneButton:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$23;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$23;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButtonId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$24;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$24;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButtonId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$25;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$25;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashCanButton:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$26;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$26;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButtonId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorCancelButton:Landroid/view/View;
new-instance v1, Lco/vine/android/recorder/VineRecorder$27;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$27;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mGridSwitchId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ToggleButton;
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusViewResourceId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFocusView:Landroid/view/View;
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v0
if-nez v0, :cond_12f
iget-wide v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentDuration:J
iget v2, p0, Lco/vine/android/recorder/VineRecorder;->mThresholdMs:I
int-to-long v2, v2
cmp-long v0, v0, v2
if-ltz v0, :cond_12f
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->onProgressThresholdReached()V
:cond_12f
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherId:I
if-lez v0, :cond_1bf
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getGenericConfig(Landroid/content/Context;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v0
iget-boolean v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->cameraSwitchEnabled:Z
if-nez v0, :cond_1b7
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V
:goto_14a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
new-instance v1, Lco/vine/android/recorder/VineRecorder$28;
invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$28;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainerId:I
if-lez v0, :cond_17a
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekId:I
if-lez v0, :cond_17a
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainerId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekContainer:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/SeekBar;
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
:cond_17a
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcherId:I
if-lez v0, :cond_1c8
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcherId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v0
iget-boolean v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z
if-eqz v0, :cond_1c2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mSwitchFlashViewListener:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_19c
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->canSwitchCamera()Z
move-result v0
if-eqz v0, :cond_1a5
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->showCameraSwitcher()V
:cond_1a5
iput-boolean v4, p0, Lco/vine/android/recorder/VineRecorder;->mIsSwitchingCamera:Z
iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressOverlayId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressOverlay:Landroid/view/View;
if-nez p3, :cond_1b6
const-string v0, "UI Resume"
invoke-virtual {p0, v0, v4}, Lco/vine/android/recorder/VineRecorder;->onResume(Ljava/lang/String;Z)V
:cond_1b6
return-void
:cond_1b7
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherViewListener:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_14a
:cond_1bf
iput-object v5, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
goto :goto_14a
:cond_1c2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
goto :goto_19c
:cond_1c8
iput-object v5, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;
goto :goto_19c
.end method
.method public onZoomUpdated(IZ)V
.registers 5
iput p1, p0, Lco/vine/android/recorder/VineRecorder;->mLastUpdatedZoom:I
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Zoom updated: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
if-eqz v0, :cond_45
if-eqz p2, :cond_45
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastUpdatedZoom:I
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Zoom progress updated: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mZoomSeek:Landroid/widget/SeekBar;
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomUpdateRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_45
return-void
.end method
.method public pausePreview(Z)V
.registers 4
const/4 v1, 0x1
if-eqz p1, :cond_15
invoke-direct {p0, v1}, Lco/vine/android/recorder/VineRecorder;->animatePlayButton(Z)V
:goto_6
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;->cancel(Z)Z
:cond_f
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V
return-void
:cond_15
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/recorder/VineRecorder;->animatePlayButton(Z)V
goto :goto_6
.end method
.method public playPreview(Lco/vine/android/recorder/RecordSegment;Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/recorder/VineRecorder;->animatePlayButton(Z)V
invoke-virtual {p0, p1, p2}, Lco/vine/android/recorder/VineRecorder;->refreshVideoView(Lco/vine/android/recorder/RecordSegment;Z)V
return-void
.end method
.method public playStartRecordingSound()V
.registers 3
:try_start_0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_14
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mMediaActionSound:Landroid/media/MediaActionSound;
if-eqz v0, :cond_14
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlaySound:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mMediaActionSound:Landroid/media/MediaActionSound;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15
:cond_14
return-void
:catch_15
move-exception v0
goto :goto_14
.end method
.method public playStopRecordingSound()V
.registers 3
:try_start_0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_14
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mMediaActionSound:Landroid/media/MediaActionSound;
if-eqz v0, :cond_14
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mPlaySound:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mMediaActionSound:Landroid/media/MediaActionSound;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15
:cond_14
return-void
:catch_15
move-exception v0
goto :goto_14
.end method
.method public refreshVideoView(Lco/vine/android/recorder/RecordSegment;Z)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->releaseSegmentChangeDetector()V
new-instance v0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
invoke-direct {v0, p0}, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;-><init>(Lco/vine/android/recorder/VineRecorder;)V
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
new-instance v0, Ljava/lang/Thread;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeDetector:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeThread:Ljava/lang/Thread;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mSegmentChangeThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
if-ne v0, p1, :cond_20
if-eqz p2, :cond_56
:cond_20
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v0
if-lez v0, :cond_2b
invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder;->showThumbnailOverlay(Lco/vine/android/recorder/RecordSegment;)V
:cond_2b
if-nez p1, :cond_36
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
if-eqz v0, :cond_36
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0, v2}, Lco/vine/android/dragsort/DragSortWidget;->setFocused(I)V
:cond_36
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
if-eqz v0, :cond_3f
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
invoke-virtual {v0, v3}, Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;->cancel(Z)Z
:cond_3f
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->suspend()V
invoke-direct {p0, v3}, Lco/vine/android/recorder/VineRecorder;->animatePreviewSpinner(Z)V
new-instance v0, Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
invoke-direct {v0, p0, p1}, Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;-><init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/RecordSegment;)V
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:goto_55
return-void
:cond_56
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->resume()V
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->hideThumbnailOverlayDelayed()V
invoke-direct {p0, v2}, Lco/vine/android/recorder/VineRecorder;->animatePreviewSpinner(Z)V
goto :goto_55
.end method
.method public release()Z
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
invoke-super {p0}, Lco/vine/android/recorder/RegularVineRecorder;->release()Z
move-result v0
return v0
.end method
.method public requestZoomProgressUpdate()V
.registers 5
invoke-static {}, Lco/vine/android/recorder/CameraManager;->getInstance()Lco/vine/android/recorder/CameraManager;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isSmoothZoomingSupported()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomUpdateRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0x1e
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_13
return-void
.end method
.method public reverseFrames()V
.registers 2
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->reverse()V
:cond_b
return-void
.end method
.method public saveSession(Ljava/lang/Runnable;Z)V
.registers 5
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z
const-string v0, "saveSession"
const/4 v1, 0x1
invoke-virtual {p0, v0, p1, p2, v1}, Lco/vine/android/recorder/VineRecorder;->stop(Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
return-void
.end method
.method public setAutoFocusing(Z)V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_14
iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder;->mAutoFocusing:Z
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder;->mAutoFocusing:Z
invoke-virtual {v1, v2}, Lco/vine/android/recorder/RecordController;->setAutoFocus(Z)V
iget-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mAutoFocusing:Z
if-eqz v1, :cond_14
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->dismissFocusIndicator()V
:cond_14
return-void
.end method
.method public setDiscardChanges(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z
return-void
.end method
.method public setEditMode(Landroid/view/View;ZZ)V
.registers 11
const/4 v6, 0x1
const/4 v5, 0x0
const-string v2, "Set edit mode: {} {}."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v5
invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v6
invoke-static {v2, v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder;->mTimelapsing:Z
if-eqz v2, :cond_28
sget-boolean v2, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v2, :cond_28
iput-boolean v5, p0, Lco/vine/android/recorder/VineRecorder;->mTimelapsing:Z
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mTimeLapseRunnable:Ljava/lang/Runnable;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:goto_27
:cond_27
return-void
:cond_28
iget-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditing:Z
iput-boolean p2, p0, Lco/vine/android/recorder/VineRecorder;->mEditing:Z
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordingFile;->hasData()Z
move-result v2
if-eqz v2, :cond_e6
iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder;->mEditing:Z
if-eqz v2, :cond_61
iput-boolean v5, p0, Lco/vine/android/recorder/VineRecorder;->mStartWithEditMode:Z
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z
move-result v2
if-eqz v2, :cond_5e
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v2
if-eqz v2, :cond_5a
const-string v2, "editMode"
new-instance v3, Lco/vine/android/recorder/VineRecorder$11;
invoke-direct {v3, p0, v1}, Lco/vine/android/recorder/VineRecorder$11;-><init>(Lco/vine/android/recorder/VineRecorder;Z)V
invoke-virtual {p0, v2, v3, v6, v5}, Lco/vine/android/recorder/VineRecorder;->stop(Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
goto :goto_27
:cond_5a
invoke-virtual {p0, v1}, Lco/vine/android/recorder/VineRecorder;->startEditMode(Z)V
goto :goto_27
:cond_5e
iput-boolean v5, p0, Lco/vine/android/recorder/VineRecorder;->mEditing:Z
goto :goto_27
:cond_61
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->releaseSegmentChangeDetector()V
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
if-eqz v2, :cond_6d
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mRefreshPreviewTask:Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;
invoke-virtual {v2, v6}, Lco/vine/android/recorder/VineRecorder$RefreshPreviewTask;->cancel(Z)Z
:cond_6d
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
if-eqz v2, :cond_76
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->stopPlayback()V
:cond_76
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
if-eqz v2, :cond_7f
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v2}, Lco/vine/android/dragsort/DragSortWidget;->cleanUp()V
:cond_7f
iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder;->mIsGridOn:Z
if-eqz v2, :cond_8d
invoke-virtual {p0, v5}, Lco/vine/android/recorder/VineRecorder;->setGridOn(Z)V
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
iget-boolean v3, p0, Lco/vine/android/recorder/VineRecorder;->mIsGridOn:Z
invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V
:cond_8d
iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder;->mGhostModeEnabled:Z
if-eqz v2, :cond_94
invoke-virtual {p0, v5}, Lco/vine/android/recorder/VineRecorder;->setGhostMode(Z)Z
:cond_94
if-nez p3, :cond_c0
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->commitChanges()Z
move-result v2
if-eqz v2, :cond_b7
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_b7
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v2, :cond_b7
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
add-int/lit8 v4, v0, -0x1
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v3, v2, v6}, Lco/vine/android/recorder/RecordController;->makePreview(Lco/vine/android/recorder/RecordSegment;Z)V
:cond_b7
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v2, :cond_c0
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordingFile;->invalidateGhostThumbnail()V
:cond_c0
invoke-direct {p0, v6}, Lco/vine/android/recorder/VineRecorder;->animateEditModeControlsOut(Z)V
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->animateCaptureControlsIn()V
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->invalidateGhostView()V
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->invalidateFinishButton()V
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->setHasPreviewedAlreadyIfNeeded()V
iput-boolean v5, p0, Lco/vine/android/recorder/VineRecorder;->mReturnToPreview:Z
new-instance v2, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;
const-string v3, "Set EditMode."
invoke-direct {v2, p0, p1, v3}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;-><init>(Lco/vine/android/recorder/RegularVineRecorder;Landroid/view/View;Ljava/lang/String;)V
iput-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
new-array v3, v5, [Ljava/lang/Void;
invoke-virtual {v2, v3}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
const/4 v2, 0x0
iput-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
goto/16 :goto_27
:cond_e6
iput-boolean v5, p0, Lco/vine/android/recorder/VineRecorder;->mEditing:Z
sget-boolean v2, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v2, :cond_27
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->showTimeLapseDialog()V
goto/16 :goto_27
.end method
.method public setEditMode(ZZ)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, v0, p1, p2}, Lco/vine/android/recorder/VineRecorder;->setEditMode(Landroid/view/View;ZZ)V
return-void
.end method
.method public setGhostMode(Z)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
if-eqz v1, :cond_2a
if-eqz p1, :cond_1d
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_c
iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder;->mGhostModeEnabled:Z
iget-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mGhostModeEnabled:Z
if-eqz v1, :cond_25
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v1, v0}, Lco/vine/android/recorder/RecordController;->requestGhostDrawing(Z)V
:goto_17
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGhostButton:Landroid/widget/ToggleButton;
invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V
:goto_1c
return p1
:cond_1d
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_c
:cond_25
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->updateGhostBitmap(Landroid/graphics/Bitmap;)V
goto :goto_17
:cond_2a
move p1, v0
goto :goto_1c
.end method
.method public setGridOn(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder;->mIsGridOn:Z
return-void
.end method
.method protected setHasPreviewedAlreadyIfNeeded()V
.registers 5
iget-wide v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentDuration:J
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v2
iget v2, v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I
int-to-long v2, v2
cmp-long v0, v0, v2
if-ltz v0, :cond_13
const/4 v0, 0x1
:goto_10
iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mHasPreviewedAlready:Z
return-void
:cond_13
const/4 v0, 0x0
goto :goto_10
.end method
.method public showFocusIndicator(II)V
.registers 10
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
if-eqz v2, :cond_30
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v1
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v0
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
div-int/lit8 v3, v1, 0x2
sub-int v3, p1, v3
div-int/lit8 v4, v0, 0x2
sub-int v4, p2, v4
div-int/lit8 v5, v1, 0x2
add-int/2addr v5, p1
div-int/lit8 v6, v0, 0x2
add-int/2addr v6, p2
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFocusIndicator:Landroid/widget/ImageView;
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mFocusAnimationSet:Landroid/view/animation/AnimationSet;
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_30
return-void
.end method
.method public showThumbnailOverlay(Lco/vine/android/recorder/RecordSegment;)V
.registers 6
const/4 v3, 0x0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
if-eqz v1, :cond_3a
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I
move-result v1
if-nez v1, :cond_11
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailSegment:Lco/vine/android/recorder/RecordSegment;
if-eq p1, v1, :cond_3a
:cond_11
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
const/high16 v2, 0x3f80
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V
if-nez p1, :cond_2f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v1
if-lez v1, :cond_2f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1, v3}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object p1
check-cast p1, Lco/vine/android/recorder/RecordSegment;
:cond_2f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
invoke-virtual {p1, v1}, Lco/vine/android/recorder/RecordSegment;->getDrawableCopy(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailOverlay:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_3a
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailSegment:Lco/vine/android/recorder/RecordSegment;
return-void
.end method
.method public showTimeLapseDialog()V
.registers 6
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v3, "Time Lapse Mode"
invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
new-instance v2, Landroid/widget/LinearLayout;
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/EditText;
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
const/16 v3, 0x2002
invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V
const-string v3, "time in seconds, decimals OK."
invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
const-string v3, "Start"
new-instance v4, Lco/vine/android/recorder/VineRecorder$15;
invoke-direct {v4, p0, v1}, Lco/vine/android/recorder/VineRecorder$15;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/EditText;)V
invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const-string v3, "Cancel"
new-instance v4, Lco/vine/android/recorder/VineRecorder$16;
invoke-direct {v4, p0}, Lco/vine/android/recorder/VineRecorder$16;-><init>(Lco/vine/android/recorder/VineRecorder;)V
invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
return-void
.end method
.method public startEditMode(Z)V
.registers 9
const/4 v6, 0x0
const/4 v5, -0x1
const/4 v4, 0x0
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->adjustEditBoundaries()V
iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mReturnToPreview:Z
if-nez v0, :cond_64
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->animateCaptureControlsOut()V
:goto_d
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->animateEditModeControlsIn()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
if-eqz v0, :cond_19
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V
:cond_19
iput v5, p0, Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
iput-object v6, p0, Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
if-nez p1, :cond_68
new-instance v0, Lco/vine/android/recorder/SegmentEditorAdapter;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
iget v3, p0, Lco/vine/android/recorder/VineRecorder;->density:F
invoke-direct {v0, v1, v2, v3}, Lco/vine/android/recorder/SegmentEditorAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;F)V
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
:goto_2c
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->canUndoDelete()Z
move-result v0
if-eqz v0, :cond_72
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:goto_39
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
if-eqz v0, :cond_53
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->notifyDataSetChanged()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0, v5}, Lco/vine/android/dragsort/DragSortWidget;->setSelection(I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-virtual {v0, v4}, Lco/vine/android/dragsort/DragSortWidget;->setFocused(I)V
:cond_53
invoke-virtual {p0, v4}, Lco/vine/android/recorder/VineRecorder;->setGhostMode(Z)Z
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
if-eqz v0, :cond_5f
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V
:cond_5f
const/4 v0, 0x1
invoke-virtual {p0, v6, v0}, Lco/vine/android/recorder/VineRecorder;->refreshVideoView(Lco/vine/android/recorder/RecordSegment;Z)V
return-void
:cond_64
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->hideCaptureControls()V
goto :goto_d
:cond_68
new-instance v0, Lco/vine/android/recorder/SegmentEditorAdapter;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-direct {v0, v1}, Lco/vine/android/recorder/SegmentEditorAdapter;-><init>(Lco/vine/android/recorder/SegmentEditorAdapter;)V
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
goto :goto_2c
:cond_72
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_39
.end method
.method public startTimeLapse(D)V
.registers 5
const-wide v0, 0x408f400000000000L
mul-double/2addr v0, p1
iput-wide v0, p0, Lco/vine/android/recorder/VineRecorder;->mTimeLapseDelay:D
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mTimelapsing:Z
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTimeLapseRunnable:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
return-void
.end method
.method public stopZoom()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->stopZoom()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mZoomUpdateRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_14
return-void
.end method
.method public swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
.registers 5
const/4 v0, 0x0
if-eqz p2, :cond_e
invoke-super {p0, p1, p2}, Lco/vine/android/recorder/RegularVineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move-result-object v0
invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->invalidateGhostView()V
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lco/vine/android/recorder/VineRecorder;->setGhostMode(Z)Z
:cond_e
return-object v0
.end method
.method public switchFlash()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->switchFlash()V
return-void
.end method
.method public updateGhostBitmap(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/recorder/VineRecorder$8;
invoke-direct {v1, p0, p1}, Lco/vine/android/recorder/VineRecorder$8;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public writePreviewToFile()V
.registers 14
const/4 v12, 0x0
:try_start_1
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_78
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v1
iget v1, v1, Lco/vine/android/recorder/CameraSetting;->frameRate:I
iput v1, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I
:goto_1a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".video"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_CONTAINER_EXT:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget v2, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I
const/16 v3, 0x1e0
iget-boolean v4, p0, Lco/vine/android/recorder/VineRecorder;->mUseMp4:Z
invoke-static {v1, v2, v3, v4}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IIZ)Lco/vine/android/recorder/SwVineFrameRecorder;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/recorder/SwVineFrameRecorder;->start()V
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v11
new-instance v0, Lco/vine/android/recorder/SwCombiningRunnable;
invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v11}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;
move-result-object v3
invoke-virtual {v11}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B
move-result-object v4
iget-object v5, p0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
iget-object v7, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v7}, Lco/vine/android/recorder/RecordController;->getFinishProcessTask()Lco/vine/android/recorder/BaseFinishProcessTask;
move-result-object v7
iget-object v8, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v8}, Lco/vine/android/recorder/RecordController;->getPreviewBitmap()Landroid/graphics/Bitmap;
move-result-object v8
iget-object v9, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v9}, Lco/vine/android/recorder/RecordController;->getFrameBuffer()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v9
invoke-direct/range {v0 .. v9}, Lco/vine/android/recorder/SwCombiningRunnable;-><init>(Lco/vine/android/recorder/RecordingFile;ZLco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
invoke-virtual {v0}, Lco/vine/android/recorder/SwCombiningRunnable;->combineVideos()Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
:goto_77
return-void
:cond_78
const/16 v1, 0x1e
iput v1, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I
:try_end_7c
.catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_1 .. :try_end_7c} :catch_7d
goto :goto_1a
:catch_7d
move-exception v10
const-string v1, "Cannot start audio/video recorder. "
new-array v2, v12, [Ljava/lang/Object;
invoke-static {v10, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_77
.end method