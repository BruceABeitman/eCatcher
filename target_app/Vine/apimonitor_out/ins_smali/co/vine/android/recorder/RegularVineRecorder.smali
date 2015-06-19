.class public abstract Lco/vine/android/recorder/RegularVineRecorder;
.super Lco/vine/android/recorder/BasicVineRecorder;
.source "RegularVineRecorder.java"
.implements Landroid/view/View$OnTouchListener;
.field private static final PREF_BOTTOM_MASK_HEIGHT:Ljava/lang/String; = "bottomMaskHeightPx"
.field protected static final TOUCH_EDGE_BOUNDARY:F = 0.05f
.field public density:F
.field protected mBottomMaskId:I
.field protected mBottomMaskView:Landroid/view/View;
.field protected mCameraFailString:I
.field protected mCameraViewResourceId:I
.field protected mDeviceNotSupportedString:Ljava/lang/String;
.field protected mFinishLastSegmentString:Ljava/lang/CharSequence;
.field protected mFinishProgressDialog:Landroid/app/ProgressDialog;
.field protected mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
.field private mIsHidingFinishProgressDialog:Z
.field protected mOpenCameraDialog:Landroid/app/ProgressDialog;
.field protected mOpenCameraResource:Ljava/lang/CharSequence;
.field protected mProgressView:Lco/vine/android/recorder/ProgressView;
.field protected mProgressViewResourceId:I
.field protected mRootLayoutId:I
.field protected mRootLayoutView:Landroid/view/View;
.field protected mSize:Landroid/graphics/Point;
.field protected mStartProgressDialog:Landroid/app/ProgressDialog;
.field protected mStartProgressDialogMessage:Ljava/lang/CharSequence;
.field protected mToast:Landroid/widget/Toast;
.field protected mTopMaskId:I
.field protected mTopMaskView:Landroid/view/View;
.method public varargs constructor <init>(ILandroid/graphics/Point;Landroid/app/Activity;IIIIIIILjava/lang/String;ZLco/vine/android/recorder/RecordSessionVersion;[Ljava/lang/CharSequence;)V
.registers 22
sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;
move-object/from16 v0, p13
if-ne v0, v1, :cond_48
const/4 v5, 0x1
:goto_7
sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;
move-object/from16 v0, p13
if-eq v0, v1, :cond_4a
const/4 v6, 0x1
:goto_e
move-object v1, p0
move v2, p1
move-object v3, p3
move/from16 v4, p12
invoke-direct/range {v1 .. v6}, Lco/vine/android/recorder/BasicVineRecorder;-><init>(ILandroid/app/Activity;ZZZ)V
const/4 v1, 0x0
aget-object v1, p14, v1
iput-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;
move-object/from16 v0, p14
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
move/from16 v0, p9
invoke-virtual {p3, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraResource:Ljava/lang/CharSequence;
iput-object p2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mSize:Landroid/graphics/Point;
invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
iput v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->density:F
iput p4, p0, Lco/vine/android/recorder/RegularVineRecorder;->mProgressViewResourceId:I
iput p5, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraViewResourceId:I
move/from16 v0, p10
iput v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mRootLayoutId:I
iput p8, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraFailString:I
move-object/from16 v0, p11
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mDeviceNotSupportedString:Ljava/lang/String;
iput p6, p0, Lco/vine/android/recorder/RegularVineRecorder;->mTopMaskId:I
iput p7, p0, Lco/vine/android/recorder/RegularVineRecorder;->mBottomMaskId:I
return-void
:cond_48
const/4 v5, 0x0
goto :goto_7
:cond_4a
const/4 v6, 0x0
goto :goto_e
.end method
.method static synthetic access$002(Lco/vine/android/recorder/RegularVineRecorder;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mIsHidingFinishProgressDialog:Z
return p1
.end method
.method public static getBottomMaskHeightPref(Z)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "bottomMaskHeightPx"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public changeProgress(J)V
.registers 7
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
if-eqz v0, :cond_22
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
if-eqz v1, :cond_22
long-to-float v1, p1
const/high16 v2, 0x3f80
iget-object v3, p0, Lco/vine/android/recorder/RegularVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v3
iget v3, v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I
int-to-float v3, v3
mul-float/2addr v2, v3
div-float/2addr v1, v2
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProgressView;->setProgressRatio(F)V
invoke-static {}, Lco/vine/android/util/SystemUtil;->isOnMainThread()Z
move-result v1
if-eqz v1, :cond_23
invoke-virtual {v0}, Lco/vine/android/recorder/ProgressView;->invalidate()V
:cond_22
:goto_22
return-void
:cond_23
invoke-virtual {v0}, Lco/vine/android/recorder/ProgressView;->postInvalidate()V
goto :goto_22
.end method
.method public getFinishProcessTask(Ljava/lang/String;Ljava/lang/Runnable;ZZ)Lco/vine/android/recorder/BaseFinishProcessTask;
.registers 11
new-instance v0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v4, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;-><init>(Lco/vine/android/recorder/RegularVineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
return-object v0
.end method
.method protected getOnDeviceNotSupportedAction()Ljava/lang/Runnable;
.registers 2
new-instance v0, Lco/vine/android/recorder/RegularVineRecorder$3;
invoke-direct {v0, p0}, Lco/vine/android/recorder/RegularVineRecorder$3;-><init>(Lco/vine/android/recorder/RegularVineRecorder;)V
return-object v0
.end method
.method public getOnResumeTask(Landroid/view/View;Ljava/lang/String;)Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
.registers 4
new-instance v0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;
invoke-direct {v0, p0, p1, p2}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;-><init>(Lco/vine/android/recorder/RegularVineRecorder;Landroid/view/View;Ljava/lang/String;)V
return-object v0
.end method
.method public getSize()Landroid/graphics/Point;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mSize:Landroid/graphics/Point;
return-object v0
.end method
.method protected onStop()Z
.registers 5
const/4 v2, 0x0
const/4 v1, 0x1
iget-boolean v3, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFastEncoding:Z
if-eqz v3, :cond_14
iget-boolean v3, p0, Lco/vine/android/recorder/RegularVineRecorder;->mIsHidingFinishProgressDialog:Z
if-nez v3, :cond_d
iput-boolean v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mIsHidingFinishProgressDialog:Z
:goto_c
return v1
:cond_d
const-string v1, "Stop twice? wtf."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move v1, v2
goto :goto_c
:cond_14
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_29
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v3
if-nez v3, :cond_29
iget-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mActivity:Landroid/app/Activity;
new-instance v3, Lco/vine/android/recorder/RegularVineRecorder$2;
invoke-direct {v3, p0, v0}, Lco/vine/android/recorder/RegularVineRecorder$2;-><init>(Lco/vine/android/recorder/RegularVineRecorder;Landroid/app/ProgressDialog;)V
invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_c
:cond_29
const-string v1, "Stop twice? wtf."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
move v1, v2
goto :goto_c
.end method
.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 8
const/4 v2, 0x1
const/4 v3, 0x0
monitor-enter p0
:try_start_3
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
iget-object v4, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v4, :cond_54
iget-boolean v4, p0, Lco/vine/android/recorder/RegularVineRecorder;->mEnabled:Z
if-eqz v4, :cond_54
iget-boolean v3, p0, Lco/vine/android/recorder/RegularVineRecorder;->mAutoFocusing:Z
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_3b
if-eqz v3, :cond_42
packed-switch v0, :pswitch_data_56
:cond_16
:goto_16
monitor-exit p0
return v2
:pswitch_18
const/4 v3, 0x0
:try_start_19
invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F
move-result v1
const v3, 0x3d4ccccd
iget-object v4, p0, Lco/vine/android/recorder/RegularVineRecorder;->mSize:Landroid/graphics/Point;
iget v4, v4, Landroid/graphics/Point;->x:I
int-to-float v4, v4
mul-float/2addr v3, v4
cmpl-float v3, v1, v3
if-lez v3, :cond_16
const v3, 0x3f733333
iget-object v4, p0, Lco/vine/android/recorder/RegularVineRecorder;->mSize:Landroid/graphics/Point;
iget v4, v4, Landroid/graphics/Point;->x:I
int-to-float v4, v4
mul-float/2addr v3, v4
cmpg-float v3, v1, v3
if-gez v3, :cond_16
invoke-virtual {p0}, Lco/vine/android/recorder/RegularVineRecorder;->startRelativeTime()Z
:try_end_3a
.catchall {:try_start_19 .. :try_end_3a} :catchall_3b
goto :goto_16
:catchall_3b
move-exception v2
monitor-exit p0
throw v2
:try_start_3e
:pswitch_3e
invoke-virtual {p0}, Lco/vine/android/recorder/RegularVineRecorder;->endRelativeTime()Z
goto :goto_16
:cond_42
packed-switch v0, :pswitch_data_5e
goto :goto_16
:pswitch_46
const/4 v3, 0x0
invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F
move-result v3
const/4 v4, 0x1
invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F
move-result v4
invoke-virtual {p0, v3, v4}, Lco/vine/android/recorder/RegularVineRecorder;->changeFocusTo(FF)V
:try_end_53
.catchall {:try_start_3e .. :try_end_53} :catchall_3b
goto :goto_16
:cond_54
move v2, v3
goto :goto_16
:pswitch_data_5e
.packed-switch 0x1
:pswitch_46
.end packed-switch
:pswitch_data_56
.packed-switch 0x0
:pswitch_18
:pswitch_3e
.end packed-switch
.end method
.method public onUiPaused()V
.registers 4
const/4 v2, 0x0
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraView:Landroid/view/View;
if-eqz v1, :cond_a
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraView:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:cond_a
:try_start_a
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
if-eqz v1, :cond_13
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
:cond_13
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
if-eqz v1, :cond_1c
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
:cond_1c
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;
if-eqz v1, :cond_25
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
:goto_25
:cond_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_37
iput-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
iput-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
iput-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;
iput-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mTopMaskView:Landroid/view/View;
iput-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mBottomMaskView:Landroid/view/View;
iput-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
iput-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder;->mToast:Landroid/widget/Toast;
invoke-super {p0}, Lco/vine/android/recorder/BasicVineRecorder;->onUiPaused()V
return-void
:catch_37
move-exception v0
const-string v1, "It\'s probably detached already."
invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_25
.end method
.method public onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
.registers 10
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Lco/vine/android/recorder/BasicVineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
aget-object v1, v1, v4
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
const/16 v1, 0x64
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lco/vine/android/recorder/R$drawable;->progress_horizontal:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraResource:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mRootLayoutId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mRootLayoutView:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraViewResourceId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraView:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraView:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mTopMaskId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mTopMaskView:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mBottomMaskId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mBottomMaskView:Landroid/view/View;
iget v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mProgressViewResourceId:I
invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/ProgressView;
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraView:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
invoke-virtual {v0, v4}, Lco/vine/android/recorder/ProgressView;->setKeepScreenOn(Z)V
iget v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mCameraFailString:I
invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mToast:Landroid/widget/Toast;
return-void
.end method
.method protected showCameraFailedToast()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/recorder/RegularVineRecorder$1;
invoke-direct {v1, p0}, Lco/vine/android/recorder/RegularVineRecorder$1;-><init>(Lco/vine/android/recorder/RegularVineRecorder;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public stopAndDiscardChanges(Ljava/lang/String;Ljava/lang/Runnable;Z)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/recorder/RegularVineRecorder;->setDiscardChanges(Z)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
const/4 v1, 0x0
invoke-virtual {v0, p1, p3, v1}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->run(Ljava/lang/String;ZZ)V
if-eqz p2, :cond_f
invoke-interface {p2}, Ljava/lang/Runnable;->run()V
:cond_f
return-void
.end method