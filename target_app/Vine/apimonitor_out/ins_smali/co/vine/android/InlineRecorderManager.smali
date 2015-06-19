.class public Lco/vine/android/InlineRecorderManager;
.super Landroid/widget/RelativeLayout;
.source "InlineRecorderManager.java"
.implements Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;
.field private static final CLICK_LENGTH:J = 0xc8L
.field private mCameraView:Landroid/view/View;
.field private mCanInline:Z
.field private mDownWasInRecordButton:Z
.field private mFinishProgressView:Lco/vine/android/recorder/ProgressView;
.field private mFinishRunnable:Lco/vine/android/InlineRecorderManager$FinishRunnable;
.field private mFragment:Lco/vine/android/ConversationFragment;
.field private mHandler:Landroid/os/Handler;
.field private mIsWaitingForResumeThread:Z
.field private mProcessing:Z
.field private mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
.field private mRecordingButtonContainer:Landroid/view/View;
.field private mRecordingContainer:Landroid/view/View;
.field private mResumeThread:Lco/vine/android/InlineRecorderManager$ResumeThread;
.field private mStartInlineRecording:Ljava/lang/Runnable;
.field private mSwipeUpText:Landroid/widget/TextView;
.field private mTextToggle:Landroid/view/View;
.field private mTopMask:Landroid/view/View;
.field private mVersion:Lco/vine/android/recorder/RecordSessionVersion;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;
invoke-direct {v0, p0, v1}, Lco/vine/android/InlineRecorderManager$StartInlineRecording;-><init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mStartInlineRecording:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/InlineRecorderManager$FinishRunnable;
invoke-direct {v0, p0, v1}, Lco/vine/android/InlineRecorderManager$FinishRunnable;-><init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFinishRunnable:Lco/vine/android/InlineRecorderManager$FinishRunnable;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;
invoke-direct {v0, p0, v1}, Lco/vine/android/InlineRecorderManager$StartInlineRecording;-><init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mStartInlineRecording:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/InlineRecorderManager$FinishRunnable;
invoke-direct {v0, p0, v1}, Lco/vine/android/InlineRecorderManager$FinishRunnable;-><init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFinishRunnable:Lco/vine/android/InlineRecorderManager$FinishRunnable;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;
invoke-direct {v0, p0, v1}, Lco/vine/android/InlineRecorderManager$StartInlineRecording;-><init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mStartInlineRecording:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/InlineRecorderManager$FinishRunnable;
invoke-direct {v0, p0, v1}, Lco/vine/android/InlineRecorderManager$FinishRunnable;-><init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFinishRunnable:Lco/vine/android/InlineRecorderManager$FinishRunnable;
return-void
.end method
.method static synthetic access$200(Lco/vine/android/InlineRecorderManager;Z)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/InlineRecorderManager;->toggleRecorder(Z)V
return-void
.end method
.method static synthetic access$300(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/ProgressView;
.registers 2
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/InlineRecorderManager;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$500(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/ConversationFragment;
.registers 2
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/InlineVineRecorder;
.registers 2
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/RecordingFile;
.registers 2
invoke-direct {p0}, Lco/vine/android/InlineRecorderManager;->getNewMessageRecordingFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v0
return-object v0
.end method
.method static synthetic access$800(Lco/vine/android/InlineRecorderManager;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$902(Lco/vine/android/InlineRecorderManager;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/InlineRecorderManager;->mIsWaitingForResumeThread:Z
return p1
.end method
.method private getNewMessageRecordingFile()Lco/vine/android/recorder/RecordingFile;
.registers 9
:try_start_0
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v2}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v0, v2}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/recorder/RecordSessionManager;->createFolderForSession()Ljava/io/File;
move-result-object v1
new-instance v0, Lco/vine/android/recorder/RecordingFile;
new-instance v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
iget-object v3, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v3}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v2, v3}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V
iget-object v3, p0, Lco/vine/android/InlineRecorderManager;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
invoke-static {v2, v3}, Lco/vine/android/recorder/RecordSession;->newSession(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Lco/vine/android/recorder/RecordSessionVersion;)Lco/vine/android/recorder/RecordSession;
move-result-object v2
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/RecordingFile;-><init>(Ljava/io/File;Lco/vine/android/recorder/RecordSession;ZZZ)V
:try_end_29
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_2a
return-object v0
:catch_2a
move-exception v6
new-instance v0, Ljava/lang/RuntimeException;
invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v0
.end method
.method private isInCancelZone(F)Z
.registers 5
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {p0}, Lco/vine/android/InlineRecorderManager;->getMeasuredHeight()I
move-result v1
invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I
move-result v2
mul-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
int-to-float v1, v1
cmpg-float v1, p1, v1
if-gez v1, :cond_1a
const/4 v1, 0x1
:goto_19
return v1
:cond_1a
const/4 v1, 0x0
goto :goto_19
.end method
.method private isInRecordButton(Landroid/view/MotionEvent;)Z
.registers 6
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
if-eqz v2, :cond_c
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v2}, Lco/vine/android/ConversationFragment;->isInTextInputMode()Z
move-result v2
if-eqz v2, :cond_e
:cond_c
const/4 v2, 0x0
:goto_d
return v2
:cond_e
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I
move-result v2
invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I
move-result v3
invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
float-to-int v2, v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v3, v3
invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
goto :goto_d
.end method
.method private toggleRecorder(Z)V
.registers 6
const/4 v3, 0x0
iget-boolean v0, p0, Lco/vine/android/InlineRecorderManager;->mCanInline:Z
if-eqz v0, :cond_52
if-eqz p1, :cond_53
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mCameraView:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
sput-wide v0, Lco/vine/android/recorder/InlineVineRecorder;->startnanos:J
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
const v1, 0x3c23d70a
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
const-wide/16 v1, 0xfa
invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mTopMask:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
const-string v1, "start"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/InlineVineRecorder;->onResume(Ljava/lang/String;Z)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v0}, Lco/vine/android/ConversationFragment;->onRecorderShown()V
:cond_52
:goto_52
return-void
:cond_53
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v0}, Lco/vine/android/ConversationFragment;->onRecorderHidden()V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_52
.end method
.method private waitForResume()V
.registers 3
iget-boolean v1, p0, Lco/vine/android/InlineRecorderManager;->mIsWaitingForResumeThread:Z
if-eqz v1, :cond_9
:try_start_4
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mResumeThread:Lco/vine/android/InlineRecorderManager$ResumeThread;
invoke-virtual {v1}, Lco/vine/android/InlineRecorderManager$ResumeThread;->join()V
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "You can\'t interrupt this."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_9
.end method
.method  getRecorder()Lco/vine/android/recorder/InlineVineRecorder;
.registers 2
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
return-object v0
.end method
.method public init(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationActivity;Lco/vine/android/recorder/RecordSessionVersion;)V
.registers 23
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-static/range {p2 .. p2}, Lco/vine/android/util/Util;->isCapableOfInline(Landroid/content/Context;)Z
move-result v2
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/InlineRecorderManager;->mCanInline:Z
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v2}, Lco/vine/android/ConversationFragment;->getView()Landroid/view/View;
move-result-object v18
const v2, 0x7f0a0098
move-object/from16 v0, v18
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
const v2, 0x7f0a00a2
move-object/from16 v0, v18
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/InlineRecorderManager;->mSwipeUpText:Landroid/widget/TextView;
move-object/from16 v0, p3
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/InlineRecorderManager;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
move-object/from16 v0, p0
iget-boolean v2, v0, Lco/vine/android/InlineRecorderManager;->mCanInline:Z
if-eqz v2, :cond_bc
new-instance v2, Lco/vine/android/recorder/InlineVineRecorder;
invoke-static/range {p2 .. p2}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
move-result-object v4
invoke-virtual/range {p2 .. p2}, Lco/vine/android/ConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v5, 0x7f0b008c
invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v7
const v8, 0x7f0a00a1
const v9, 0x7f0a00a7
const v10, 0x7f0a009f
const v11, 0x7f0a00a0
const v12, 0x7f0a00a3
const v13, 0x7f0e0054
const v14, 0x7f0e0167
const v15, 0x7f0a0096
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
const v5, 0x7f0e0256
invoke-virtual {v3, v5}, Lco/vine/android/ConversationFragment;->getString(I)Ljava/lang/String;
move-result-object v16
const/4 v3, 0x4
new-array v0, v3, [Ljava/lang/CharSequence;
move-object/from16 v17, v0
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
const v6, 0x7f0e0106
invoke-virtual {v5, v6}, Lco/vine/android/ConversationFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v5
aput-object v5, v17, v3
const/4 v3, 0x1
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
const v6, 0x7f0e00f6
invoke-virtual {v5, v6}, Lco/vine/android/ConversationFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v5
aput-object v5, v17, v3
const/4 v3, 0x2
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
const v6, 0x7f0e00f7
invoke-virtual {v5, v6}, Lco/vine/android/ConversationFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v5
aput-object v5, v17, v3
const/4 v3, 0x3
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
const v6, 0x7f0e00f8
invoke-virtual {v5, v6}, Lco/vine/android/ConversationFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v5
aput-object v5, v17, v3
move-object/from16 v3, p3
move-object/from16 v5, p2
move-object/from16 v6, p0
invoke-direct/range {v2 .. v17}, Lco/vine/android/recorder/InlineVineRecorder;-><init>(Lco/vine/android/recorder/RecordSessionVersion;Landroid/graphics/Point;Landroid/app/Activity;Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;IIIIIIIIILjava/lang/String;[Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
:cond_bc
return-void
.end method
.method public initDisabled(Lco/vine/android/ConversationFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
return-void
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-virtual {p0}, Lco/vine/android/InlineRecorderManager;->getHandler()Landroid/os/Handler;
move-result-object v0
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mHandler:Landroid/os/Handler;
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a00a9
invoke-virtual {p0, v0}, Lco/vine/android/InlineRecorderManager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
const v0, 0x7f0a009e
invoke-virtual {p0, v0}, Lco/vine/android/InlineRecorderManager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
const v0, 0x7f0a00a7
invoke-virtual {p0, v0}, Lco/vine/android/InlineRecorderManager;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/ProgressView;
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
const v0, 0x7f0a00a0
invoke-virtual {p0, v0}, Lco/vine/android/InlineRecorderManager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mTopMask:Landroid/view/View;
const v0, 0x7f0a009f
invoke-virtual {p0, v0}, Lco/vine/android/InlineRecorderManager;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/InlineRecorderManager;->mCameraView:Landroid/view/View;
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/InlineRecorderManager;->isInRecordButton(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public onPaused()V
.registers 3
iget-boolean v0, p0, Lco/vine/android/InlineRecorderManager;->mCanInline:Z
if-eqz v0, :cond_16
invoke-direct {p0}, Lco/vine/android/InlineRecorderManager;->waitForResume()V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/recorder/InlineVineRecorder;->setStarted(Z)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/InlineVineRecorder;->onUiPaused()V
:cond_16
return-void
.end method
.method public onProcessingFinish()V
.registers 4
const/4 v2, 0x0
iput-boolean v2, p0, Lco/vine/android/InlineRecorderManager;->mProcessing:Z
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
return-void
.end method
.method public onProcessingStart()V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/InlineRecorderManager;->toggleRecorder(Z)V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/InlineRecorderManager;->mProcessing:Z
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
return-void
.end method
.method public onResume()V
.registers 6
const-string v1, " + Lco/vine/android/InlineRecorderManager; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
iget-boolean v1, p0, Lco/vine/android/InlineRecorderManager;->mCanInline:Z
if-eqz v1, :cond_27
:try_start_5
new-instance v1, Lco/vine/android/InlineRecorderManager$ResumeThread;
invoke-direct {v1, p0}, Lco/vine/android/InlineRecorderManager$ResumeThread;-><init>(Lco/vine/android/InlineRecorderManager;)V
iput-object v1, p0, Lco/vine/android/InlineRecorderManager;->mResumeThread:Lco/vine/android/InlineRecorderManager$ResumeThread;
:try_end_c
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_28
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mCameraView:Landroid/view/View;
invoke-virtual {v1, v2}, Lco/vine/android/recorder/InlineVineRecorder;->setCameraView(Landroid/view/View;)V
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v2}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lco/vine/android/InlineRecorderManager;->mFinishRunnable:Lco/vine/android/InlineRecorderManager$FinishRunnable;
invoke-virtual {v1, v2, v3, v4}, Lco/vine/android/recorder/InlineVineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
iput-boolean v4, p0, Lco/vine/android/InlineRecorderManager;->mIsWaitingForResumeThread:Z
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mResumeThread:Lco/vine/android/InlineRecorderManager$ResumeThread;
invoke-virtual {v1}, Lco/vine/android/InlineRecorderManager$ResumeThread;->start()V
:cond_27
const-string v1, " - Lco/vine/android/InlineRecorderManager; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_28
move-exception v0
const/4 v1, 0x0
iput-boolean v1, p0, Lco/vine/android/InlineRecorderManager;->mCanInline:Z
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/InlineVineRecorder;->release()Z
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
throw v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 11
.parameter
.end parameter
const-wide/16 v7, 0xc8
const v3, 0x7f090081
const/4 v6, 0x0
const/4 v1, 0x0
const/4 v0, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
packed-switch v2, :pswitch_data_18a
:cond_f
move v0, v1
:cond_10
:goto_10
return v0
:pswitch_11
iget-boolean v2, p0, Lco/vine/android/InlineRecorderManager;->mProcessing:Z
if-nez v2, :cond_4b
invoke-direct {p0, p1}, Lco/vine/android/InlineRecorderManager;->isInRecordButton(Landroid/view/MotionEvent;)Z
move-result v2
if-eqz v2, :cond_4b
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v2
if-eqz v2, :cond_4b
iput-boolean v0, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
if-eqz v1, :cond_10
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mSwipeUpText:Landroid/widget/TextView;
invoke-virtual {p0}, Lco/vine/android/InlineRecorderManager;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v1, v0}, Lco/vine/android/recorder/InlineVineRecorder;->setStarted(Z)V
invoke-direct {p0}, Lco/vine/android/InlineRecorderManager;->waitForResume()V
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/InlineVineRecorder;->openCamera()V
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mStartInlineRecording:Ljava/lang/Runnable;
invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_10
:cond_4b
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_5b
iput-boolean v1, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2, v1}, Lco/vine/android/recorder/InlineVineRecorder;->setStarted(Z)V
goto :goto_10
:cond_5b
move v0, v1
goto :goto_10
:pswitch_5d
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
if-nez v0, :cond_64
iget-boolean v0, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
goto :goto_10
:cond_64
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
invoke-direct {p0, v0}, Lco/vine/android/InlineRecorderManager;->isInCancelZone(F)Z
move-result v0
if-eqz v0, :cond_7c
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mSwipeUpText:Landroid/widget/TextView;
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v1}, Lco/vine/android/ConversationFragment;->getMyColor()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:goto_79
iget-boolean v0, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
goto :goto_10
:cond_7c
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mSwipeUpText:Landroid/widget/TextView;
invoke-virtual {p0}, Lco/vine/android/InlineRecorderManager;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_79
:pswitch_8a
iget-boolean v2, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
if-eqz v2, :cond_9b
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
if-nez v2, :cond_9b
iput-boolean v1, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v1}, Lco/vine/android/ConversationFragment;->launchFullRecord()V
goto/16 :goto_10
:cond_9b
invoke-direct {p0}, Lco/vine/android/InlineRecorderManager;->waitForResume()V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mHandler:Landroid/os/Handler;
iget-object v3, p0, Lco/vine/android/InlineRecorderManager;->mStartInlineRecording:Ljava/lang/Runnable;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-boolean v2, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
if-eqz v2, :cond_cc
invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J
move-result-wide v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J
move-result-wide v4
sub-long/2addr v2, v4
cmp-long v2, v2, v7
if-gtz v2, :cond_cc
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v2
if-eqz v2, :cond_cc
iput-boolean v1, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2, v1}, Lco/vine/android/recorder/InlineVineRecorder;->setStarted(Z)V
iget-object v1, p0, Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-virtual {v1}, Lco/vine/android/ConversationFragment;->launchFullRecord()V
goto/16 :goto_10
:cond_cc
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecordingContainer:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_f
iget-boolean v2, p0, Lco/vine/android/InlineRecorderManager;->mDownWasInRecordButton:Z
if-eqz v2, :cond_f
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/InlineVineRecorder;->isFinished()Z
move-result v2
if-nez v2, :cond_f
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-direct {p0, v2}, Lco/vine/android/InlineRecorderManager;->isInCancelZone(F)Z
move-result v2
if-eqz v2, :cond_136
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/InlineVineRecorder;->isRecordingSegment()Z
move-result v2
if-eqz v2, :cond_130
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2, v0}, Lco/vine/android/recorder/InlineVineRecorder;->stopRecording(Z)V
:goto_f7
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
const-string v3, "inline action up."
invoke-virtual {v2, v3}, Lco/vine/android/recorder/InlineVineRecorder;->deleteCurrentDraftFolder(Ljava/lang/String;)Z
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
const-string v3, "Inline record"
invoke-direct {p0}, Lco/vine/android/InlineRecorderManager;->getNewMessageRecordingFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lco/vine/android/recorder/InlineVineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
invoke-direct {p0, v1}, Lco/vine/android/InlineRecorderManager;->toggleRecorder(Z)V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-virtual {v2}, Lco/vine/android/recorder/ProgressView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v2
new-instance v3, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v4, p0, Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-direct {v3, v4}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V
:goto_129
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_10
:cond_130
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/InlineVineRecorder;->cancelStartCallback()V
goto :goto_f7
:cond_136
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/InlineVineRecorder;->isRecordingSegment()Z
move-result v2
if-eqz v2, :cond_149
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2, v1}, Lco/vine/android/recorder/InlineVineRecorder;->stopRecording(Z)V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/InlineVineRecorder;->onFinishPressed()V
goto :goto_129
:cond_149
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2, v0}, Lco/vine/android/recorder/InlineVineRecorder;->stopRecording(Z)V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/InlineVineRecorder;->hasSessionFile()Z
move-result v2
if-eqz v2, :cond_15d
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
const-string v3, "inline action up."
invoke-virtual {v2, v3}, Lco/vine/android/recorder/InlineVineRecorder;->deleteCurrentDraftFolder(Ljava/lang/String;)Z
:cond_15d
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
const-string v3, "Inline record"
invoke-direct {p0}, Lco/vine/android/InlineRecorderManager;->getNewMessageRecordingFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lco/vine/android/recorder/InlineVineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
invoke-direct {p0, v1}, Lco/vine/android/InlineRecorderManager;->toggleRecorder(Z)V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V
iget-object v2, p0, Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-virtual {v2}, Lco/vine/android/recorder/ProgressView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v2
new-instance v3, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v4, p0, Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-direct {v3, v4}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v2
invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V
goto :goto_129
nop
:pswitch_data_18a
.packed-switch 0x0
:pswitch_11
:pswitch_8a
:pswitch_5d
.end packed-switch
.end method
.method public release()V
.registers 5
iget-boolean v0, p0, Lco/vine/android/InlineRecorderManager;->mCanInline:Z
if-eqz v0, :cond_15
invoke-direct {p0}, Lco/vine/android/InlineRecorderManager;->waitForResume()V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
const-string v1, "release"
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/recorder/InlineVineRecorder;->stopAndDiscardChanges(Ljava/lang/String;Ljava/lang/Runnable;Z)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/InlineVineRecorder;->release()Z
:cond_15
return-void
.end method