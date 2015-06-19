.class public Lco/vine/android/RecordingFragment;
.super Lco/vine/android/BaseFragment;
.source "RecordingFragment.java"
.field public static final ARG_COLOR:Ljava/lang/String; = "color"
.field public static final ARG_ENCODER_VERSION:Ljava/lang/String; = "arg_encoder_version"
.field public static final ARG_IS_MESSAGING:Ljava/lang/String; = "is_messaging"
.field public static final ARG_IS_VM_ONBOARDING:Ljava/lang/String; = "is_vm_onboarding"
.field public static final ARG_RECIPIENT_USERNAME:Ljava/lang/String; = "recipient_username"
.field public static final ARG_SCREEN_SIZE:Ljava/lang/String; = "screen_size"
.field public static final ARG_TOP_OVERLAY:Ljava/lang/String; = "arg_top_overlay"
.field private static final DISABLED_ALPHA:F = 0.35f
.field private static final ENABLED_ALPHA:F = 1.0f
.field private mColor:I
.field private mCurrentSteadyCount:I
.field private mDismissGridAnimation:Landroid/view/animation/AlphaAnimation;
.field private mDraftOverlayIcon:Landroid/view/View;
.field private mDraftUpgradeCount:I
.field private mDraftsButton:Landroid/widget/TextView;
.field private mFadeIn:Landroid/view/animation/Animation;
.field private final mFadeInListener:Landroid/view/animation/Animation$AnimationListener;
.field private mFadeOut:Landroid/view/animation/Animation;
.field private final mFadeOutListener:Landroid/view/animation/Animation$AnimationListener;
.field private mFileFileToUse:Lco/vine/android/recorder/RecordingFile;
.field private mFocusButton:Landroid/view/View;
.field private mFolder:Ljava/io/File;
.field private mGhostButton:Landroid/widget/ToggleButton;
.field private mGrid:Landroid/view/View;
.field private mGridButton:Landroid/widget/ToggleButton;
.field private mHalfColor:I
.field private final mHandler:Landroid/os/Handler;
.field private mIsDraftUpgradeAnimationRunning:Z
.field private mIsMessaging:Z
.field private mIsVmOnboarding:Z
.field private mMediaActionSound:Landroid/media/MediaActionSound;
.field private mNoDraftsOverlay:Landroid/view/View;
.field private mNumDrafts:I
.field final mOnNoDraftOverlayTouchListener:Landroid/view/View$OnTouchListener;
.field private mRecipientUsername:Ljava/lang/String;
.field private mRecorder:Lco/vine/android/recorder/VineRecorder;
.field private mRecordingOptions:Landroid/view/View;
.field private mRsm:Lco/vine/android/recorder/RecordSessionManager;
.field private mScreenSize:Landroid/graphics/Point;
.field private mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
.field private mSecretToast:Landroid/widget/Toast;
.field private mShowGridAnimation:Landroid/view/animation/AlphaAnimation;
.field private final mStartDraftsRunnable:Ljava/lang/Runnable;
.field private mStartWithEdit:Z
.field private mTier:D
.field private mTopOverlay:Landroid/graphics/Bitmap;
.field private mUpgradeSpinner:Landroid/widget/ProgressBar;
.field private mVersion:Lco/vine/android/recorder/RecordSessionVersion;
.field private mVmOnboardOverlay:Landroid/view/ViewGroup;
.field private final mVmOnboardingFadeListener:Landroid/view/animation/Animation$AnimationListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/RecordingFragment;->mCurrentSteadyCount:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mHandler:Landroid/os/Handler;
new-instance v0, Lco/vine/android/RecordingFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/RecordingFragment$1;-><init>(Lco/vine/android/RecordingFragment;)V
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mFadeOutListener:Landroid/view/animation/Animation$AnimationListener;
new-instance v0, Lco/vine/android/RecordingFragment$2;
invoke-direct {v0, p0}, Lco/vine/android/RecordingFragment$2;-><init>(Lco/vine/android/RecordingFragment;)V
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mVmOnboardingFadeListener:Landroid/view/animation/Animation$AnimationListener;
new-instance v0, Lco/vine/android/RecordingFragment$3;
invoke-direct {v0, p0}, Lco/vine/android/RecordingFragment$3;-><init>(Lco/vine/android/RecordingFragment;)V
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mFadeInListener:Landroid/view/animation/Animation$AnimationListener;
new-instance v0, Lco/vine/android/RecordingFragment$4;
invoke-direct {v0, p0}, Lco/vine/android/RecordingFragment$4;-><init>(Lco/vine/android/RecordingFragment;)V
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mOnNoDraftOverlayTouchListener:Landroid/view/View$OnTouchListener;
new-instance v0, Lco/vine/android/RecordingFragment$5;
invoke-direct {v0, p0}, Lco/vine/android/RecordingFragment$5;-><init>(Lco/vine/android/RecordingFragment;)V
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mStartDraftsRunnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/RecordingFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mDraftOverlayIcon:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/RecordingFragment;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$1000(Lco/vine/android/RecordingFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1100(Lco/vine/android/RecordingFragment;)Landroid/view/animation/Animation$AnimationListener;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mVmOnboardingFadeListener:Landroid/view/animation/Animation$AnimationListener;
return-object v0
.end method
.method static synthetic access$1200(Lco/vine/android/RecordingFragment;)Landroid/view/animation/AlphaAnimation;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mShowGridAnimation:Landroid/view/animation/AlphaAnimation;
return-object v0
.end method
.method static synthetic access$1300(Lco/vine/android/RecordingFragment;)Landroid/view/animation/AlphaAnimation;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mDismissGridAnimation:Landroid/view/animation/AlphaAnimation;
return-object v0
.end method
.method static synthetic access$1400(Lco/vine/android/RecordingFragment;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/RecordingFragment;->mIsDraftUpgradeAnimationRunning:Z
return v0
.end method
.method static synthetic access$1402(Lco/vine/android/RecordingFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/RecordingFragment;->mIsDraftUpgradeAnimationRunning:Z
return p1
.end method
.method static synthetic access$1500(Lco/vine/android/RecordingFragment;)I
.registers 2
iget v0, p0, Lco/vine/android/RecordingFragment;->mDraftUpgradeCount:I
return v0
.end method
.method static synthetic access$1608(Lco/vine/android/RecordingFragment;)I
.registers 3
iget v0, p0, Lco/vine/android/RecordingFragment;->mCurrentSteadyCount:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lco/vine/android/RecordingFragment;->mCurrentSteadyCount:I
return v0
.end method
.method static synthetic access$1700(Lco/vine/android/RecordingFragment;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/RecordingFragment;->doStopMotion()V
return-void
.end method
.method static synthetic access$1800(Lco/vine/android/RecordingFragment;Ljava/lang/String;ZLco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/RecordingFragment;->notifyActivity(Ljava/lang/String;ZLco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V
return-void
.end method
.method static synthetic access$200(Lco/vine/android/RecordingFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/RecordingFragment;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mVmOnboardOverlay:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/RecordingFragment;)Landroid/view/animation/Animation$AnimationListener;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mFadeOutListener:Landroid/view/animation/Animation$AnimationListener;
return-object v0
.end method
.method static synthetic access$500(Lco/vine/android/RecordingFragment;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mFadeOut:Landroid/view/animation/Animation;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
return-object v0
.end method
.method static synthetic access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/RecordingFragment;)I
.registers 2
iget v0, p0, Lco/vine/android/RecordingFragment;->mColor:I
return v0
.end method
.method private determineSessionFileForSwap(Z)Lco/vine/android/recorder/RecordingFile;
.registers 17
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
check-cast v7, Lco/vine/android/AbstractRecordingActivity;
:try_start_6
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
invoke-static {v7, v1}, Lco/vine/android/recorder/RecordSessionManager;->getValidSessions(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)Ljava/util/ArrayList;
move-result-object v13
const/4 v9, 0x0
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v1
const/16 v6, 0x9
if-le v1, v6, :cond_23
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
iget-object v9, v1, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;
:cond_23
const/4 v2, 0x0
iget-object v10, p0, Lco/vine/android/RecordingFragment;->mFileFileToUse:Lco/vine/android/recorder/RecordingFile;
if-eqz p1, :cond_39
if-eqz v10, :cond_39
const-string v1, "Is from preview, use existing final file."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
iget-boolean v1, v10, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z
if-nez v1, :cond_37
const/4 v1, 0x1
:goto_34
iput-boolean v1, v10, Lco/vine/android/recorder/RecordingFile;->isDirty:Z
:goto_36
return-object v10
:cond_37
const/4 v1, 0x0
goto :goto_34
:cond_39
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mFolder:Ljava/io/File;
if-eqz v1, :cond_52
const/4 v4, 0x1
:goto_3e
const/4 v5, 0x0
const/4 v3, 0x0
if-eqz v10, :cond_54
invoke-virtual {v10}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v3
iget-object v2, v10, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
:cond_48
:goto_48
new-instance v1, Lco/vine/android/recorder/RecordingFile;
if-ne v2, v9, :cond_143
const/4 v6, 0x1
:goto_4d
invoke-direct/range {v1 .. v6}, Lco/vine/android/recorder/RecordingFile;-><init>(Ljava/io/File;Lco/vine/android/recorder/RecordSession;ZZZ)V
move-object v10, v1
goto :goto_36
:cond_52
const/4 v4, 0x0
goto :goto_3e
:cond_54
if-nez v9, :cond_cc
if-nez v4, :cond_cc
const/4 v11, 0x1
:goto_59
if-nez v11, :cond_6f
if-eqz v4, :cond_65
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mFolder:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_6d
:cond_65
if-eqz v9, :cond_6f
invoke-virtual {v9}, Ljava/io/File;->exists()Z
:try_end_6a
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_6a} :catch_d7
move-result v1
if-nez v1, :cond_6f
:cond_6d
const/4 v11, 0x1
const/4 v4, 0x0
:cond_6f
if-eqz v11, :cond_117
:try_start_71
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRsm:Lco/vine/android/recorder/RecordSessionManager;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordSessionManager;->getCrashedSession()Ljava/util/HashMap;
move-result-object v12
if-eqz v12, :cond_a9
invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Lco/vine/android/recorder/RecordSession;
move-object v3, v0
new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
invoke-direct {v1, v7}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, v1}, Lco/vine/android/recorder/RecordSession;->setConfig(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)V
invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/io/File;
move-object v2, v0
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->getSegments()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_ce
const/4 v5, 0x1
:goto_a4
const-string v1, "Restore from crashed session."
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_a9
.catch Ljava/io/IOException; {:try_start_71 .. :try_end_a9} :catch_d0
:goto_a9
:cond_a9
if-nez v3, :cond_48
:try_start_ab
const-string v1, "Creating new session."
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_b0
.catch Ljava/io/IOException; {:try_start_ab .. :try_end_b0} :catch_d7
:try_start_b0
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRsm:Lco/vine/android/recorder/RecordSessionManager;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordSessionManager;->createFolderForSession()Ljava/io/File;
move-result-object v2
new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
invoke-direct {v1, v7}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V
iget-object v6, p0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
invoke-static {v1, v6}, Lco/vine/android/recorder/RecordSession;->newSession(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Lco/vine/android/recorder/RecordSessionVersion;)Lco/vine/android/recorder/RecordSession;
move-result-object v3
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
:try_end_c4
.catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c4} :catch_101
move-result v1
const/16 v6, 0x9
if-ne v1, v6, :cond_48
move-object v9, v2
goto/16 :goto_48
:cond_cc
const/4 v11, 0x0
goto :goto_59
:cond_ce
const/4 v5, 0x0
goto :goto_a4
:catch_d0
move-exception v8
:try_start_d1
const-string v1, "Failed to get a crashed session."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
:try_end_d6
.catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d6} :catch_d7
goto :goto_a9
:catch_d7
move-exception v8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Error creating folder: "
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v6, p0, Lco/vine/android/RecordingFragment;->mFolder:Ljava/io/File;
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v8}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const v1, 0x7f0e0232
const/4 v6, 0x0
invoke-static {v7, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
invoke-virtual {v7}, Lco/vine/android/AbstractRecordingActivity;->finish()V
const/4 v10, 0x0
goto/16 :goto_36
:catch_101
move-exception v8
:try_start_102
const-string v1, "Cannot create folder."
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v14, 0x0
aput-object v8, v6, v14
invoke-static {v1, v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
const/4 v10, 0x0
goto/16 :goto_36
:cond_117
if-eqz v4, :cond_140
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mFolder:Ljava/io/File;
:goto_11b
invoke-static {v2}, Lco/vine/android/recorder/RecordSessionManager;->readDataObject(Ljava/io/File;)Lco/vine/android/recorder/RecordSession;
move-result-object v3
new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
invoke-direct {v1, v7}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, v1}, Lco/vine/android/recorder/RecordSession;->setConfig(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)V
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->calculateAudioCount()I
move-result v1
invoke-virtual {v3, v1}, Lco/vine/android/recorder/RecordSession;->setAudioDataCount(I)V
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->calculateVideoCount()I
move-result v1
invoke-virtual {v3, v1}, Lco/vine/android/recorder/RecordSession;->setVideoDataCount(I)V
const-string v1, "Resume session {}."
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-static {v1, v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_13e
.catch Ljava/io/IOException; {:try_start_102 .. :try_end_13e} :catch_d7
goto/16 :goto_48
:cond_140
move-object v2, v9
const/4 v5, 0x1
goto :goto_11b
:cond_143
const/4 v6, 0x0
goto/16 :goto_4d
.end method
.method private doStopMotion()V
.registers 5
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_1e
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z
move-result v0
if-eqz v0, :cond_1e
iget v0, p0, Lco/vine/android/RecordingFragment;->mCurrentSteadyCount:I
const/16 v1, 0x28
if-ge v0, v1, :cond_1e
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/RecordingFragment$15;
invoke-direct {v1, p0}, Lco/vine/android/RecordingFragment$15;-><init>(Lco/vine/android/RecordingFragment;)V
const-wide/16 v2, 0x32
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_1e
return-void
.end method
.method private notifyActivity(Ljava/lang/String;ZLco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V
.registers 7
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v1, :cond_23
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/AbstractRecordingActivity;
if-eqz v0, :cond_23
if-eqz p2, :cond_24
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Detected invalid session."
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const v1, 0x7f0e0116
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-virtual {v0}, Lco/vine/android/AbstractRecordingActivity;->finish()V
:cond_23
:goto_23
return-void
:cond_24
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->getCameraView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I
move-result v1
iput v1, v0, Lco/vine/android/AbstractRecordingActivity;->mProgressContainerWidth:I
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->getCurrentDuration()J
move-result-wide v1
iput-wide v1, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentDuration:J
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->getThumbnailPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2, p3}, Lco/vine/android/AbstractRecordingActivity;->toPreview(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V
goto :goto_23
.end method
.method private refreshDraftNumber()V
.registers 5
:try_start_0
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
invoke-static {v2, v3}, Lco/vine/android/recorder/RecordSessionManager;->getNumberOfValidSessions(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)I
move-result v1
if-lez v1, :cond_1e
const/16 v2, 0x9
if-le v1, v2, :cond_12
add-int/lit8 v1, v1, -0x1
:cond_12
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_1b
iput v1, p0, Lco/vine/android/RecordingFragment;->mNumDrafts:I
:goto_1d
return-void
:cond_1e
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
const-string v3, ""
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:try_end_25
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26
goto :goto_1b
:catch_26
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_1d
.end method
.method public discardEditing()V
.registers 4
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->setEditMode(ZZ)V
:cond_b
return-void
.end method
.method public doOneFrame()V
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->doOneFrame()V
:cond_11
return-void
.end method
.method public doSecretVolumeDown()V
.registers 4
const/4 v2, 0x0
sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_44
:goto_e
return-void
:pswitch_f
invoke-direct {p0}, Lco/vine/android/RecordingFragment;->doStopMotion()V
goto :goto_e
:pswitch_13
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyWhiteBalance(Z)V
goto :goto_e
:pswitch_19
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyExposure(Z)V
goto :goto_e
:pswitch_1f
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->switchFlash()V
goto :goto_e
:pswitch_25
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->showTimeLapseDialog()V
goto :goto_e
:pswitch_2b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifySceneMode(Z)V
goto :goto_e
:pswitch_31
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyColorEffects(Z)V
goto :goto_e
:pswitch_37
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyAntiBanding(Z)V
goto :goto_e
:pswitch_3d
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->switchImageStabilization()V
goto :goto_e
nop
:pswitch_data_44
.packed-switch 0x1
:pswitch_f
:pswitch_13
:pswitch_19
:pswitch_1f
:pswitch_25
:pswitch_2b
:pswitch_31
:pswitch_37
:pswitch_3d
.end packed-switch
.end method
.method public doSecretVolumeUp()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_1a
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z
move-result v0
if-eqz v0, :cond_1a
sget-object v0, Lco/vine/android/RecordingFragment$16;->$SwitchMap$co$vine$android$RecordingFragment$SecretModes:[I
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_50
:goto_1a
:cond_1a
return-void
:pswitch_1b
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->doOneFrame()V
goto :goto_1a
:pswitch_1f
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyWhiteBalance(Z)V
goto :goto_1a
:pswitch_25
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyExposure(Z)V
goto :goto_1a
:pswitch_2b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->switchFlash()V
goto :goto_1a
:pswitch_31
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->showTimeLapseDialog()V
goto :goto_1a
:pswitch_37
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifySceneMode(Z)V
goto :goto_1a
:pswitch_3d
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyColorEffects(Z)V
goto :goto_1a
:pswitch_43
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->modifyAntiBanding(Z)V
goto :goto_1a
:pswitch_49
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->switchImageStabilization()V
goto :goto_1a
nop
:pswitch_data_50
.packed-switch 0x1
:pswitch_1b
:pswitch_1f
:pswitch_25
:pswitch_2b
:pswitch_31
:pswitch_37
:pswitch_3d
:pswitch_43
:pswitch_49
.end packed-switch
.end method
.method public enableSecretMode(Landroid/widget/Toast;)V
.registers 3
iput-object p1, p0, Lco/vine/android/RecordingFragment;->mSecretToast:Landroid/widget/Toast;
sget-object v0, Lco/vine/android/RecordingFragment$SecretModes;->STOP_MOTION:Lco/vine/android/RecordingFragment$SecretModes;
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
return-void
.end method
.method public endRelativeTime()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->isCurrentlyRecording()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z
move-result v0
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public getProgressView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->getProgressView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getThumbnailPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->getThumbnailPath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public isEditing()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->isEditing()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isEditingDirty()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->isEditingDirty()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isResuming()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->isResuming()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isSavedSession()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->isSavedSession()Z
move-result v0
return v0
.end method
.method public isSessionModified()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->isSessionDirty()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public modifyZoom(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/VineRecorder;->modifyZoom(Z)V
:cond_9
return-void
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 62
invoke-super/range {p0 .. p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const/4 v3, 0x1
invoke-static {v2, v3}, Lco/vine/android/util/SystemUtil;->getMemoryRatio(Landroid/content/Context;Z)D
move-result-wide v2
move-object/from16 v0, p0
iput-wide v2, v0, Lco/vine/android/RecordingFragment;->mTier:D
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v9
check-cast v9, Lco/vine/android/AbstractRecordingActivity;
:try_start_16
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v2, v3}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/RecordingFragment;->mRsm:Lco/vine/android/recorder/RecordSessionManager;
move-object/from16 v0, p0
iget-boolean v2, v0, Lco/vine/android/RecordingFragment;->mIsMessaging:Z
if-eqz v2, :cond_38
const v2, 0x7f0a01c4
invoke-virtual {v9, v2}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
:cond_38
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v56
const v16, 0x7f020182
const v17, 0x7f020184
const v2, 0x7f0a01c8
invoke-virtual {v9, v2}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v57
check-cast v57, Landroid/view/ViewGroup;
new-instance v3, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;
const/4 v2, 0x0
move-object/from16 v0, v57
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
const v4, 0x7f020296
move-object/from16 v0, p0
invoke-direct {v3, v0, v2, v4}, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;-><init>(Lco/vine/android/RecordingFragment;Landroid/widget/ImageView;I)V
move-object/from16 v0, v57
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v2, 0x7f0a01ca
invoke-virtual {v9, v2}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v57
check-cast v57, Landroid/view/ViewGroup;
new-instance v3, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;
const/4 v2, 0x0
move-object/from16 v0, v57
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
const v4, 0x7f020297
move-object/from16 v0, p0
invoke-direct {v3, v0, v2, v4}, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;-><init>(Lco/vine/android/RecordingFragment;Landroid/widget/ImageView;I)V
move-object/from16 v0, v57
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v2, 0x7f0a01c9
invoke-virtual {v9, v2}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v53
invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v55
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
move-result-object v2
iget v2, v2, Landroid/graphics/Point;->x:I
int-to-double v2, v2
const-wide v4, 0x3fe999999999999aL
mul-double/2addr v2, v4
invoke-virtual {v9}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
iget v4, v4, Landroid/util/DisplayMetrics;->density:F
const/high16 v5, 0x4000
mul-float/2addr v4, v5
const/high16 v5, 0x4210
mul-float/2addr v4, v5
float-to-double v4, v4
sub-double/2addr v2, v4
double-to-int v2, v2
move-object/from16 v0, v55
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
move-object/from16 v0, v53
move-object/from16 v1, v55
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v2, Lco/vine/android/recorder/VineRecorder;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
move-object/from16 v0, p0
iget-boolean v4, v0, Lco/vine/android/RecordingFragment;->mStartWithEdit:Z
invoke-virtual {v9}, Lco/vine/android/AbstractRecordingActivity;->getScreenSize()Landroid/graphics/Point;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/RecordingFragment;->mFileFileToUse:Lco/vine/android/recorder/RecordingFile;
if-eqz v6, :cond_229
move-object/from16 v0, p0
iget-boolean v6, v0, Lco/vine/android/RecordingFragment;->mStartWithEdit:Z
if-eqz v6, :cond_229
const/4 v6, 0x1
:goto_d9
invoke-virtual {v9}, Lco/vine/android/AbstractRecordingActivity;->hasPreviewedAlready()Z
move-result v7
const/4 v8, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v8}, Lco/vine/android/RecordingFragment;->determineSessionFileForSwap(Z)Lco/vine/android/recorder/RecordingFile;
move-result-object v8
const v10, 0x7f0a0178
invoke-virtual {v9, v10}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v10
check-cast v10, Lco/vine/android/player/SdkVideoView;
const v11, 0x7f0a01be
const v12, 0x7f0a01ac
const v13, 0x7f0a01c1
const v14, 0x7f0a01ce
const v15, 0x7f0a01b3
const v18, 0x7f0a01c2
const v19, 0x7f0a00b2
const v20, 0x7f0a009f
const v21, 0x7f0a01bf
const/16 v22, -0x1
const v23, 0x7f0a01bc
const v24, 0x7f0a00a0
const v25, 0x7f0a00a3
const v26, 0x7f0a01b4
const v27, 0x7f0a01b6
const v28, 0x7f0a01b5
const v29, 0x7f0a01b7
const v30, 0x7f0a01b8
const v31, 0x7f0a01b9
const v32, 0x7f0e00f9
const v33, 0x7f0e0054
const v34, 0x7f0e0167
const v35, 0x7f0a01af
const v36, 0x7f0a01ad
const v37, 0x7f0a011d
const v38, 0x7f0b003c
move-object/from16 v0, v56
move/from16 v1, v38
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v38
const v39, 0x7f0b0038
move-object/from16 v0, v56
move/from16 v1, v39
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v39
const v40, 0x7f0a01b2
const v41, 0x7f0a01ae
const v42, 0x7f0a00dc
const v43, 0x7f0e0256
move-object/from16 v0, p0
move/from16 v1, v43
invoke-virtual {v0, v1}, Lco/vine/android/RecordingFragment;->getString(I)Ljava/lang/String;
move-result-object v43
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v44, v0
const/16 v45, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingFragment;->mIsMessaging:Z
move/from16 v46, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mColor:I
move/from16 v47, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mHalfColor:I
move/from16 v48, v0
const v49, 0x7f0a01c7
const v50, 0x7f0a01c9
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mMediaActionSound:Landroid/media/MediaActionSound;
move-object/from16 v51, v0
const/16 v52, 0x4
move/from16 v0, v52
new-array v0, v0, [Ljava/lang/CharSequence;
move-object/from16 v52, v0
const/16 v58, 0x0
const v59, 0x7f0e0106
move-object/from16 v0, p0
move/from16 v1, v59
invoke-virtual {v0, v1}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v59
aput-object v59, v52, v58
const/16 v58, 0x1
const v59, 0x7f0e00f6
move-object/from16 v0, p0
move/from16 v1, v59
invoke-virtual {v0, v1}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v59
aput-object v59, v52, v58
const/16 v58, 0x2
const v59, 0x7f0e00f7
move-object/from16 v0, p0
move/from16 v1, v59
invoke-virtual {v0, v1}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v59
aput-object v59, v52, v58
const/16 v58, 0x3
const v59, 0x7f0e00f8
move-object/from16 v0, p0
move/from16 v1, v59
invoke-virtual {v0, v1}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;
move-result-object v59
aput-object v59, v52, v58
invoke-direct/range {v2 .. v52}, Lco/vine/android/recorder/VineRecorder;-><init>(Lco/vine/android/recorder/RecordSessionVersion;ZLandroid/graphics/Point;ZZLco/vine/android/recorder/RecordingFile;Landroid/app/Activity;Lco/vine/android/player/SdkVideoView;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIILjava/lang/String;Landroid/widget/ToggleButton;ZZIIIILandroid/media/MediaActionSound;[Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
new-instance v2, Lco/vine/android/RecordingFragment$6;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/RecordingFragment$6;-><init>(Lco/vine/android/RecordingFragment;)V
invoke-static {v2}, Lco/vine/android/recorder/RecordingAnimations;->getShowGridAinimation(Lco/vine/android/animation/SimpleAnimationListener;)Landroid/view/animation/AlphaAnimation;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/RecordingFragment;->mShowGridAnimation:Landroid/view/animation/AlphaAnimation;
new-instance v2, Lco/vine/android/RecordingFragment$7;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lco/vine/android/RecordingFragment$7;-><init>(Lco/vine/android/RecordingFragment;)V
invoke-static {v2}, Lco/vine/android/recorder/RecordingAnimations;->getGridDimissAnimation(Lco/vine/android/animation/SimpleAnimationListener;)Landroid/view/animation/AlphaAnimation;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lco/vine/android/RecordingFragment;->mDismissGridAnimation:Landroid/view/animation/AlphaAnimation;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_205
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/RecordingFragment;->mDismissGridAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_205
move-object/from16 v0, p0
iget-boolean v2, v0, Lco/vine/android/RecordingFragment;->mIsVmOnboarding:Z
if-eqz v2, :cond_221
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingFragment;->mVmOnboardOverlay:Landroid/view/ViewGroup;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingFragment;->mVmOnboardOverlay:Landroid/view/ViewGroup;
new-instance v3, Lco/vine/android/RecordingFragment$8;
move-object/from16 v0, p0
invoke-direct {v3, v0}, Lco/vine/android/RecordingFragment$8;-><init>(Lco/vine/android/RecordingFragment;)V
invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:try_start_221
:try_end_221
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_221} :catch_238
.catch Ljava/lang/VerifyError; {:try_start_16 .. :try_end_221} :catch_24f
:cond_221
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->playStartRecordingSound()V
:try_end_228
.catch Ljava/lang/NullPointerException; {:try_start_221 .. :try_end_228} :catch_22c
.catch Ljava/io/IOException; {:try_start_221 .. :try_end_228} :catch_238
.catch Ljava/lang/VerifyError; {:try_start_221 .. :try_end_228} :catch_24f
:goto_228
return-void
:cond_229
const/4 v6, 0x0
goto/16 :goto_d9
:catch_22c
move-exception v54
:try_start_22d
const-string v2, "NPE when playing sound"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
move-object/from16 v0, v54
invoke-static {v0, v2, v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_237
.catch Ljava/io/IOException; {:try_start_22d .. :try_end_237} :catch_238
.catch Ljava/lang/VerifyError; {:try_start_22d .. :try_end_237} :catch_24f
goto :goto_228
:catch_238
move-exception v54
const-string v2, "Error creating folder. "
move-object/from16 v0, v54
invoke-static {v2, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const v2, 0x7f0e0232
const/4 v3, 0x0
invoke-static {v9, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
invoke-virtual {v9}, Lco/vine/android/AbstractRecordingActivity;->finish()V
goto :goto_228
:catch_24f
move-exception v54
const-string v2, "Invalid recorder object."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
invoke-virtual {v9}, Lco/vine/android/AbstractRecordingActivity;->finish()V
goto :goto_228
.end method
.method public onCameraSwitchPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/VineRecorder;->onCameraSwitcherPressed(Landroid/view/View;)V
:cond_9
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lco/vine/android/RecordingFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0xffffff
const/4 v2, 0x0
invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "arg_encoder_version"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/RecordSessionVersion;
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
if-nez v1, :cond_23
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/recorder/RecordSessionManager;->getCurrentVersion(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
:cond_23
const-string v1, "arg_top_overlay"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/graphics/Bitmap;
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mTopOverlay:Landroid/graphics/Bitmap;
const-string v1, "screen_size"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/graphics/Point;
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mScreenSize:Landroid/graphics/Point;
const-string v1, "is_messaging"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/RecordingFragment;->mIsMessaging:Z
const-string v1, "is_vm_onboarding"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/RecordingFragment;->mIsVmOnboarding:Z
const-string v1, "recipient_username"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mRecipientUsername:Ljava/lang/String;
const-string v1, "color"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lco/vine/android/RecordingFragment;->mColor:I
iget v1, p0, Lco/vine/android/RecordingFragment;->mColor:I
sget v2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-eq v1, v2, :cond_61
iget v1, p0, Lco/vine/android/RecordingFragment;->mColor:I
if-gtz v1, :cond_6f
:cond_61
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090096
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
and-int/2addr v1, v3
iput v1, p0, Lco/vine/android/RecordingFragment;->mColor:I
:cond_6f
iget-boolean v1, p0, Lco/vine/android/RecordingFragment;->mIsMessaging:Z
if-nez v1, :cond_75
iput v3, p0, Lco/vine/android/RecordingFragment;->mColor:I
:cond_75
iget v1, p0, Lco/vine/android/RecordingFragment;->mColor:I
const/high16 v2, 0x5a00
or-int/2addr v1, v2
iput v1, p0, Lco/vine/android/RecordingFragment;->mHalfColor:I
iget v1, p0, Lco/vine/android/RecordingFragment;->mColor:I
const/high16 v2, -0x100
or-int/2addr v1, v2
iput v1, p0, Lco/vine/android/RecordingFragment;->mColor:I
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f04000d
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mFadeIn:Landroid/view/animation/Animation;
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f04000f
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mFadeOut:Landroid/view/animation/Animation;
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x10
if-lt v1, v2, :cond_b6
new-instance v1, Landroid/media/MediaActionSound;
invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mMediaActionSound:Landroid/media/MediaActionSound;
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mMediaActionSound:Landroid/media/MediaActionSound;
const/4 v2, 0x2
invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->load(I)V
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mMediaActionSound:Landroid/media/MediaActionSound;
const/4 v2, 0x3
invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->load(I)V
:cond_b6
const-string v1, " - Lco/vine/android/RecordingFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 24
const v17, 0x7f030084
const/16 v18, 0x0
move-object/from16 v0, p1
move/from16 v1, v17
move-object/from16 v2, p2
move/from16 v3, v18
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v15
const v17, 0x7f0a00a0
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v13
const v17, 0x7f0a00a3
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v11
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingFragment;->mIsMessaging:Z
move/from16 v17, v0
if-eqz v17, :cond_4a
const v17, 0x7f090025
move/from16 v0, v17
invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v7
invoke-virtual {v13, v7}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V
const v17, 0x7f0a00b2
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v10
invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundColor(I)V
:cond_4a
const v17, 0x7f0a01c2
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mFocusButton:Landroid/view/View;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mColor:I
move/from16 v17, v0
const v18, 0x7f020182
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mFocusButton:Landroid/view/View;
move-object/from16 v19, v0
move/from16 v0, v17
move/from16 v1, v18
move-object/from16 v2, v19
invoke-static {v11, v0, v1, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mFocusButton:Landroid/view/View;
move-object/from16 v17, v0
const v18, 0x3eb33333
invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V
const v17, 0x7f0a01c0
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v12
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mColor:I
move/from16 v17, v0
const v18, 0x7f020188
move/from16 v0, v17
move/from16 v1, v18
invoke-static {v11, v0, v1, v12}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
const v17, 0x3eb33333
move/from16 v0, v17
invoke-virtual {v12, v0}, Landroid/view/View;->setAlpha(F)V
new-instance v17, Lco/vine/android/RecordingFragment$9;
move-object/from16 v0, v17
move-object/from16 v1, p0
invoke-direct {v0, v1, v11, v12}, Lco/vine/android/RecordingFragment$9;-><init>(Lco/vine/android/RecordingFragment;Landroid/content/res/Resources;Landroid/view/View;)V
move-object/from16 v0, v17
invoke-virtual {v12, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v17, 0x7f0a01bb
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v16
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mColor:I
move/from16 v17, v0
const v18, 0x7f020213
move/from16 v0, v17
move/from16 v1, v18
move-object/from16 v2, v16
invoke-static {v11, v0, v1, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
const v17, 0x7f0a01bd
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mColor:I
move/from16 v17, v0
const v18, 0x7f02014e
move/from16 v0, v17
move/from16 v1, v18
invoke-static {v11, v0, v1, v5}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/RecordingFragment;->mIsMessaging:Z
move/from16 v17, v0
if-eqz v17, :cond_14d
const v17, 0x7f0a0181
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Lco/vine/android/widget/TypefacesTextView;
const/16 v17, 0x3
move/from16 v0, v17
invoke-virtual {v8, v0}, Lco/vine/android/widget/TypefacesTextView;->setWeight(I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v17
invoke-static/range {v17 .. v17}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v17
move-object/from16 v0, v17
iget-object v0, v0, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v8, v0}, Lco/vine/android/widget/TypefacesTextView;->setTypeface(Landroid/graphics/Typeface;)V
const/16 v17, 0x0
move/from16 v0, v17
invoke-virtual {v8, v0}, Lco/vine/android/widget/TypefacesTextView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mRecipientUsername:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v17
if-nez v17, :cond_137
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mRecipientUsername:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v17
if-nez v17, :cond_137
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mRecipientUsername:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v8, v0}, Lco/vine/android/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V
:cond_137
const v17, 0x7f0a00b2
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Lco/vine/android/recorder/ProgressView;
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mHalfColor:I
move/from16 v17, v0
move/from16 v0, v17
invoke-virtual {v9, v0}, Lco/vine/android/recorder/ProgressView;->setColor(I)V
:cond_14d
const v17, 0x7f0a01c1
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
check-cast v17, Landroid/widget/ToggleButton;
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
new-instance v18, Lco/vine/android/RecordingFragment$10;
move-object/from16 v0, v18
move-object/from16 v1, p0
invoke-direct {v0, v1, v11}, Lco/vine/android/RecordingFragment$10;-><init>(Lco/vine/android/RecordingFragment;Landroid/content/res/Resources;)V
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mColor:I
move/from16 v17, v0
const v18, 0x7f02018e
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
move-object/from16 v19, v0
move/from16 v0, v17
move/from16 v1, v18
move-object/from16 v2, v19
invoke-static {v11, v0, v1, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const v18, 0x3eb33333
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setAlpha(F)V
const v17, 0x7f0a0129
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
const v17, 0x7f0a00dc
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v14
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mTopOverlay:Landroid/graphics/Bitmap;
move-object/from16 v17, v0
if-eqz v17, :cond_2d1
const/16 v17, 0x0
move/from16 v0, v17
invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mTopOverlay:Landroid/graphics/Bitmap;
move-object/from16 v18, v0
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-static {v0, v14, v1}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/content/res/Resources;Landroid/view/View;Landroid/graphics/Bitmap;)V
:goto_1ed
const v17, 0x7f0a01c3
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
check-cast v17, Landroid/widget/ToggleButton;
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/RecordingFragment;->mColor:I
move/from16 v17, v0
const v18, 0x7f02018b
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v19, v0
move/from16 v0, v17
move/from16 v1, v18
move-object/from16 v2, v19
invoke-static {v11, v0, v1, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
const v18, 0x3eb33333
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setAlpha(F)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
move-object/from16 v17, v0
new-instance v18, Lco/vine/android/RecordingFragment$11;
move-object/from16 v0, v18
move-object/from16 v1, p0
invoke-direct {v0, v1, v11}, Lco/vine/android/RecordingFragment$11;-><init>(Lco/vine/android/RecordingFragment;Landroid/content/res/Resources;)V
invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v17, 0x7f0a01c6
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
check-cast v17, Landroid/widget/ProgressBar;
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mUpgradeSpinner:Landroid/widget/ProgressBar;
const v17, 0x7f0a01c5
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
check-cast v17, Landroid/widget/TextView;
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
move-object/from16 v17, v0
const v18, 0x3eb33333
invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setAlpha(F)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
move-object/from16 v17, v0
new-instance v18, Lco/vine/android/RecordingFragment$12;
move-object/from16 v0, v18
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/RecordingFragment$12;-><init>(Lco/vine/android/RecordingFragment;)V
invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
invoke-direct/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->refreshDraftNumber()V
const v17, 0x7f0a01be
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mRecordingOptions:Landroid/view/View;
const v17, 0x7f0a01cf
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
const v17, 0x7f0a01cc
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v17
check-cast v17, Landroid/view/ViewGroup;
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/RecordingFragment;->mVmOnboardOverlay:Landroid/view/ViewGroup;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
check-cast v4, Lco/vine/android/AbstractRecordingActivity;
invoke-virtual {v4, v13, v6}, Lco/vine/android/AbstractRecordingActivity;->initMasks(Landroid/view/View;Landroid/view/View;)V
return-object v15
:cond_2d1
const/16 v17, 0x8
move/from16 v0, v17
invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_1ed
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/RecordingFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseFragment;->onDestroy()V
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->release()V
const-string v1, " - Lco/vine/android/RecordingFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDraftUpgradeNumberChanged(I)V
.registers 6
const/16 v3, 0x8
const/4 v2, 0x0
const-string v0, "Draft upgrade number changed with count {}"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iput p1, p0, Lco/vine/android/RecordingFragment;->mDraftUpgradeCount:I
iget-boolean v0, p0, Lco/vine/android/RecordingFragment;->mIsDraftUpgradeAnimationRunning:Z
if-eqz v0, :cond_1e
if-lez p1, :cond_1f
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mUpgradeSpinner:Landroid/widget/ProgressBar;
invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
:goto_1e
:cond_1e
return-void
:cond_1f
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mUpgradeSpinner:Landroid/widget/ProgressBar;
invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_1e
.end method
.method public onFinishPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onFinishPressed()V
:cond_9
return-void
.end method
.method public onFocusSwitchPressed(Landroid/view/View;)V
.registers 7
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v1, :cond_37
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->canChangeFocus()Z
move-result v1
if-eqz v1, :cond_37
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->isAutoFocusing()Z
move-result v1
if-eqz v1, :cond_38
const/high16 v0, 0x3f80
:goto_16
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v1
iget v2, p0, Lco/vine/android/RecordingFragment;->mColor:I
const v3, 0x7f020182
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mFocusButton:Landroid/view/View;
invoke-static {v1, v2, v3, v4}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mFocusButton:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->isAutoFocusing()Z
move-result v1
if-nez v1, :cond_3c
const/4 v1, 0x1
:goto_34
invoke-virtual {v2, v1}, Lco/vine/android/recorder/VineRecorder;->setAutoFocusing(Z)V
:cond_37
return-void
:cond_38
const v0, 0x3eb33333
goto :goto_16
:cond_3c
const/4 v1, 0x0
goto :goto_34
.end method
.method public onGhostSwitchPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onGhostSwitchPressed()Z
:cond_9
return-void
.end method
.method public onGridSwitchPressed()V
.registers 5
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
if-eqz v1, :cond_3a
invoke-static {}, Lco/vine/android/RecordingFragment$SecretModes;->values()[Lco/vine/android/RecordingFragment$SecretModes;
move-result-object v0
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
invoke-virtual {v1}, Lco/vine/android/RecordingFragment$SecretModes;->ordinal()I
move-result v1
add-int/lit8 v1, v1, 0x1
array-length v2, v0
rem-int/2addr v1, v2
aget-object v1, v0, v1
iput-object v1, p0, Lco/vine/android/RecordingFragment;->mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mSecretToast:Landroid/widget/Toast;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Secret Mode: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lco/vine/android/RecordingFragment;->mSecretMode:Lco/vine/android/RecordingFragment$SecretModes;
invoke-virtual {v3}, Lco/vine/android/RecordingFragment$SecretModes;->name()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mSecretToast:Landroid/widget/Toast;
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:goto_39
return-void
:cond_3a
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v2, 0x8
if-ne v1, v2, :cond_4c
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mShowGridAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_39
:cond_4c
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mDismissGridAnimation:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_39
.end method
.method public onHideDrafts()V
.registers 3
invoke-direct {p0}, Lco/vine/android/RecordingFragment;->refreshDraftNumber()V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecordingOptions:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecordingOptions:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecordingOptions:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lco/vine/android/RecordingFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onUiPaused()V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->playStopRecordingSound()V
:cond_11
const-string v1, " - Lco/vine/android/RecordingFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 8
const-string v1, " + Lco/vine/android/RecordingFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0}, Lco/vine/android/BaseFragment;->onResume()V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v4, :cond_67
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/AbstractRecordingActivity;
invoke-virtual {v0}, Lco/vine/android/AbstractRecordingActivity;->isDraftsShowing()Z
move-result v2
if-nez v2, :cond_40
invoke-direct {p0}, Lco/vine/android/RecordingFragment;->refreshDraftNumber()V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v4}, Lco/vine/android/recorder/VineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v1
if-eqz v1, :cond_40
iget-object v4, v1, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_40
new-instance v4, Lco/vine/android/VineLoggingException;
const-string v5, "Invalid folder"
invoke-direct {v4, v5}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V
invoke-static {v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const/4 v4, 0x0
invoke-virtual {p0, v4}, Lco/vine/android/RecordingFragment;->setFileFileToUse(Lco/vine/android/recorder/RecordingFile;)V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const-string v5, "Resume invalid."
invoke-direct {p0, v3}, Lco/vine/android/RecordingFragment;->determineSessionFileForSwap(Z)Lco/vine/android/recorder/RecordingFile;
move-result-object v6
invoke-virtual {v4, v5, v6}, Lco/vine/android/recorder/VineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
:cond_40
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
new-instance v5, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;
new-instance v6, Ljava/lang/ref/WeakReference;
invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-direct {v5, v6}, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;-><init>(Ljava/lang/ref/WeakReference;)V
invoke-virtual {v4, v0, v5, v2}, Lco/vine/android/recorder/VineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z
move-result v4
if-eqz v4, :cond_67
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
iget-object v5, p0, Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v5
const/16 v6, 0x8
if-eq v5, v6, :cond_64
const/4 v3, 0x1
:cond_64
invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V
:cond_67
const-string v1, " - Lco/vine/android/RecordingFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSessionSwitchPressed(Landroid/view/View;)V
.registers 9
const/4 v6, 0x2
const/4 v5, 0x0
iget v4, p0, Lco/vine/android/RecordingFragment;->mDraftUpgradeCount:I
if-lez v4, :cond_16
iget v4, p0, Lco/vine/android/RecordingFragment;->mDraftUpgradeCount:I
invoke-static {v4}, Lco/vine/android/util/FlurryUtils;->trackSessionSwitchPressedOnDraftUpgrade(I)V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mHandler:Landroid/os/Handler;
new-instance v5, Lco/vine/android/RecordingFragment$13;
invoke-direct {v5, p0}, Lco/vine/android/RecordingFragment$13;-><init>(Lco/vine/android/RecordingFragment;)V
invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_15
return-void
:cond_16
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackSessionSwitchPressed(Landroid/view/View;)V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v4, :cond_3f
iget v4, p0, Lco/vine/android/RecordingFragment;->mNumDrafts:I
if-gtz v4, :cond_29
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v4}, Lco/vine/android/recorder/VineRecorder;->isSessionDirty()Z
move-result v4
if-eqz v4, :cond_3f
:cond_29
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v4}, Lco/vine/android/recorder/VineRecorder;->isSessionDirty()Z
move-result v4
if-eqz v4, :cond_3b
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
check-cast v4, Lco/vine/android/AbstractRecordingActivity;
invoke-virtual {v4, v6, p0}, Lco/vine/android/AbstractRecordingActivity;->showUnSavedChangesDialog(ILco/vine/android/RecordingFragment;)V
goto :goto_15
:cond_3b
invoke-virtual {p0, v5}, Lco/vine/android/RecordingFragment;->startDrafts(Z)V
goto :goto_15
:cond_3f
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mDraftOverlayIcon:Landroid/view/View;
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
new-array v1, v6, [I
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-virtual {v4, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V
aget v2, v1, v5
const/4 v4, 0x1
aget v3, v1, v4
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mDraftOverlayIcon:Landroid/view/View;
int-to-float v5, v2
invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0b0031
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v0
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mDraftOverlayIcon:Landroid/view/View;
sub-int v5, v3, v0
int-to-float v5, v5
invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
iget-object v5, p0, Lco/vine/android/RecordingFragment;->mOnNoDraftOverlayTouchListener:Landroid/view/View$OnTouchListener;
invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mFadeIn:Landroid/view/animation/Animation;
iget-object v5, p0, Lco/vine/android/RecordingFragment;->mFadeInListener:Landroid/view/animation/Animation$AnimationListener;
invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v4, p0, Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
iget-object v5, p0, Lco/vine/android/RecordingFragment;->mFadeIn:Landroid/view/animation/Animation;
invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_15
.end method
.method public onShowDrafts()V
.registers 3
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecordingOptions:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 16
invoke-super {p0, p1, p2}, Lco/vine/android/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v4
iget-object v9, p0, Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
const v10, 0x7f0a01d0
invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
const v9, 0x7f0b006a
invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v9
int-to-float v3, v9
const v9, 0x7f0b0034
invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v9
int-to-float v6, v9
iget-object v9, p0, Lco/vine/android/RecordingFragment;->mScreenSize:Landroid/graphics/Point;
iget v9, v9, Landroid/graphics/Point;->x:I
div-int/lit8 v9, v9, 0x2
int-to-float v9, v9
add-float/2addr v9, v3
sub-float/2addr v9, v6
invoke-virtual {v5, v9}, Landroid/view/View;->setY(F)V
iget-boolean v9, p0, Lco/vine/android/RecordingFragment;->mIsMessaging:Z
if-eqz v9, :cond_55
invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v9
const v10, 0x7f0a01be
invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;
iget-object v9, p0, Lco/vine/android/RecordingFragment;->mScreenSize:Landroid/graphics/Point;
iget v9, v9, Landroid/graphics/Point;->x:I
int-to-double v9, v9
const-wide v11, 0x3fb999999999999aL
mul-double/2addr v9, v11
double-to-int v0, v9
const/4 v9, 0x0
const/4 v10, 0x0
invoke-virtual {v2, v0, v9, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_55
iget-object v9, p0, Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
const v10, 0x7f0a01d1
invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
const v9, 0x7f0b0035
invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v9
int-to-float v8, v9
invoke-virtual {v5}, Landroid/view/View;->getY()F
move-result v9
add-float/2addr v9, v8
invoke-virtual {v7, v9}, Landroid/view/View;->setY(F)V
const v9, 0x7f0a01d2
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
iput-object v9, p0, Lco/vine/android/RecordingFragment;->mDraftOverlayIcon:Landroid/view/View;
return-void
.end method
.method public playStopSound()V
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->playStopRecordingSound()V
:cond_9
return-void
.end method
.method public release()V
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_21
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->release()Z
move-result v0
if-eqz v0, :cond_1f
const-string v0, "capture"
invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackAbandonedStage(Ljava/lang/String;)V
iget-wide v0, p0, Lco/vine/android/RecordingFragment;->mTier:D
const-wide/high16 v2, 0x4050
div-double/2addr v0, v2
double-to-int v0, v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackAbandonedTier(Ljava/lang/String;)V
:cond_1f
iput-object v4, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
:cond_21
iput-object v4, p0, Lco/vine/android/RecordingFragment;->mFileFileToUse:Lco/vine/android/recorder/RecordingFile;
return-void
.end method
.method public requestZoomProgressUpdate()V
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->requestZoomProgressUpdate()V
:cond_9
return-void
.end method
.method public resumeFromDraft()V
.registers 6
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v2, :cond_2c
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->isResuming()Z
move-result v2
if-nez v2, :cond_2c
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v1
iget-object v2, v1, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_2d
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const-string v3, "BackPress, Resume from draft using resumeFile."
invoke-virtual {v2, v3, v1}, Lco/vine/android/recorder/VineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move-result-object v0
:goto_22
if-eqz v0, :cond_2c
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const-string v3, "Resume draft"
const/4 v4, 0x1
invoke-virtual {v2, v3, v4}, Lco/vine/android/recorder/VineRecorder;->onResume(Ljava/lang/String;Z)V
:cond_2c
return-void
:cond_2d
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const-string v3, "BackPress, Resume from draft using determined."
const/4 v4, 0x0
invoke-direct {p0, v4}, Lco/vine/android/RecordingFragment;->determineSessionFileForSwap(Z)Lco/vine/android/recorder/RecordingFile;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lco/vine/android/recorder/VineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move-result-object v0
goto :goto_22
.end method
.method public reverseFrames()V
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->reverseFrames()V
:cond_9
return-void
.end method
.method public saveSession()V
.registers 4
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_10
const-string v0, "saveNoQuit"
invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackSaveSession(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->saveSession(Ljava/lang/Runnable;Z)V
:cond_10
return-void
.end method
.method public saveSessionAndQuit()V
.registers 4
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_14
const-string v0, "quit"
invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackSaveSession(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
new-instance v1, Lco/vine/android/RecordingFragment$14;
invoke-direct {v1, p0}, Lco/vine/android/RecordingFragment$14;-><init>(Lco/vine/android/RecordingFragment;)V
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->saveSession(Ljava/lang/Runnable;Z)V
:cond_14
return-void
.end method
.method public setDiscardChangesOnStop()V
.registers 3
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_a
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->setDiscardChanges(Z)V
:cond_a
return-void
.end method
.method public setFileFileToUse(Lco/vine/android/recorder/RecordingFile;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment;->mFileFileToUse:Lco/vine/android/recorder/RecordingFile;
return-void
.end method
.method public setStartWithEdit(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/RecordingFragment;->mStartWithEdit:Z
return-void
.end method
.method public startDrafts(Z)V
.registers 6
const/4 v3, 0x0
const-string v0, "Start Drafts: {}."
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz p1, :cond_19
const-string v0, "drafts"
invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackSaveSession(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
iget-object v1, p0, Lco/vine/android/RecordingFragment;->mStartDraftsRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1, v3}, Lco/vine/android/recorder/VineRecorder;->saveSession(Ljava/lang/Runnable;Z)V
:goto_18
return-void
:cond_19
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/RecordingFragment;->mFileFileToUse:Lco/vine/android/recorder/RecordingFile;
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const-string v1, "StartDrafts"
iget-object v2, p0, Lco/vine/android/RecordingFragment;->mStartDraftsRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/recorder/VineRecorder;->stopAndDiscardChanges(Ljava/lang/String;Ljava/lang/Runnable;Z)V
goto :goto_18
.end method
.method public startRelativeTime()Z
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->isCurrentlyRecording()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->startRelativeTime()Z
move-result v0
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public stopZoom()V
.registers 2
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->stopZoom()V
:cond_9
return-void
.end method
.method public swapFolder(Ljava/lang/String;Ljava/io/File;)V
.registers 6
iput-object p2, p0, Lco/vine/android/RecordingFragment;->mFolder:Ljava/io/File;
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
if-eqz v0, :cond_2f
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/RecordingFragment;->setFileFileToUse(Lco/vine/android/recorder/RecordingFile;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " swap"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-direct {p0, v2}, Lco/vine/android/RecordingFragment;->determineSessionFileForSwap(Z)Lco/vine/android/recorder/RecordingFile;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
const-string v1, "Swap folder"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->onResume(Ljava/lang/String;Z)V
:cond_2f
return-void
.end method