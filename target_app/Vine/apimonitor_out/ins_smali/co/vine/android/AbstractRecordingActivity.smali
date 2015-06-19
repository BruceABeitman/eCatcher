.class public abstract Lco/vine/android/AbstractRecordingActivity;
.super Lco/vine/android/BaseActionBarActivity;
.source "AbstractRecordingActivity.java"
.implements Lco/vine/android/widgets/PromptDialogFragment$OnDialogDoneListener;
.implements Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
.implements Lco/vine/android/animation/SmoothAnimator$AnimationListener;
.implements Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
.implements Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;
.field private static final ANIMATION_CAMERA_ICON:I = 0x4
.field private static final ANIMATION_DELETE:I = 0x3
.field private static final ANIMATION_PREVIEW:I = 0x1
.field private static final ANIMATION_PROGRESS:I = 0x2
.field private static final ANIMATION_PROGRESS_TO_DRAFTS:I = 0x6
.field private static final ANIMATION_TO_DRAFTS:I = 0x5
.field private static final ANIMATION_TO_DRAFTS_CAMERA:I = 0x7
.field private static final ANIM_DURATION:I = 0x12c
.field public static final DIALOG_DELETE:I = 0x1
.field public static final DIALOG_DIRTY:I = 0x2
.field public static final DIALOG_TOO_MANY_DRAFTS:I = 0x3
.field public static final DIALOG_UNSAVED_CHANGES:I = 0x0
.field protected static final EXTRA_AM_FOLLOWING:Ljava/lang/String; = "am_following"
.field protected static final EXTRA_CONVERSATION_ROW_ID:Ljava/lang/String; = "conv_row_id"
.field protected static final EXTRA_DIRECT_USER_ID:Ljava/lang/String; = "direct_id"
.field protected static final EXTRA_IS_VM_ONBOARDING:Ljava/lang/String; = "is_vm_onboarding"
.field protected static final EXTRA_MESSAGING:Ljava/lang/String; = "messaging"
.field protected static final EXTRA_RECIPIENT_USERNAME:Ljava/lang/String; = "recipient_username"
.field protected static final EXTRA_START_CONVERSATION:Ljava/lang/String; = "start_conversation"
.field private static final EXTRA_TOP_OVERLAY:Ljava/lang/String; = "arg_top_overlay"
.field private static final PAGE_INVALID:I = -0x1
.field public static final PREF_CAPTURE_LAUNCH_COUNT:Ljava/lang/String; = "recorder_launch_count"
.field public static final RESULT_RECORDING_CANCELLED:I = 0x64
.field private static final SECRETS:[I = null
.field public static final START_SESSION_ID_CAMERA:Ljava/lang/String; = "camera_preview"
.field private static final STATE_FIRST_DRAFT_LAUNCH:Ljava/lang/String; = "first_launch"
.field private static final STATE_FIRST_PAGE_SET:Ljava/lang/String; = "state_fp"
.field private static final STEP_NONE:I = -0x1
.field private static final STEP_PREVIEW:I = 0x1
.field private static final STEP_RECORD:I
.field private static final sQueues:Ljava/util/ArrayList;
.field private isSecretModeOn:Z
.field private mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
.field private mAddToUploadThread:Ljava/lang/Thread;
.field private mAmFollowingRecipient:Z
.field private mAnimatingIntoDrafts:Z
.field private mAnimationPreviewOverlay:Landroid/view/View;
.field private mCameraFragment:Ljava/lang/ref/WeakReference;
.field private mCameraIconFadeIn:Landroid/view/animation/Animation;
.field private mCameraIconOverlay:Landroid/view/View;
.field private mCameraIconOverlayImage:Landroid/view/View;
.field protected mColor:I
.field protected mConversationRowId:J
.field public mCurrentDuration:J
.field protected mCurrentFragment:Landroid/support/v4/app/Fragment;
.field  mCurrentPage:I
.field private mCurrentSecret:I
.field private mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
.field private mDeleteWasDrag:Z
.field protected mDirectUserId:J
.field private mDots:Lco/vine/android/widget/DotIndicators;
.field private final mDraftFragments:Landroid/util/SparseArray;
.field private mDraftFullMask:Landroid/view/View;
.field private mDraftMaskLeft:Landroid/view/View;
.field private mDraftMaskParent:Landroid/view/View;
.field private mDraftMaskRight:Landroid/view/View;
.field private mDraftMaskTop:Landroid/view/View;
.field private mDraftRoot:Landroid/view/View;
.field private mDraftTrashBackground:Landroid/view/View;
.field private mDraftTrashButton:Landroid/view/View;
.field private mDraftTrashContainer:Landroid/view/View;
.field private final mDraftUpgradeCustomer:Lco/vine/android/service/DraftUpgradeCustomer;
.field private mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
.field private final mEmptyClicker:Landroid/view/View$OnClickListener;
.field private mFirstDraftLaunch:Z
.field private mFirstPageSet:Z
.field private final mHandler:Landroid/os/Handler;
.field private mHasPreviewedAlready:Z
.field private mHasStartedRelativeTimeFromHardwareButton:Z
.field private final mHelper:Lco/vine/android/recorder/RecordingActivityHelper;
.field private final mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
.field private mIsGoingToRecord:Z
.field protected mIsMessaging:Z
.field protected mIsVmOnboarding:Z
.field private mLargeThumbnailOverlay:Landroid/widget/ImageView;
.field final mOnMaskTouchListesner:Landroid/view/View$OnTouchListener;
.field private mOnPageIdleRunnable:Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;
.field private final mOnResumeDraftRunnable:Ljava/lang/Runnable;
.field private mPageScrollState:I
.field  mPreviewDimen:I
.field private mPreviewOverlay:Landroid/view/View;
.field  mPreviewRatio:F
.field public mProgressContainerWidth:I
.field private mProgressOverlay:Landroid/view/View;
.field private mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
.field private mRecipientUsername:Ljava/lang/String;
.field private mRegularUiMode:I
.field private mScreenSize:Landroid/graphics/Point;
.field private mSessions:Ljava/util/ArrayList;
.field private mSideMaskWidth:I
.field private mSlowFadeIn:Landroid/view/animation/Animation;
.field private mStartConversation:Z
.field private mStartSessionId:Ljava/lang/String;
.field private mStep:I
.field private mTopMaskHeight:I
.field private mTopOverlay:Landroid/graphics/Bitmap;
.field protected mUploadFile:Ljava/lang/String;
.field private mVersion:Lco/vine/android/recorder/RecordSessionVersion;
.field private mVideoViews:Ljava/util/ArrayList;
.field private mViewPager:Landroid/support/v4/view/DraftViewPager;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lco/vine/android/AbstractRecordingActivity;->sQueues:Ljava/util/ArrayList;
const/4 v0, 0x7
new-array v0, v0, [I
fill-array-data v0, :array_10
sput-object v0, Lco/vine/android/AbstractRecordingActivity;->SECRETS:[I
return-void
:array_10
.array-data 0x4
0x19t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 8
const/4 v6, 0x0
invoke-direct {p0}, Lco/vine/android/BaseActionBarActivity;-><init>()V
new-instance v3, Lco/vine/android/util/IntentionalObjectCounter;
const-string v4, "recorder"
invoke-direct {v3, v4, p0}, Lco/vine/android/util/IntentionalObjectCounter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
new-instance v3, Landroid/util/SparseArray;
invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mVideoViews:Ljava/util/ArrayList;
const/4 v3, -0x1
iput v3, p0, Lco/vine/android/AbstractRecordingActivity;->mStep:I
iput-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->mDeleteWasDrag:Z
new-instance v3, Lco/vine/android/AbstractRecordingActivity$1;
invoke-direct {v3, p0}, Lco/vine/android/AbstractRecordingActivity$1;-><init>(Lco/vine/android/AbstractRecordingActivity;)V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mEmptyClicker:Landroid/view/View$OnClickListener;
iput-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
new-instance v3, Lco/vine/android/AbstractRecordingActivity$2;
invoke-direct {v3, p0}, Lco/vine/android/AbstractRecordingActivity$2;-><init>(Lco/vine/android/AbstractRecordingActivity;)V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mOnMaskTouchListesner:Landroid/view/View$OnTouchListener;
new-instance v3, Lco/vine/android/recorder/RecordingActivityHelper;
invoke-direct {v3}, Lco/vine/android/recorder/RecordingActivityHelper;-><init>()V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;
iput-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->mAmFollowingRecipient:Z
new-instance v3, Lco/vine/android/service/DraftUpgradeCustomer;
new-instance v4, Lco/vine/android/AbstractRecordingActivity$8;
invoke-direct {v4, p0}, Lco/vine/android/AbstractRecordingActivity$8;-><init>(Lco/vine/android/AbstractRecordingActivity;)V
invoke-direct {v3, p0, v4}, Lco/vine/android/service/DraftUpgradeCustomer;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftUpgradeCustomer:Lco/vine/android/service/DraftUpgradeCustomer;
iput v6, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSecret:I
iput-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->isSecretModeOn:Z
new-instance v3, Lco/vine/android/AbstractRecordingActivity$12;
invoke-direct {v3, p0}, Lco/vine/android/AbstractRecordingActivity$12;-><init>(Lco/vine/android/AbstractRecordingActivity;)V
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mOnResumeDraftRunnable:Ljava/lang/Runnable;
sget-object v3, Lco/vine/android/AbstractRecordingActivity;->sQueues:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
const/16 v4, 0x14
if-le v3, v4, :cond_66
sget-object v3, Lco/vine/android/AbstractRecordingActivity;->sQueues:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
:cond_66
sget-object v3, Lco/vine/android/AbstractRecordingActivity;->sQueues:Ljava/util/ArrayList;
new-instance v4, Ljava/lang/ref/WeakReference;
invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v1, 0x0
sget-object v3, Lco/vine/android/AbstractRecordingActivity;->sQueues:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_77
:cond_77
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_8c
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_77
add-int/lit8 v1, v1, 0x1
goto :goto_77
:cond_8c
const-string v3, "[mem] Current RecordingActivity queue count: {}."
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/AbstractRecordingActivity;)Landroid/util/SparseArray;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
return-object v0
.end method
.method static synthetic access$1000(Lco/vine/android/AbstractRecordingActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$102(Lco/vine/android/AbstractRecordingActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/AbstractRecordingActivity;->mDeleteWasDrag:Z
return p1
.end method
.method static synthetic access$1100(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1200(Lco/vine/android/AbstractRecordingActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mLargeThumbnailOverlay:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$1300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1400(Lco/vine/android/AbstractRecordingActivity;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mOnResumeDraftRunnable:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic access$1500(Lco/vine/android/AbstractRecordingActivity;)Z
.registers 2
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->isResuming()Z
move-result v0
return v0
.end method
.method static synthetic access$1600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlayImage:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1700(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mSlowFadeIn:Landroid/view/animation/Animation;
return-object v0
.end method
.method static synthetic access$1800(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconFadeIn:Landroid/view/animation/Animation;
return-object v0
.end method
.method static synthetic access$1900(Lco/vine/android/AbstractRecordingActivity;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
return v0
.end method
.method static synthetic access$1902(Lco/vine/android/AbstractRecordingActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
return p1
.end method
.method static synthetic access$200(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2000(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFullMask:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2100(Lco/vine/android/AbstractRecordingActivity;)Landroid/support/v4/view/DraftViewPager;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
return-object v0
.end method
.method static synthetic access$2202(Lco/vine/android/AbstractRecordingActivity;I)I
.registers 2
iput p1, p0, Lco/vine/android/AbstractRecordingActivity;->mPageScrollState:I
return p1
.end method
.method static synthetic access$2300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskTop:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskLeft:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2500(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskRight:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2602(Lco/vine/android/AbstractRecordingActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity;->mAddToUploadThread:Ljava/lang/Thread;
return-object p1
.end method
.method static synthetic access$2700(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
return-object v0
.end method
.method static synthetic access$2802(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;)Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
return-object p1
.end method
.method static synthetic access$2900(Lco/vine/android/AbstractRecordingActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3002(Lco/vine/android/AbstractRecordingActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity;->mCameraFragment:Ljava/lang/ref/WeakReference;
return-object p1
.end method
.method static synthetic access$3100(Lco/vine/android/AbstractRecordingActivity;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
return v0
.end method
.method static synthetic access$3202(Lco/vine/android/AbstractRecordingActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/AbstractRecordingActivity;->mIsGoingToRecord:Z
return p1
.end method
.method static synthetic access$3300(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/DraftFragment;)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/AbstractRecordingActivity;->buildAndShowFloatingView(Lco/vine/android/DraftFragment;)V
return-void
.end method
.method static synthetic access$3400(Lco/vine/android/AbstractRecordingActivity;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->releasePlayers()V
return-void
.end method
.method static synthetic access$3500(Lco/vine/android/AbstractRecordingActivity;)Landroid/graphics/Point;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
return-object v0
.end method
.method static synthetic access$3600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3700(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3800(Lco/vine/android/AbstractRecordingActivity;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
return v0
.end method
.method static synthetic access$3802(Lco/vine/android/AbstractRecordingActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
return p1
.end method
.method static synthetic access$3900(Lco/vine/android/AbstractRecordingActivity;)Z
.registers 2
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->setCurrentSession()Z
move-result v0
return v0
.end method
.method static synthetic access$400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$500(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskParent:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/AbstractRecordingActivity;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->hideDraftsInternal()V
return-void
.end method
.method static synthetic access$800(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/RecordingFragment;
.registers 2
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->getActiveRecordingFragment()Lco/vine/android/RecordingFragment;
move-result-object v0
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/AbstractRecordingActivity;)Lco/vine/android/service/DraftUpgradeCustomer;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftUpgradeCustomer:Lco/vine/android/service/DraftUpgradeCustomer;
return-object v0
.end method
.method private buildAndShowFloatingView(Lco/vine/android/DraftFragment;)V
.registers 15
const/16 v12, 0x8
const/4 v6, 0x2
const/4 v7, 0x1
const/4 v11, 0x0
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->releasePlayers()V
invoke-virtual {p1}, Lco/vine/android/DraftFragment;->showImage()V
new-array v8, v6, [I
invoke-virtual {p1}, Lco/vine/android/DraftFragment;->getThumbnailView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0b0031
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v10
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getWidth()I
move-result v3
aget v4, v8, v11
aget v0, v8, v7
sub-int v5, v0, v10
move-object v0, p0
invoke-static/range {v0 .. v5}, Lco/vine/android/util/FloatingViewUtils;->buildFloatingViewFor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;III)Landroid/graphics/Bitmap;
new-array v9, v6, [I
invoke-virtual {p1}, Lco/vine/android/DraftFragment;->getProgressView()Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v9}, Landroid/view/View;->getLocationOnScreen([I)V
iget-object v4, p0, Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getWidth()I
move-result v5
aget v6, v9, v11
aget v0, v9, v7
sub-int v7, v0, v10
move-object v2, p0
invoke-static/range {v2 .. v7}, Lco/vine/android/util/FloatingViewUtils;->buildFloatingViewFor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;III)Landroid/graphics/Bitmap;
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v0, v12}, Landroid/support/v4/view/DraftViewPager;->setVisibility(I)V
return-void
.end method
.method private getActiveRecordingFragment()Lco/vine/android/RecordingFragment;
.registers 2
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->isDraftsShowing()Z
move-result v0
if-nez v0, :cond_15
iget v0, p0, Lco/vine/android/AbstractRecordingActivity;->mStep:I
if-nez v0, :cond_15
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_15
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method private static getIntent(Landroid/content/Context;ILjava/lang/String;ZJJZLjava/lang/String;ZZ)Landroid/content/Intent;
.registers 14
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/RecordingActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
if-lez p1, :cond_f
invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
:cond_f
const-string v1, "messaging"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "conv_row_id"
invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "direct_id"
invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "start_conversation"
invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "recipient_username"
invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "am_following"
invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "is_vm_onboarding"
invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
return-object v0
.end method
.method public static getIntentForConversation(Landroid/content/Context;ILjava/lang/String;JZLjava/lang/String;Z)Landroid/content/Intent;
.registers 20
const/4 v3, 0x1
const-wide/16 v6, -0x1
const/4 v11, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move-wide v4, p3
move/from16 v8, p5
move-object/from16 v9, p6
move/from16 v10, p7
invoke-static/range {v0 .. v11}, Lco/vine/android/AbstractRecordingActivity;->getIntent(Landroid/content/Context;ILjava/lang/String;ZJJZLjava/lang/String;ZZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public static getIntentForGeneric(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
.registers 15
const-wide/16 v4, -0x1
const/4 v3, 0x0
const/4 v9, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move-wide v6, v4
move v8, v3
move v10, v3
move v11, v3
invoke-static/range {v0 .. v11}, Lco/vine/android/AbstractRecordingActivity;->getIntent(Landroid/content/Context;ILjava/lang/String;ZJJZLjava/lang/String;ZZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public static getIntentForMessaging(Landroid/content/Context;IZLjava/lang/String;)Landroid/content/Intent;
.registers 16
const-wide/16 v4, -0x1
const/4 v8, 0x0
const/4 v3, 0x1
const/4 v9, 0x0
move-object v0, p0
move v1, p1
move-object v2, p3
move-wide v6, v4
move v10, v8
move v11, p2
invoke-static/range {v0 .. v11}, Lco/vine/android/AbstractRecordingActivity;->getIntent(Landroid/content/Context;ILjava/lang/String;ZJJZLjava/lang/String;ZZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method private getVersion()Lco/vine/android/recorder/RecordSessionVersion;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
if-nez v0, :cond_a
invoke-static {p0}, Lco/vine/android/recorder/RecordSessionManager;->getCurrentVersion(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v0
iput-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
:cond_a
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
return-object v0
.end method
.method private handleDelete()V
.registers 34
const/16 v31, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v25
check-cast v25, Ljava/lang/ref/WeakReference;
if-eqz v25, :cond_179
invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v24
check-cast v24, Lco/vine/android/DraftFragment;
const v3, 0x7f040013
move-object/from16 v0, p0
invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v27
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v9, 0x7f0b0031
invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v6
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v9, 0x7f0b0036
invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v7
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
if-lez v3, :cond_9d
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
add-int/lit8 v9, v9, -0x1
invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lco/vine/android/DraftFragment;
if-eqz v8, :cond_9a
if-eqz v24, :cond_9a
invoke-virtual {v8}, Lco/vine/android/DraftFragment;->getThumbnailView()Landroid/view/View;
move-result-object v4
const/4 v3, 0x2
new-array v5, v3, [I
invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V
new-instance v2, Lco/vine/android/AbstractRecordingActivity$13;
move-object/from16 v3, p0
invoke-direct/range {v2 .. v8}, Lco/vine/android/AbstractRecordingActivity$13;-><init>(Lco/vine/android/AbstractRecordingActivity;Landroid/view/View;[IIILco/vine/android/DraftFragment;)V
move-object/from16 v0, v27
invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {v8}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v32
if-eqz v32, :cond_79
const/4 v3, 0x4
move-object/from16 v0, v32
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_79
invoke-virtual/range {v24 .. v24}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v32
if-eqz v32, :cond_92
move-object/from16 v0, p0
iget-boolean v3, v0, Lco/vine/android/AbstractRecordingActivity;->mDeleteWasDrag:Z
if-nez v3, :cond_92
move-object/from16 v0, v32
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:goto_8c
:cond_8c
if-eqz v31, :cond_91
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->deleteCurrentDraft()V
:cond_91
return-void
:cond_92
if-eqz v32, :cond_8c
move-object/from16 v0, v27
invoke-virtual {v2, v0}, Lco/vine/android/animation/SimpleAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
goto :goto_8c
:cond_9a
const/16 v31, 0x1
goto :goto_8c
:cond_9d
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
if-nez v3, :cond_8c
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v9, 0x1
if-ne v3, v9, :cond_c0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->deleteCurrentDraft()V
const/4 v3, 0x1
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lco/vine/android/AbstractRecordingActivity;->hideDrafts(Z)V
const-string v3, "Delete"
const/4 v9, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v3, v9}, Lco/vine/android/AbstractRecordingActivity;->swapFolder(Ljava/lang/String;Ljava/io/File;)V
goto :goto_8c
:cond_c0
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
add-int/lit8 v9, v9, 0x1
invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v29
check-cast v29, Ljava/lang/ref/WeakReference;
if-eqz v29, :cond_175
invoke-virtual/range {v29 .. v29}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v28
check-cast v28, Lco/vine/android/DraftFragment;
if-eqz v28, :cond_171
if-eqz v24, :cond_171
invoke-virtual/range {v28 .. v28}, Lco/vine/android/DraftFragment;->getThumbnailView()Landroid/view/View;
move-result-object v10
const/4 v3, 0x2
new-array v0, v3, [I
move-object/from16 v30, v0
move-object/from16 v0, v30
invoke-virtual {v10, v0}, Landroid/view/View;->getLocationOnScreen([I)V
:try_start_ea
move-object/from16 v0, p0
iget-object v11, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
invoke-virtual {v10}, Landroid/view/View;->getWidth()I
move-result v12
const/4 v3, 0x0
aget v13, v30, v3
const/4 v3, 0x1
aget v3, v30, v3
sub-int v14, v3, v6
move-object/from16 v9, p0
invoke-static/range {v9 .. v14}, Lco/vine/android/util/FloatingViewUtils;->buildFloatingViewFor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;III)Landroid/graphics/Bitmap;
:try_end_ff
.catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ff} :catch_167
:goto_ff
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
const/4 v9, 0x0
invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V
new-instance v11, Lco/vine/android/animation/MoveResizeAnimator;
const/4 v12, 0x3
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v3, v3, Landroid/graphics/Point;->x:I
int-to-float v3, v3
const/high16 v9, 0x3f80
move-object/from16 v0, p0
iget v15, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
sub-float/2addr v9, v15
mul-float/2addr v3, v9
float-to-int v3, v3
mul-int/lit8 v9, v7, 0x4
sub-int v15, v3, v9
const/4 v3, 0x1
aget v3, v30, v3
sub-int v16, v3, v6
const-wide/high16 v17, 0x3ff0
const-wide/high16 v19, 0x3ff0
const/16 v21, 0x12c
invoke-virtual/range {v28 .. v28}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v23
move-object/from16 v22, p0
invoke-direct/range {v11 .. v23}, Lco/vine/android/animation/MoveResizeAnimator;-><init>(ILandroid/view/View;Landroid/view/View;IIDDILco/vine/android/animation/SmoothAnimator$AnimationListener;Ljava/lang/Object;)V
new-instance v3, Lco/vine/android/AbstractRecordingActivity$14;
move-object/from16 v0, p0
invoke-direct {v3, v0, v11}, Lco/vine/android/AbstractRecordingActivity$14;-><init>(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/animation/MoveResizeAnimator;)V
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual/range {v28 .. v28}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v32
if-eqz v32, :cond_152
const/4 v3, 0x4
move-object/from16 v0, v32
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_152
invoke-virtual/range {v24 .. v24}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v32
if-eqz v32, :cond_16c
move-object/from16 v0, p0
iget-boolean v3, v0, Lco/vine/android/AbstractRecordingActivity;->mDeleteWasDrag:Z
if-nez v3, :cond_16c
move-object/from16 v0, v32
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto/16 :goto_8c
:catch_167
move-exception v26
invoke-static/range {v26 .. v26}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_ff
:cond_16c
invoke-virtual {v11}, Lco/vine/android/animation/MoveResizeAnimator;->start()V
goto/16 :goto_8c
:cond_171
const/16 v31, 0x1
goto/16 :goto_8c
:cond_175
const/16 v31, 0x1
goto/16 :goto_8c
:cond_179
const/16 v31, 0x1
goto/16 :goto_8c
.end method
.method private hideCurrentFragment()V
.registers 6
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget v4, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_22
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/DraftFragment;
if-eqz v1, :cond_22
invoke-virtual {v1}, Lco/vine/android/DraftFragment;->pausePlayer()V
invoke-virtual {v1}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_22
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
:cond_22
return-void
.end method
.method private hideDraftsInternal()V
.registers 3
const/16 v1, 0x8
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
invoke-virtual {v0, v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_28
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->onHideDrafts()V
:cond_28
return-void
.end method
.method private isResuming()Z
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_18
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mIsGoingToRecord:Z
if-nez v0, :cond_14
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isResuming()Z
move-result v0
if-eqz v0, :cond_16
:cond_14
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
:cond_18
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mIsGoingToRecord:Z
goto :goto_15
.end method
.method private releasePlayers()V
.registers 6
const/4 v0, 0x0
:goto_1
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-virtual {v3}, Landroid/util/SparseArray;->size()I
move-result v3
if-ge v0, v3, :cond_29
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget-object v4, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I
move-result v4
invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/DraftFragment;
if-eqz v2, :cond_26
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lco/vine/android/DraftFragment;->setSelected(Z)V
invoke-virtual {v2}, Lco/vine/android/DraftFragment;->release()V
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_29
return-void
.end method
.method private reload(Ljava/util/ArrayList;)V
.registers 5
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v0
const/16 v1, 0x9
if-le v0, v1, :cond_2d
const/4 v1, 0x3
invoke-static {v1}, Lco/vine/android/widgets/PromptDialogFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogFragment;
move-result-object v1
iput-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
const v2, 0x7f0e024c
invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogFragment;
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
const v2, 0x7f0e0163
invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogFragment;
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v2
invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V
add-int/lit8 v1, v0, -0x1
invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:cond_2d
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
new-instance v1, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-direct {v1, p0, v2}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;-><init>(Lco/vine/android/AbstractRecordingActivity;Landroid/support/v4/app/FragmentManager;)V
iput-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
invoke-virtual {v1, v2}, Landroid/support/v4/view/DraftViewPager;->setAdapter(Landroid/support/v4/app/DraftFragmentStatePagerAdapter;)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v1, p0}, Landroid/support/v4/view/DraftViewPager;->setOnPageChangeListener(Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
invoke-virtual {v2}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->getCount()I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Landroid/support/v4/view/DraftViewPager;->setOffscreenPageLimit(I)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDots:Lco/vine/android/widget/DotIndicators;
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-virtual {v1, v2}, Lco/vine/android/widget/DotIndicators;->setNumberOfDots(I)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDots:Lco/vine/android/widget/DotIndicators;
invoke-virtual {v1}, Lco/vine/android/widget/DotIndicators;->invalidate()V
return-void
.end method
.method private setCurrentSession()Z
.registers 11
const/4 v7, 0x0
const/4 v6, 0x1
const/4 v0, 0x0
iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v8}, Landroid/support/v4/view/DraftViewPager;->isDrawn()Z
move-result v8
if-eqz v8, :cond_89
iget-boolean v8, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
if-nez v8, :cond_89
iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity;->mStartSessionId:Ljava/lang/String;
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-nez v8, :cond_21
const-string v8, "camera_preview"
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mStartSessionId:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_31
:cond_21
iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
invoke-virtual {v9}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->getCount()I
move-result v9
add-int/lit8 v9, v9, -0x1
invoke-virtual {v8, v9, v7}, Landroid/support/v4/view/DraftViewPager;->setCurrentItem(IZ)V
iput-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
:goto_30
return v6
:cond_31
iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_37
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_89
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity;->mStartSessionId:Ljava/lang/String;
iget-object v9, v4, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;
invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_86
iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v8, v0, v7}, Landroid/support/v4/view/DraftViewPager;->setCurrentItem(IZ)V
iput v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
iput-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
iget-object v7, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget v8, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
const/4 v5, 0x0
if-eqz v2, :cond_7a
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/DraftFragment;
if-eqz v3, :cond_7a
invoke-virtual {v3}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v7
const v8, 0x7f0a00d5
invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
:cond_7a
iget-object v7, p0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v8}, Landroid/support/v4/view/DraftViewPager;->getLeftOfSelectedFragment()I
move-result v8
invoke-virtual {v7, v5, v8}, Lco/vine/android/widget/DragUpToDeleteContainer;->setView(Landroid/view/View;I)V
goto :goto_30
:cond_86
add-int/lit8 v0, v0, 0x1
goto :goto_37
:cond_89
move v6, v7
goto :goto_30
.end method
.method private showCurrentFragment()V
.registers 6
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget v4, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_24
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/DraftFragment;
if-eqz v1, :cond_24
const/4 v3, 0x1
iput-boolean v3, v1, Lco/vine/android/DraftFragment;->mCanUnhide:Z
invoke-virtual {v1}, Lco/vine/android/DraftFragment;->resumePlayer()V
invoke-virtual {v1}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_24
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
:cond_24
return-void
.end method
.method private unbindDrawables(Landroid/view/View;)V
.registers 5
invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_e
invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_e
instance-of v1, p1, Landroid/view/ViewGroup;
if-eqz v1, :cond_2e
const/4 v0, 0x0
:goto_13
move-object v1, p1
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
if-ge v0, v1, :cond_29
move-object v1, p1
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-direct {p0, v1}, Lco/vine/android/AbstractRecordingActivity;->unbindDrawables(Landroid/view/View;)V
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_29
check-cast p1, Landroid/view/ViewGroup;
invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
:cond_2e
return-void
.end method
.method public declared-synchronized addPlayerToPool(Lco/vine/android/player/SdkVideoView;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mVideoViews:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public cameraPreviewToRecorder(Landroid/view/View;Landroid/view/View;)V
.registers 22
invoke-direct/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->isResuming()Z
move-result v1
if-eqz v1, :cond_7
:goto_6
return-void
:cond_7
const/4 v1, 0x1
move-object/from16 v0, p0
iput-boolean v1, v0, Lco/vine/android/AbstractRecordingActivity;->mIsGoingToRecord:Z
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v1, v1, Landroid/graphics/Point;->x:I
int-to-float v14, v1
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
int-to-float v1, v1
div-float v16, v14, v1
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b006a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v17
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b0031
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v18
const/4 v1, 0x2
new-array v15, v1, [I
move-object/from16 v0, p1
invoke-virtual {v0, v15}, Landroid/view/View;->getLocationInWindow([I)V
const/16 v1, 0x8
move-object/from16 v0, p2
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I
move-result v4
const/4 v1, 0x0
aget v5, v15, v1
const/4 v1, 0x1
aget v1, v15, v1
sub-int v6, v1, v18
move-object/from16 v1, p0
move-object/from16 v2, p1
invoke-static/range {v1 .. v6}, Lco/vine/android/util/FloatingViewUtils;->buildFloatingViewFor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;III)Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
new-instance v1, Lco/vine/android/animation/MoveResizeAnimator;
const/4 v2, 0x4
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
const/4 v5, 0x0
move/from16 v0, v16
float-to-double v7, v0
move/from16 v0, v16
float-to-double v9, v0
const/16 v11, 0x12c
move/from16 v6, v17
move-object/from16 v12, p0
move-object/from16 v13, p1
invoke-direct/range {v1 .. v13}, Lco/vine/android/animation/MoveResizeAnimator;-><init>(ILandroid/view/View;Landroid/view/View;IIDDILco/vine/android/animation/SmoothAnimator$AnimationListener;Ljava/lang/Object;)V
invoke-virtual {v1}, Lco/vine/android/animation/MoveResizeAnimator;->start()V
goto :goto_6
.end method
.method protected createRecordingFragment()Lco/vine/android/RecordingFragment;
.registers 2
new-instance v0, Lco/vine/android/RecordingFragment;
invoke-direct {v0}, Lco/vine/android/RecordingFragment;-><init>()V
return-object v0
.end method
.method protected createRecordingPreviewFragmentHw(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)Lco/vine/android/RecordingPreviewFragment;
.registers 16
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iget-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z
iget-wide v4, p0, Lco/vine/android/AbstractRecordingActivity;->mConversationRowId:J
iget-wide v6, p0, Lco/vine/android/AbstractRecordingActivity;->mDirectUserId:J
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->isFromSony()Z
move-result v8
iget v9, p0, Lco/vine/android/AbstractRecordingActivity;->mColor:I
iget-object v10, p0, Lco/vine/android/AbstractRecordingActivity;->mRecipientUsername:Ljava/lang/String;
iget-boolean v11, p0, Lco/vine/android/AbstractRecordingActivity;->mAmFollowingRecipient:Z
iget-boolean v12, p0, Lco/vine/android/AbstractRecordingActivity;->mIsVmOnboarding:Z
move-object v2, p2
invoke-static/range {v0 .. v12}, Lco/vine/android/RecordingPreviewFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJZILjava/lang/String;ZZ)Lco/vine/android/RecordingPreviewFragment;
move-result-object v0
return-object v0
.end method
.method protected createRecordingPreviewFragmentSw(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)Lco/vine/android/RecordingPreviewFragment;
.registers 16
invoke-virtual {p1}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mUploadFile:Ljava/lang/String;
iget-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z
iget-wide v4, p0, Lco/vine/android/AbstractRecordingActivity;->mConversationRowId:J
iget-wide v6, p0, Lco/vine/android/AbstractRecordingActivity;->mDirectUserId:J
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->isFromSony()Z
move-result v8
iget v9, p0, Lco/vine/android/AbstractRecordingActivity;->mColor:I
iget-object v10, p0, Lco/vine/android/AbstractRecordingActivity;->mRecipientUsername:Ljava/lang/String;
iget-boolean v11, p0, Lco/vine/android/AbstractRecordingActivity;->mAmFollowingRecipient:Z
iget-boolean v12, p0, Lco/vine/android/AbstractRecordingActivity;->mIsVmOnboarding:Z
move-object v2, p2
invoke-static/range {v0 .. v12}, Lco/vine/android/RecordingPreviewFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJZILjava/lang/String;ZZ)Lco/vine/android/RecordingPreviewFragment;
move-result-object v0
return-object v0
.end method
.method protected currentlyHoldsRecordingFragment()Z
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public deleteCurrentDraft()V
.registers 9
:try_start_0
iget v6, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
if-nez v6, :cond_5f
const/4 v4, 0x0
:goto_5
const/4 v6, -0x1
iput v6, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v6}, Landroid/support/v4/view/DraftViewPager;->getCurrentItem()I
move-result v0
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
if-eqz v3, :cond_24
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/DraftFragment;
if-eqz v2, :cond_24
const/4 v6, 0x1
invoke-virtual {v2, v6}, Lco/vine/android/DraftFragment;->setExpired(Z)V
:cond_24
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
if-eqz v6, :cond_31
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
iget-object v6, v6, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;
const-string v7, "deleteCurrentDraft"
invoke-static {v6, v7}, Lco/vine/android/recorder/RecordSessionManager;->deleteSession(Ljava/io/File;Ljava/lang/String;)V
:cond_31
const-string v6, "draft"
invoke-static {v6}, Lco/vine/android/util/FlurryUtils;->trackAbandonedStage(Ljava/lang/String;)V
const/4 v6, 0x0
iput-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mStartSessionId:Ljava/lang/String;
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v6
invoke-static {p0, v6}, Lco/vine/android/recorder/RecordSessionManager;->getValidSessions(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)Ljava/util/ArrayList;
move-result-object v5
invoke-direct {p0, v5}, Lco/vine/android/AbstractRecordingActivity;->reload(Ljava/util/ArrayList;)V
iput-object v5, p0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v6}, Landroid/support/v4/view/DraftViewPager;->requestLayout()V
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v6}, Landroid/support/v4/view/DraftViewPager;->invalidate()V
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mAdapter:Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;
invoke-virtual {v6}, Lco/vine/android/AbstractRecordingActivity$DraftPagerImpl;->notifyDataSetChanged()V
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
const/4 v7, 0x0
invoke-virtual {v6, v4, v7}, Landroid/support/v4/view/DraftViewPager;->setCurrentItem(IZ)V
invoke-virtual {p0, v4}, Lco/vine/android/AbstractRecordingActivity;->onPageSelected(I)V
:goto_5e
return-void
:cond_5f
iget v6, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
:try_end_61
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_61} :catch_64
add-int/lit8 v4, v6, -0x1
goto :goto_5
:catch_64
move-exception v1
const-string v6, "Failed to delete current draft."
invoke-static {v6, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5e
.end method
.method protected discardUpload()V
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mUploadFile:Ljava/lang/String;
if-eqz v0, :cond_e
const-string v0, "Upload discarded."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mUploadFile:Ljava/lang/String;
invoke-static {p0, v0}, Lco/vine/android/util/UploadManager;->removeFromUploadQueue(Landroid/content/Context;Ljava/lang/String;)V
:cond_e
return-void
.end method
.method public endRelativeTime()Z
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->endRelativeTime()Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public getConversationRowId()J
.registers 3
iget-wide v0, p0, Lco/vine/android/AbstractRecordingActivity;->mConversationRowId:J
return-wide v0
.end method
.method public getRecordingActivityHelper()Lco/vine/android/recorder/RecordingActivityHelper;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;
return-object v0
.end method
.method public getScreenSize()Landroid/graphics/Point;
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
return-object v0
.end method
.method public hasPreviewedAlready()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mHasPreviewedAlready:Z
return v0
.end method
.method public hideDrafts(Z)V
.registers 6
const/4 v3, 0x0
const-string v1, "Fading away drafts."
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
new-instance v0, Landroid/view/animation/AnimationSet;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V
if-eqz p1, :cond_2f
sget-object v1, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->COLLAPSE_HEIGHT:Lco/vine/android/util/ViewUtil$ResizeAnimationType;
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskTop:Landroid/view/View;
invoke-static {v1, v2, v3}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
sget-object v1, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->COLLAPSE_WIDTH:Lco/vine/android/util/ViewUtil$ResizeAnimationType;
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskLeft:Landroid/view/View;
invoke-static {v1, v2, v3}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
sget-object v1, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->COLLAPSE_WIDTH:Lco/vine/android/util/ViewUtil$ResizeAnimationType;
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskRight:Landroid/view/View;
invoke-static {v1, v2, v3}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
:cond_2f
const v1, 0x7f04000f
invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v1, Lco/vine/android/AbstractRecordingActivity$7;
invoke-direct {v1, p0, p1}, Lco/vine/android/AbstractRecordingActivity$7;-><init>(Lco/vine/android/AbstractRecordingActivity;Z)V
invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
const-wide/16 v1, 0x12c
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
const/4 v2, 0x0
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v3}, Landroid/support/v4/view/DraftViewPager;->getLeftOfSelectedFragment()I
move-result v3
invoke-virtual {v1, v2, v3}, Lco/vine/android/widget/DragUpToDeleteContainer;->setView(Landroid/view/View;I)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public initMasks(Landroid/view/View;Landroid/view/View;)V
.registers 8
const/4 v4, 0x0
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mOnMaskTouchListesner:Landroid/view/View$OnTouchListener;
invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mOnMaskTouchListesner:Landroid/view/View$OnTouchListener;
invoke-virtual {p2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const-string v3, "capture"
invoke-virtual {p0, v3, v4}, Lco/vine/android/AbstractRecordingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v2
invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->isDefaultFrontFacing()Z
move-result v3
invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->getBottomMaskHeightPref(Z)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
if-lez v0, :cond_2f
invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I
new-instance v3, Lco/vine/android/AbstractRecordingActivity$6;
invoke-direct {v3, p0, p2, v1}, Lco/vine/android/AbstractRecordingActivity$6;-><init>(Lco/vine/android/AbstractRecordingActivity;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
invoke-virtual {p0, v3}, Lco/vine/android/AbstractRecordingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_2f
return-void
.end method
.method public isDraftsShowing()Z
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-eq v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isFromSony()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public makeSureUploadIsReady()Ljava/lang/String;
.registers 3
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mAddToUploadThread:Ljava/lang/Thread;
if-eqz v1, :cond_9
:try_start_4
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mAddToUploadThread:Ljava/lang/Thread;
invoke-virtual {v1}, Ljava/lang/Thread;->join()V
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_c
:cond_9
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mUploadFile:Ljava/lang/String;
return-object v1
:catch_c
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingPreviewFragment;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
:goto_b
return-void
:cond_c
const/16 v0, 0x1f
if-eq p2, v0, :cond_14
const/16 v0, 0x20
if-ne p2, v0, :cond_18
:cond_14
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->finish()V
goto :goto_b
:cond_18
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_b
.end method
.method public onAnimationFinish(ILjava/lang/Object;)V
.registers 7
const/4 v3, 0x0
packed-switch p1, :pswitch_data_36
:pswitch_4
:goto_4
return-void
:pswitch_5
const v1, 0x7f04000f
invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {p0, v3}, Lco/vine/android/AbstractRecordingActivity;->hideDrafts(Z)V
const-string v1, "PreviewAnimationFinish"
check-cast p2, Ljava/io/File;
invoke-virtual {p0, v1, p2}, Lco/vine/android/AbstractRecordingActivity;->swapFolder(Ljava/lang/String;Ljava/io/File;)V
iput-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity;->mIsGoingToRecord:Z
goto :goto_4
:pswitch_1e
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->deleteCurrentDraft()V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_4
:pswitch_29
invoke-virtual {p0, v3}, Lco/vine/android/AbstractRecordingActivity;->hideDrafts(Z)V
const-string v1, "CameraAnimationFinish"
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Lco/vine/android/AbstractRecordingActivity;->swapFolder(Ljava/lang/String;Ljava/io/File;)V
iput-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity;->mIsGoingToRecord:Z
goto :goto_4
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_5
:pswitch_4
:pswitch_1e
:pswitch_29
.end packed-switch
.end method
.method public onBackPressed()V
.registers 5
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->makeSureUploadIsReady()Ljava/lang/String;
:try_start_3
iget v2, p0, Lco/vine/android/AbstractRecordingActivity;->mStep:I
const/4 v3, -0x1
if-ne v2, v3, :cond_c
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onBackPressed()V
:cond_b
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->isDraftsShowing()Z
move-result v2
if-eqz v2, :cond_29
const/4 v2, 0x1
invoke-virtual {p0, v2}, Lco/vine/android/AbstractRecordingActivity;->hideDrafts(Z)V
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->releasePlayers()V
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v2, v2, Lco/vine/android/RecordingFragment;
if-eqz v2, :cond_b
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->resumeFromDraft()V
goto :goto_b
:catch_27
move-exception v2
goto :goto_b
:cond_29
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->currentlyHoldsRecordingFragment()Z
move-result v2
if-eqz v2, :cond_6f
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditing()Z
move-result v1
if-nez v1, :cond_4e
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isSessionModified()Z
move-result v2
if-nez v2, :cond_4e
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->setDiscardChangesOnStop()V
const/16 v2, 0x64
invoke-virtual {p0, v2}, Lco/vine/android/AbstractRecordingActivity;->setResult(I)V
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->playStopSound()V
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onBackPressed()V
goto :goto_b
:cond_4e
if-eqz v1, :cond_5d
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditingDirty()Z
move-result v2
if-nez v2, :cond_5d
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->playStopSound()V
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->discardEditing()V
goto :goto_b
:cond_5d
iget-boolean v2, p0, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z
if-nez v2, :cond_66
const/4 v2, 0x0
invoke-virtual {p0, v2, v0}, Lco/vine/android/AbstractRecordingActivity;->showUnSavedChangesDialog(ILco/vine/android/RecordingFragment;)V
goto :goto_b
:cond_66
const/16 v2, 0x64
invoke-virtual {p0, v2}, Lco/vine/android/AbstractRecordingActivity;->setResult(I)V
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onBackPressed()V
goto :goto_b
:cond_6f
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v2, v2, Lco/vine/android/RecordingPreviewFragment;
if-eqz v2, :cond_b
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v2, Lco/vine/android/RecordingPreviewFragment;
const/4 v3, 0x0
invoke-virtual {v2, p0, v3}, Lco/vine/android/RecordingPreviewFragment;->previewToRecord(Lco/vine/android/AbstractRecordingActivity;Z)V
:try_end_7d
.catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_7d} :catch_27
goto :goto_b
.end method
.method public onCameraSwitchPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_10
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackCameraSwitchPressed(Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0, p1}, Lco/vine/android/RecordingFragment;->onCameraSwitchPressed(Landroid/view/View;)V
:cond_10
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 25
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getIntent()Landroid/content/Intent;
move-result-object v11
const/4 v5, 0x0
if-eqz v11, :cond_b
invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v5
:cond_b
const-string v19, "AbstractRecordingActivity {} pid: {}, action tag {}."
const/16 v20, 0x3
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
aput-object p0, v20, v21
const/16 v21, 0x1
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v22
invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v22
aput-object v22, v20, v21
const/16 v21, 0x2
aput-object v5, v20, v21
invoke-static/range {v19 .. v20}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Lco/vine/android/util/IntentionalObjectCounter;->add()V
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackRecordingStart()V
const v19, 0x7f030085
const/16 v20, 0x0
const/16 v21, 0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, v19
move/from16 v3, v20
move/from16 v4, v21
invoke-super {v0, v1, v2, v3, v4}, Lco/vine/android/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;IZZ)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordingActivityHelper;->bindCameraService(Landroid/app/Activity;)V
invoke-static/range {p0 .. p0}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
new-instance v10, Landroid/content/IntentFilter;
invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V
const-string v19, "co.vine.android.session.logout"
move-object/from16 v0, v19
invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v19, "co.vine.android.session.login"
move-object/from16 v0, v19
invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v17
const/16 v19, 0x1
move-object/from16 v0, p0
move/from16 v1, v19
invoke-static {v0, v1}, Lco/vine/android/util/SystemUtil;->getMemoryRatio(Landroid/content/Context;Z)D
move-result-wide v19
const-wide/high16 v21, 0x3ff0
cmpg-double v19, v19, v21
if-gez v19, :cond_98
const v19, 0x7f0e0257
move-object/from16 v0, p0
move/from16 v1, v19
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->finish()V
:cond_97
:goto_97
return-void
:cond_98
invoke-static/range {p0 .. p0}, Lco/vine/android/recorder/RecordSessionManager;->getCurrentVersion(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
if-nez p1, :cond_129
if-eqz v11, :cond_118
invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v9
if-eqz v9, :cond_118
const-string v19, "messaging"
move-object/from16 v0, v19
invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v19
move/from16 v0, v19
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z
const-string v19, "conv_row_id"
const-wide/16 v20, -0x1
move-object/from16 v0, v19
move-wide/from16 v1, v20
invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v19
move-wide/from16 v0, v19
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/AbstractRecordingActivity;->mConversationRowId:J
const-string v19, "arg_top_overlay"
move-object/from16 v0, v19
invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v19
check-cast v19, Landroid/graphics/Bitmap;
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mTopOverlay:Landroid/graphics/Bitmap;
const-string v19, "direct_id"
const-wide/16 v20, -0x1
move-object/from16 v0, v19
move-wide/from16 v1, v20
invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v19
move-wide/from16 v0, v19
move-object/from16 v2, p0
iput-wide v0, v2, Lco/vine/android/AbstractRecordingActivity;->mDirectUserId:J
const-string v19, "start_conversation"
move-object/from16 v0, v19
invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v19
move/from16 v0, v19
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/AbstractRecordingActivity;->mStartConversation:Z
const-string v19, "recipient_username"
move-object/from16 v0, v19
invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mRecipientUsername:Ljava/lang/String;
const-string v19, "is_vm_onboarding"
move-object/from16 v0, v19
invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v19
move/from16 v0, v19
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/AbstractRecordingActivity;->mIsVmOnboarding:Z
:cond_118
const/16 v19, 0x1
const/16 v20, 0x0
const/16 v21, 0x0
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
move-object/from16 v3, v21
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/AbstractRecordingActivity;->toRecord(ZZLco/vine/android/recorder/RecordingFile;)V
:cond_129
invoke-static {}, Lco/vine/android/client/VineAccountHelper;->resetActiveSession()V
invoke-static/range {p0 .. p0}, Lco/vine/android/service/VineUploadService;->getClearNotificationsIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v19
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const v19, 0x7f0c0003
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v19
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
const/high16 v20, 0x42c8
div-float v19, v19, v20
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
const v19, 0x7f0a01d5
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
move-object/from16 v19, v0
const/16 v20, 0x8
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V
const v19, 0x7f0a00da
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
check-cast v19, Landroid/support/v4/view/DraftViewPager;
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
const v19, 0x7f0a00db
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
check-cast v19, Lco/vine/android/widget/DotIndicators;
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDots:Lco/vine/android/widget/DotIndicators;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
move/from16 v0, v19
int-to-float v0, v0
move/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
move/from16 v20, v0
mul-float v19, v19, v20
move/from16 v0, v19
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/AbstractRecordingActivity;->mPreviewDimen:I
const v19, 0x7f0a00dd
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mPreviewOverlay:Landroid/view/View;
const v19, 0x7f0a00dc
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mProgressOverlay:Landroid/view/View;
const v19, 0x7f0a01db
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskTop:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskTop:Landroid/view/View;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mEmptyClicker:Landroid/view/View$OnClickListener;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v19, 0x7f0a01dc
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskLeft:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskLeft:Landroid/view/View;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mEmptyClicker:Landroid/view/View$OnClickListener;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v19, 0x7f0a01dd
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskRight:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskRight:Landroid/view/View;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mEmptyClicker:Landroid/view/View$OnClickListener;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v19, 0x7f0a01da
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskParent:Landroid/view/View;
const v19, 0x7f0a01de
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
const v19, 0x7f0a01df
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
const v19, 0x7f0a01e0
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
move-object/from16 v19, v0
new-instance v20, Lco/vine/android/AbstractRecordingActivity$3;
move-object/from16 v0, v20
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/AbstractRecordingActivity$3;-><init>(Lco/vine/android/AbstractRecordingActivity;)V
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
move-object/from16 v19, v0
new-instance v20, Lco/vine/android/AbstractRecordingActivity$4;
move-object/from16 v0, v20
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/AbstractRecordingActivity$4;-><init>(Lco/vine/android/AbstractRecordingActivity;)V
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v19, 0x7f0a01d4
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
check-cast v19, Lco/vine/android/widget/DragUpToDeleteContainer;
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
move-object/from16 v19, v0
const/16 v20, 0x8
invoke-virtual/range {v19 .. v20}, Lco/vine/android/widget/DragUpToDeleteContainer;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->setInteractionListner(Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
move-object/from16 v19, v0
const/16 v20, 0x8
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V
const v19, 0x7f0b0033
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v8
const v19, 0x7f0b006a
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v16
add-int v19, v16, v8
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/AbstractRecordingActivity;->mTopMaskHeight:I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
div-int/lit8 v19, v19, 0x2
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewDimen:I
move/from16 v20, v0
div-int/lit8 v20, v20, 0x2
sub-int v19, v19, v20
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/AbstractRecordingActivity;->mSideMaskWidth:I
const v19, 0x7f0a00d9
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v13
invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v14
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
move/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v20, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v20, v0
const/high16 v21, 0x3f80
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
move/from16 v22, v0
sub-float v21, v21, v22
const/high16 v22, 0x4000
div-float v21, v21, v22
mul-float v20, v20, v21
add-float v19, v19, v20
move/from16 v0, v19
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v19
iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
if-eqz p1, :cond_4b9
const-string v19, "state_fp"
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_375
const-string v19, "state_fp"
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v19
move/from16 v0, v19
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
:cond_375
const-string v19, "first_launch"
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_4af
const-string v19, "first_launch"
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v19
move/from16 v0, v19
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
:goto_391
const v19, 0x7f0b0030
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v6
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/support/v4/view/DraftViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v19, v0
add-int v19, v19, v16
add-int v19, v19, v6
move/from16 v0, v19
move-object/from16 v1, v18
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/support/v4/view/DraftViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const v19, 0x7f0b0030
move-object/from16 v0, v17
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v7
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mDots:Lco/vine/android/widget/DotIndicators;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Landroid/graphics/Point;->x:I
move/from16 v20, v0
add-int v20, v20, v16
div-int/lit8 v21, v7, 0x4
add-int v20, v20, v21
move/from16 v0, v20
int-to-float v0, v0
move/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Lco/vine/android/widget/DotIndicators;->setY(F)V
const v19, 0x7f0a01d7
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
check-cast v19, Landroid/widget/ImageView;
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mLargeThumbnailOverlay:Landroid/widget/ImageView;
const v19, 0x7f0a01d8
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
const v19, 0x7f0a01d9
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
move-object/from16 v19, v0
const/16 v20, 0x8
invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V
const v19, 0x7f0a00d3
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlayImage:Landroid/view/View;
const v19, 0x7f0a01d6
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mDraftFullMask:Landroid/view/View;
const v19, 0x7f040019
move-object/from16 v0, p0
move/from16 v1, v19
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mSlowFadeIn:Landroid/view/animation/Animation;
const v19, 0x7f040019
move-object/from16 v0, p0
move/from16 v1, v19
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mCameraIconFadeIn:Landroid/view/animation/Animation;
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z
move/from16 v19, v0
if-nez v19, :cond_97
const-string v19, "capture"
const/16 v20, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lco/vine/android/AbstractRecordingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v15
const-string v19, "recorder_launch_count"
const/16 v20, 0x0
move-object/from16 v0, v19
move/from16 v1, v20
invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v19
add-int/lit8 v12, v19, 0x1
invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v19
const-string v20, "recorder_launch_count"
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v19
invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V
goto/16 :goto_97
:cond_4af
const/16 v19, 0x1
move/from16 v0, v19
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
goto/16 :goto_391
:cond_4b9
const/16 v19, 0x1
move/from16 v0, v19
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
goto/16 :goto_391
.end method
.method protected onDestroy()V
.registers 7
const/4 v5, 0x1
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onDestroy()V
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;
invoke-virtual {v3, p0}, Lco/vine/android/recorder/RecordingActivityHelper;->unBindCameraService(Landroid/app/Activity;)V
:try_start_9
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
invoke-virtual {v3}, Lco/vine/android/util/IntentionalObjectCounter;->release()V
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;
invoke-virtual {v3}, Lco/vine/android/util/IntentionalObjectCounter;->getCount()I
move-result v0
if-nez v0, :cond_44
const-string v3, "Clean up folders because we are the last one."
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v3
invoke-virtual {v3, p0}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSessionManager;->cleanUnusedFolders()V
:goto_26
:cond_26
:try_end_26
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_26} :catch_51
const/4 v3, 0x0
iput-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
const-string v3, "[mem] AbstractRecordingActivity {} Destroyed."
new-array v4, v5, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p0, v4, v5
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackRecordingDestroy()V
const v3, 0x7f0a01d3
invoke-virtual {p0, v3}, Lco/vine/android/AbstractRecordingActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
:try_start_3d
invoke-direct {p0, v2}, Lco/vine/android/AbstractRecordingActivity;->unbindDrawables(Landroid/view/View;)V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_56
:goto_40
invoke-static {}, Ljava/lang/System;->gc()V
return-void
:cond_44
if-le v0, v5, :cond_26
:try_start_46
new-instance v3, Lco/vine/android/VineLoggingException;
const-string v4, "Double instance violation, but it\'s ok."
invoke-direct {v3, v4}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
:try_end_50
.catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_51
goto :goto_26
:catch_51
move-exception v1
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_26
:catch_56
move-exception v1
const-string v3, "Failed to remove all drawables, but FINE."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_40
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 8
const/16 v3, 0x64
const/4 v2, 0x0
packed-switch p2, :pswitch_data_78
:goto_6
:pswitch_6
:cond_6
return-void
:pswitch_7
packed-switch p3, :pswitch_data_84
goto :goto_6
:pswitch_b
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->showCurrentFragment()V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V
goto :goto_6
:pswitch_19
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->handleDelete()V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V
goto :goto_6
:pswitch_27
packed-switch p3, :pswitch_data_8c
goto :goto_6
:pswitch_2b
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v1, v1, Lco/vine/android/RecordingFragment;
if-eqz v1, :cond_6
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v1, Lco/vine/android/RecordingFragment;
invoke-virtual {v1, v2}, Lco/vine/android/RecordingFragment;->startDrafts(Z)V
goto :goto_6
:pswitch_39
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v1, v1, Lco/vine/android/RecordingFragment;
if-eqz v1, :cond_6
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v1, Lco/vine/android/RecordingFragment;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lco/vine/android/RecordingFragment;->startDrafts(Z)V
goto :goto_6
:pswitch_48
packed-switch p3, :pswitch_data_94
goto :goto_6
:pswitch_4c
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->currentlyHoldsRecordingFragment()Z
move-result v1
if-eqz v1, :cond_5c
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->setDiscardChangesOnStop()V
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->playStopSound()V
:cond_5c
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->discardUpload()V
invoke-virtual {p0, v3}, Lco/vine/android/AbstractRecordingActivity;->setResult(I)V
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->finish()V
goto :goto_6
:pswitch_66
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->currentlyHoldsRecordingFragment()Z
move-result v1
if-eqz v1, :cond_6
invoke-virtual {p0, v3}, Lco/vine/android/AbstractRecordingActivity;->setResult(I)V
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v1, Lco/vine/android/RecordingFragment;
invoke-virtual {v1}, Lco/vine/android/RecordingFragment;->saveSessionAndQuit()V
goto :goto_6
nop
:pswitch_data_8c
.packed-switch -0x2
:pswitch_2b
:pswitch_39
.end packed-switch
:pswitch_data_78
.packed-switch 0x0
:pswitch_48
:pswitch_7
:pswitch_27
:pswitch_6
.end packed-switch
:pswitch_data_94
.packed-switch -0x2
:pswitch_4c
:pswitch_66
.end packed-switch
:pswitch_data_84
.packed-switch -0x2
:pswitch_b
:pswitch_19
.end packed-switch
.end method
.method public onFinishPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0, p1}, Lco/vine/android/RecordingFragment;->onFinishPressed(Landroid/view/View;)V
:cond_d
return-void
.end method
.method public onFocusSwitchPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_10
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackFocusSwitchPressed(Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0, p1}, Lco/vine/android/RecordingFragment;->onFocusSwitchPressed(Landroid/view/View;)V
:cond_10
return-void
.end method
.method public onGhostSwitchPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_10
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackGhostSwitchPressed(Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0, p1}, Lco/vine/android/RecordingFragment;->onGhostSwitchPressed(Landroid/view/View;)V
:cond_10
return-void
.end method
.method public onGridSwitchPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_10
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackGridSwitchPressed(Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->onGridSwitchPressed()V
:cond_10
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 11
const/4 v7, 0x0
const/4 v4, 0x1
const-string v5, "KEY DOWN {}."
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
sparse-switch p1, :sswitch_data_98
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
:goto_11
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->getActiveRecordingFragment()Lco/vine/android/RecordingFragment;
move-result-object v0
iget-boolean v5, p0, Lco/vine/android/AbstractRecordingActivity;->isSecretModeOn:Z
if-nez v5, :cond_69
sget-object v5, Lco/vine/android/AbstractRecordingActivity;->SECRETS:[I
iget v6, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSecret:I
aget v5, v5, v6
if-ne p1, v5, :cond_5e
sget-boolean v5, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v5, :cond_5e
iget v5, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSecret:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSecret:I
iget v5, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSecret:I
sget-object v6, Lco/vine/android/AbstractRecordingActivity;->SECRETS:[I
array-length v6, v6
if-lt v5, v6, :cond_41
if-eqz v0, :cond_41
const-string v5, "Secret mode enabled."
invoke-static {p0, v5}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
move-result-object v5
invoke-virtual {v0, v5}, Lco/vine/android/RecordingFragment;->enableSecretMode(Landroid/widget/Toast;)V
iput-boolean v4, p0, Lco/vine/android/AbstractRecordingActivity;->isSecretModeOn:Z
iput v7, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSecret:I
:goto_41
:cond_41
if-eqz v0, :cond_92
if-eqz v2, :cond_61
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditing()Z
move-result v5
if-nez v5, :cond_61
invoke-virtual {v0, v3}, Lco/vine/android/RecordingFragment;->modifyZoom(Z)V
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->requestZoomProgressUpdate()V
:goto_51
:sswitch_51
return v4
:sswitch_52
const/4 v3, 0x1
const/4 v2, 0x1
const/4 v1, 0x0
goto :goto_11
:sswitch_56
const/4 v3, 0x0
const/4 v2, 0x1
const/4 v1, 0x0
goto :goto_11
:sswitch_5a
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v3, 0x0
goto :goto_11
:cond_5e
iput v7, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSecret:I
goto :goto_41
:cond_61
if-eqz v1, :cond_92
iput-boolean v4, p0, Lco/vine/android/AbstractRecordingActivity;->mHasStartedRelativeTimeFromHardwareButton:Z
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->startRelativeTime()Z
goto :goto_51
:cond_69
if-eqz v0, :cond_92
if-eqz v2, :cond_8a
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isEditing()Z
move-result v5
if-nez v5, :cond_7d
if-eqz v3, :cond_79
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->doSecretVolumeUp()V
goto :goto_51
:cond_79
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->doSecretVolumeDown()V
goto :goto_51
:cond_7d
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
const-string v6, "Reversed."
invoke-static {v5, v6}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->reverseFrames()V
goto :goto_51
:cond_8a
if-eqz v1, :cond_92
iput-boolean v4, p0, Lco/vine/android/AbstractRecordingActivity;->mHasStartedRelativeTimeFromHardwareButton:Z
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->startRelativeTime()Z
goto :goto_51
:cond_92
invoke-super {p0, p1, p2}, Lco/vine/android/BaseActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v4
goto :goto_51
nop
:sswitch_data_98
.sparse-switch
0x18 -> :sswitch_52
0x19 -> :sswitch_56
0x1b -> :sswitch_5a
0x50 -> :sswitch_51
0xa8 -> :sswitch_52
0xa9 -> :sswitch_56
.end sparse-switch
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 8
.parameter
.end parameter
.parameter
.end parameter
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_30
const/4 v0, 0x0
const/4 v2, 0x0
:goto_6
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->getActiveRecordingFragment()Lco/vine/android/RecordingFragment;
move-result-object v1
if-eqz v1, :cond_2b
iget-boolean v4, p0, Lco/vine/android/AbstractRecordingActivity;->isSecretModeOn:Z
if-nez v4, :cond_22
if-eqz v2, :cond_22
invoke-virtual {v1}, Lco/vine/android/RecordingFragment;->isEditing()Z
move-result v4
if-nez v4, :cond_22
invoke-virtual {v1}, Lco/vine/android/RecordingFragment;->stopZoom()V
:sswitch_1b
:goto_1b
return v3
:sswitch_1c
const/4 v2, 0x1
const/4 v0, 0x0
goto :goto_6
:sswitch_1f
const/4 v2, 0x0
const/4 v0, 0x1
goto :goto_6
:cond_22
iget-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity;->mHasStartedRelativeTimeFromHardwareButton:Z
if-eqz v3, :cond_2b
if-eqz v0, :cond_2b
invoke-virtual {v1}, Lco/vine/android/RecordingFragment;->endRelativeTime()Z
:cond_2b
invoke-super {p0, p1, p2}, Lco/vine/android/BaseActionBarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v3
goto :goto_1b
:sswitch_data_30
.sparse-switch
0x18 -> :sswitch_1c
0x19 -> :sswitch_1c
0x1b -> :sswitch_1f
0x50 -> :sswitch_1b
0xa8 -> :sswitch_1c
0xa9 -> :sswitch_1c
.end sparse-switch
.end method
.method public onPageScrollStateChanged(I)V
.registers 3
iput p1, p0, Lco/vine/android/AbstractRecordingActivity;->mPageScrollState:I
if-nez p1, :cond_10
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mOnPageIdleRunnable:Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;
if-eqz v0, :cond_10
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mOnPageIdleRunnable:Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;
invoke-virtual {v0}, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;->run()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mOnPageIdleRunnable:Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;
:cond_10
return-void
.end method
.method public onPageScrolled(IFI)V
.registers 4
return-void
.end method
.method public onPageSelected(I)V
.registers 16
const/4 v13, 0x0
const/4 v9, 0x1
const/4 v12, -0x1
const/4 v10, 0x0
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
if-eqz v11, :cond_3f
const/4 v2, 0x0
const/4 v3, 0x0
iget v11, p0, Lco/vine/android/AbstractRecordingActivity;->mPageScrollState:I
if-nez v11, :cond_40
move v4, v9
:goto_f
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v5
if-ne p1, v12, :cond_44
iget v9, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
if-gt v9, v5, :cond_34
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget v11, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_34
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lco/vine/android/DraftFragment;
if-eqz v7, :cond_34
if-eqz v4, :cond_42
invoke-virtual {v7, v10}, Lco/vine/android/DraftFragment;->setSelected(Z)V
:goto_34
:cond_34
if-nez v2, :cond_38
if-eqz v3, :cond_3f
:cond_38
new-instance v9, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;
invoke-direct {v9, p0, v2, v3}, Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;-><init>(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/DraftFragment;Lco/vine/android/DraftFragment;)V
iput-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mOnPageIdleRunnable:Lco/vine/android/AbstractRecordingActivity$SetSelectedRunnable;
:cond_3f
return-void
:cond_40
move v4, v10
goto :goto_f
:cond_42
move-object v2, v7
goto :goto_34
:cond_44
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mDots:Lco/vine/android/widget/DotIndicators;
invoke-virtual {v11, p1}, Lco/vine/android/widget/DotIndicators;->setActiveDot(I)V
if-ge p1, v5, :cond_d6
iget v11, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
if-eq v11, v12, :cond_6c
iget v11, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
if-gt v11, v5, :cond_6c
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget v12, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_6c
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lco/vine/android/DraftFragment;
if-eqz v7, :cond_6c
if-eqz v4, :cond_d2
invoke-virtual {v7, v10}, Lco/vine/android/DraftFragment;->setSelected(Z)V
:goto_6c
:cond_6c
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-virtual {v11, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_c4
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lco/vine/android/DraftFragment;
if-eqz v7, :cond_c4
invoke-virtual {v7}, Lco/vine/android/DraftFragment;->getView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_c4
const v11, 0x7f0a00d5
invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
if-eqz v8, :cond_c4
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
if-eqz v11, :cond_c4
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
iget-object v12, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v12}, Landroid/support/v4/view/DraftViewPager;->getLeftOfSelectedFragment()I
move-result v12
invoke-virtual {v11, v8, v12}, Lco/vine/android/widget/DragUpToDeleteContainer;->setView(Landroid/view/View;I)V
iget-boolean v11, p0, Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
if-eqz v11, :cond_a2
if-ge p1, v5, :cond_b6
:cond_a2
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V
iget-object v10, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v10
const/high16 v11, 0x3f80
invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v10
invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V
:cond_b6
iget-object v10, p0, Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mOnResumeDraftRunnable:Ljava/lang/Runnable;
invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget v10, p0, Lco/vine/android/AbstractRecordingActivity;->mPageScrollState:I
if-nez v10, :cond_d4
invoke-virtual {v7, v9}, Lco/vine/android/DraftFragment;->setSelected(Z)V
:goto_c4
:cond_c4
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mSessions:Ljava/util/ArrayList;
invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
iput-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
:goto_ce
iput p1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
goto/16 :goto_34
:cond_d2
move-object v2, v7
goto :goto_6c
:cond_d4
move-object v3, v7
goto :goto_c4
:cond_d6
iget v9, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
if-eq v9, v12, :cond_f3
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget v11, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_12f
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/DraftFragment;
if-eqz v6, :cond_f3
if-eqz v4, :cond_12d
invoke-virtual {v6, v10}, Lco/vine/android/DraftFragment;->setSelected(Z)V
:cond_f3
:goto_f3
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mCameraFragment:Ljava/lang/ref/WeakReference;
if-eqz v9, :cond_108
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mCameraFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lco/vine/android/DraftCameraPreviewFragment;
if-eqz v7, :cond_108
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
iget-object v10, p0, Lco/vine/android/AbstractRecordingActivity;->mOnResumeDraftRunnable:Ljava/lang/Runnable;
invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_108
iput-object v13, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentSession:Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
iget-object v10, p0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
invoke-virtual {v10}, Landroid/support/v4/view/DraftViewPager;->getLeftOfSelectedFragment()I
move-result v10
invoke-virtual {v9, v13, v10}, Lco/vine/android/widget/DragUpToDeleteContainer;->setView(Landroid/view/View;I)V
iget-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v9
const/4 v10, 0x0
invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v9
new-instance v10, Lco/vine/android/AbstractRecordingActivity$5;
invoke-direct {v10, p0}, Lco/vine/android/AbstractRecordingActivity$5;-><init>(Lco/vine/android/AbstractRecordingActivity;)V
invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v9
invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V
goto :goto_ce
:cond_12d
move-object v2, v6
goto :goto_f3
:cond_12f
const-string v9, "Fragment {} is null: size: {}."
iget v10, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
iget-object v11, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-virtual {v11}, Landroid/util/SparseArray;->size()I
move-result v11
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
invoke-static {v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_f3
.end method
.method protected onPause()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onPause()V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
if-eqz v0, :cond_14
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
invoke-virtual {v0}, Lco/vine/android/widgets/PromptDialogFragment;->isVisible()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
invoke-virtual {v0}, Lco/vine/android/widgets/PromptDialogFragment;->dismiss()V
:cond_14
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->releasePlayers()V
return-void
.end method
.method public onRecorderBackPressed(Landroid/view/View;)V
.registers 3
:try_start_0
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->onBackPressed()V
:goto_3
:try_end_3
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method
.method protected onResume()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onResume()V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftUpgradeCustomer:Lco/vine/android/service/DraftUpgradeCustomer;
invoke-virtual {v0}, Lco/vine/android/service/DraftUpgradeCustomer;->requestCount()V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lco/vine/android/BaseActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "state_fp"
iget-boolean v1, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "first_launch"
iget-boolean v1, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstDraftLaunch:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public onSessionSwitchPressed(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0, p1}, Lco/vine/android/RecordingFragment;->onSessionSwitchPressed(Landroid/view/View;)V
:cond_d
return-void
.end method
.method protected onStart()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onStart()V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftUpgradeCustomer:Lco/vine/android/service/DraftUpgradeCustomer;
invoke-virtual {v0}, Lco/vine/android/service/DraftUpgradeCustomer;->onStart()V
return-void
.end method
.method protected onStop()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onStop()V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftUpgradeCustomer:Lco/vine/android/service/DraftUpgradeCustomer;
invoke-virtual {v0}, Lco/vine/android/service/DraftUpgradeCustomer;->onStop()V
return-void
.end method
.method public preSetContentView()V
.registers 2
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasCamera()Z
move-result v0
if-nez v0, :cond_c
invoke-static {p0}, Lco/vine/android/util/Util;->showNoCameraToast(Landroid/content/Context;)V
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->finish()V
:cond_c
return-void
.end method
.method public prepareForPickup()Z
.registers 6
const/4 v2, 0x0
iget-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
if-nez v3, :cond_1f
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
iget v4, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_1f
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/DraftFragment;
iput-boolean v2, v1, Lco/vine/android/DraftFragment;->mCanUnhide:Z
invoke-virtual {v1}, Lco/vine/android/DraftFragment;->pausePlayer()V
invoke-virtual {v1}, Lco/vine/android/DraftFragment;->showImage()V
:cond_1f
iget-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
if-nez v3, :cond_24
const/4 v2, 0x1
:cond_24
return v2
.end method
.method public declared-synchronized releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mVideoViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_7
:cond_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1c
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/player/SdkVideoView;
if-eq v1, p1, :cond_7
invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->suspend()V
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_19
goto :goto_7
:catchall_19
move-exception v2
monitor-exit p0
throw v2
:cond_1c
:try_start_1c
iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity;->mVideoViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
:try_end_21
.catchall {:try_start_1c .. :try_end_21} :catchall_19
monitor-exit p0
return-void
.end method
.method public requestForMoreMemory()V
.registers 3
:try_start_0
invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/client/AppController;->clearImageCacheFromMemory()V
:goto_7
:try_end_7
.catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string v1, "Failed to clear image cache memory."
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_7
.end method
.method public showDeleteDialog()V
.registers 3
const/4 v1, 0x1
invoke-static {v1}, Lco/vine/android/widgets/PromptDialogFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogFragment;
move-result-object v0
invoke-virtual {v0, p0}, Lco/vine/android/widgets/PromptDialogFragment;->setListener(Lco/vine/android/widgets/PromptDialogFragment$OnDialogDoneListener;)V
const v1, 0x7f0e00b3
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogFragment;
const v1, 0x7f0e00b6
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogFragment;
const v1, 0x7f0e0057
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogFragment;
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V
return-void
.end method
.method public showDrafts(Ljava/lang/String;)V
.registers 31
:try_start_0
const-string v2, "Started showing drafts."
invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
const-string v2, "camera_preview"
move-object/from16 v0, p1
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
const/4 v2, 0x1
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/AbstractRecordingActivity;->mStartSessionId:Ljava/lang/String;
const/4 v2, 0x0
move-object/from16 v0, p0
iput-boolean v2, v0, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
invoke-direct/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v2
move-object/from16 v0, p0
invoke-static {v0, v2}, Lco/vine/android/recorder/RecordSessionManager;->getValidSessions(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)Ljava/util/ArrayList;
move-result-object v2
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lco/vine/android/AbstractRecordingActivity;->reload(Ljava/util/ArrayList;)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftFullMask:Landroid/view/View;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskParent:Landroid/view/View;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlayImage:Landroid/view/View;
const/16 v4, 0x8
invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v25
const v2, 0x7f0b006a
move-object/from16 v0, v25
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v24
const v2, 0x7f0b0033
move-object/from16 v0, v25
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v18
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/AbstractRecordingActivity;->mTopMaskHeight:I
move/from16 v28, v0
if-eqz v21, :cond_65
add-int v28, v28, v18
:cond_65
if-nez v21, :cond_1a1
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v2, v2, Lco/vine/android/RecordingFragment;
if-eqz v2, :cond_1a1
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mLargeThumbnailOverlay:Landroid/widget/ImageView;
move-object/from16 v26, v0
invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v27
check-cast v27, Landroid/widget/RelativeLayout$LayoutParams;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
move-object/from16 v0, v27
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
move-object/from16 v0, v27
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
const/4 v2, 0x0
move-object/from16 v0, v27
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
move/from16 v0, v24
move-object/from16 v1, v27
iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v2, Lco/vine/android/RecordingFragment;
invoke-virtual {v2}, Lco/vine/android/RecordingFragment;->getThumbnailPath()Ljava/lang/String;
move-result-object v23
new-instance v19, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
move-object/from16 v0, v19
move-object/from16 v1, v23
invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
move-object/from16 v0, v26
move-object/from16 v1, v19
invoke-static {v0, v1}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
const/4 v2, 0x0
move-object/from16 v0, v26
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_c1
:cond_c1
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
new-instance v4, Lco/vine/android/AbstractRecordingActivity$9;
move-object/from16 v0, p0
move/from16 v1, v21
invoke-direct {v4, v0, v1}, Lco/vine/android/AbstractRecordingActivity$9;-><init>(Lco/vine/android/AbstractRecordingActivity;Z)V
invoke-virtual {v2, v4}, Landroid/support/v4/view/DraftViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v17, Landroid/view/animation/AnimationSet;
const/4 v2, 0x1
move-object/from16 v0, v17
invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V
sget-object v2, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->EXPAND_HEIGHT:Lco/vine/android/util/ViewUtil$ResizeAnimationType;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskTop:Landroid/view/View;
move/from16 v0, v28
invoke-static {v2, v4, v0}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;I)Landroid/view/animation/Animation;
move-result-object v2
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
sget-object v2, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->EXPAND_WIDTH:Lco/vine/android/util/ViewUtil$ResizeAnimationType;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskLeft:Landroid/view/View;
move-object/from16 v0, p0
iget v5, v0, Lco/vine/android/AbstractRecordingActivity;->mSideMaskWidth:I
invoke-static {v2, v4, v5}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;I)Landroid/view/animation/Animation;
move-result-object v2
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
sget-object v2, Lco/vine/android/util/ViewUtil$ResizeAnimationType;->EXPAND_WIDTH:Lco/vine/android/util/ViewUtil$ResizeAnimationType;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftMaskRight:Landroid/view/View;
move-object/from16 v0, p0
iget v5, v0, Lco/vine/android/AbstractRecordingActivity;->mSideMaskWidth:I
invoke-static {v2, v4, v5}, Lco/vine/android/util/ViewUtil;->makeResizeAnimation(Lco/vine/android/util/ViewUtil$ResizeAnimationType;Landroid/view/View;I)Landroid/view/animation/Animation;
move-result-object v2
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v2, Lco/vine/android/AbstractRecordingActivity$10;
move-object/from16 v0, p0
move/from16 v1, v21
invoke-direct {v2, v0, v1}, Lco/vine/android/AbstractRecordingActivity$10;-><init>(Lco/vine/android/AbstractRecordingActivity;Z)V
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
const-wide/16 v4, 0x12c
move-object/from16 v0, v17
invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V
invoke-direct/range {p0 .. p0}, Lco/vine/android/AbstractRecordingActivity;->setCurrentSession()Z
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mDragUpToDeleteView:Lco/vine/android/widget/DragUpToDeleteContainer;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Lco/vine/android/widget/DragUpToDeleteContainer;->setVisibility(I)V
if-nez v21, :cond_15d
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v2, v2, Lco/vine/android/RecordingFragment;
if-eqz v2, :cond_15d
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v2, Lco/vine/android/RecordingFragment;
invoke-virtual {v2}, Lco/vine/android/RecordingFragment;->getProgressView()Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_155
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getWidth()I
move-result v5
const/4 v6, 0x0
const/4 v7, 0x0
move-object/from16 v2, p0
invoke-static/range {v2 .. v7}, Lco/vine/android/util/FloatingViewUtils;->buildFloatingViewFor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;III)Landroid/graphics/Bitmap;
:cond_155
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
:cond_15d
if-eqz v21, :cond_1eb
new-instance v4, Lco/vine/android/animation/MoveResizeAnimator;
const/4 v5, 0x7
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
int-to-float v2, v2
const/high16 v8, 0x3f80
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
sub-float/2addr v8, v9
mul-float/2addr v2, v8
const/high16 v8, 0x4000
div-float/2addr v2, v8
float-to-int v8, v2
mul-int/lit8 v2, v18, 0x2
add-int v9, v24, v2
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
float-to-double v10, v2
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
float-to-double v12, v2
const/16 v14, 0x12c
const/16 v16, 0x0
move-object/from16 v15, p0
invoke-direct/range {v4 .. v16}, Lco/vine/android/animation/MoveResizeAnimator;-><init>(ILandroid/view/View;Landroid/view/View;IIDDILco/vine/android/animation/SmoothAnimator$AnimationListener;Ljava/lang/Object;)V
invoke-virtual {v4}, Lco/vine/android/animation/MoveResizeAnimator;->start()V
:goto_197
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
move-object/from16 v0, v17
invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:goto_1a0
return-void
:cond_1a1
if-eqz v21, :cond_c1
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/widget/RelativeLayout$LayoutParams;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
move-object/from16 v0, v22
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
move-object/from16 v0, v22
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
move/from16 v0, v24
move-object/from16 v1, v22
iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
const/4 v2, 0x0
move-object/from16 v0, v22
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
move-object/from16 v0, v22
invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:try_end_1dd
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_1dd} :catch_1df
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1dd} :catch_258
goto/16 :goto_c1
:catch_1df
move-exception v20
const-string v2, "Error refresh reloading drafts."
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
move-object/from16 v0, v20
invoke-static {v0, v2, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1a0
:try_start_1eb
:cond_1eb
new-instance v4, Lco/vine/android/animation/MoveResizeAnimator;
const/4 v5, 0x6
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
int-to-float v2, v2
const/high16 v8, 0x3f80
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
sub-float/2addr v8, v9
mul-float/2addr v2, v8
const/high16 v8, 0x4000
div-float/2addr v2, v8
float-to-int v8, v2
add-int v9, v24, v18
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
float-to-double v10, v2
const-wide/high16 v12, 0x3fe0
const/16 v14, 0x12c
const/16 v16, 0x0
move-object/from16 v15, p0
invoke-direct/range {v4 .. v16}, Lco/vine/android/animation/MoveResizeAnimator;-><init>(ILandroid/view/View;Landroid/view/View;IIDDILco/vine/android/animation/SmoothAnimator$AnimationListener;Ljava/lang/Object;)V
invoke-virtual {v4}, Lco/vine/android/animation/MoveResizeAnimator;->start()V
new-instance v4, Lco/vine/android/animation/MoveResizeAnimator;
const/4 v5, 0x5
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/AbstractRecordingActivity;->mLargeThumbnailOverlay:Landroid/widget/ImageView;
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/AbstractRecordingActivity;->mLargeThumbnailOverlay:Landroid/widget/ImageView;
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
iget v2, v2, Landroid/graphics/Point;->x:I
int-to-float v2, v2
const/high16 v8, 0x3f80
move-object/from16 v0, p0
iget v9, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
sub-float/2addr v8, v9
mul-float/2addr v2, v8
const/high16 v8, 0x4000
div-float/2addr v2, v8
float-to-int v8, v2
mul-int/lit8 v2, v18, 0x2
add-int v9, v24, v2
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
float-to-double v10, v2
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/AbstractRecordingActivity;->mPreviewRatio:F
float-to-double v12, v2
const/16 v14, 0x12c
const/16 v16, 0x0
move-object/from16 v15, p0
invoke-direct/range {v4 .. v16}, Lco/vine/android/animation/MoveResizeAnimator;-><init>(ILandroid/view/View;Landroid/view/View;IIDDILco/vine/android/animation/SmoothAnimator$AnimationListener;Ljava/lang/Object;)V
invoke-virtual {v4}, Lco/vine/android/animation/MoveResizeAnimator;->start()V
:try_end_256
.catch Ljava/io/IOException; {:try_start_1eb .. :try_end_256} :catch_1df
.catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_256} :catch_258
goto/16 :goto_197
:catch_258
move-exception v20
const-string v2, "Error showing reloading drafts."
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
move-object/from16 v0, v20
invoke-static {v0, v2, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_1a0
.end method
.method public showUnSavedChangesDialog(ILco/vine/android/RecordingFragment;)V
.registers 5
invoke-static {p1}, Lco/vine/android/widgets/PromptDialogFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogFragment;
move-result-object v0
iput-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
invoke-virtual {p2}, Lco/vine/android/RecordingFragment;->isSavedSession()Z
move-result v0
if-eqz v0, :cond_2e
const v0, 0x7f0e01b8
:goto_11
invoke-virtual {v1, v0}, Lco/vine/android/widgets/PromptDialogFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogFragment;
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
const v1, 0x7f0e01b5
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogFragment;
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
const v1, 0x7f0e00bb
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogFragment;
:try_start_24
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mPromptDialog:Lco/vine/android/widgets/PromptDialogFragment;
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V
:try_end_2d
.catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_2d} :catch_32
:goto_2d
return-void
:cond_2e
const v0, 0x7f0e01b7
goto :goto_11
:catch_32
move-exception v0
goto :goto_2d
.end method
.method public startConversationOnFinish()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mStartConversation:Z
return v0
.end method
.method public startRelativeTime()Z
.registers 2
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->startRelativeTime()Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public swapFolder(Ljava/lang/String;Ljava/io/File;)V
.registers 5
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v1, v1, Lco/vine/android/RecordingFragment;
if-eqz v1, :cond_13
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->isResuming()Z
move-result v1
if-nez v1, :cond_13
invoke-virtual {v0, p1, p2}, Lco/vine/android/RecordingFragment;->swapFolder(Ljava/lang/String;Ljava/io/File;)V
:cond_13
return-void
.end method
.method public toPreview(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V
.registers 16
const-string v0, "From {} to preview fragment: {} {}"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
const/4 v2, 0x2
aput-object p3, v1, v2
invoke-static {v0, v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
iget v1, p0, Lco/vine/android/AbstractRecordingActivity;->mRegularUiMode:I
invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
:try_start_1e
iget-object v0, p2, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v10
invoke-static {p0, v10}, Lco/vine/android/util/UploadManager;->getReferenceCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v7
if-eqz v7, :cond_41
invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_41
const-string v0, "User have edited the vine already, discard until new one comes in."
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/AbstractRecordingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_41
if-eqz v7, :cond_46
invoke-interface {v7}, Landroid/database/Cursor;->close()V
:try_end_46
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_46} :catch_98
:goto_46
:cond_46
invoke-static {}, Lco/vine/android/util/BuildUtil;->isIsHwEncodingEnabled()Z
move-result v0
if-eqz v0, :cond_9f
new-instance v0, Lco/vine/android/AbstractRecordingActivity$11;
invoke-direct {v0, p0, p4, p2, p3}, Lco/vine/android/AbstractRecordingActivity$11;-><init>(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)V
iput-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mAddToUploadThread:Ljava/lang/Thread;
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mAddToUploadThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:cond_58
:goto_58
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_63
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onPause()V
:cond_63
invoke-static {}, Lco/vine/android/util/BuildUtil;->isIsHwEncodingEnabled()Z
move-result v0
if-eqz v0, :cond_c4
invoke-virtual {p0, p2, p3}, Lco/vine/android/AbstractRecordingActivity;->createRecordingPreviewFragmentHw(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)Lco/vine/android/RecordingPreviewFragment;
move-result-object v9
:goto_6d
invoke-virtual {v9, p2}, Lco/vine/android/RecordingPreviewFragment;->setFinalFile(Lco/vine/android/recorder/RecordingFile;)V
const/4 v0, 0x1
iput v0, p0, Lco/vine/android/AbstractRecordingActivity;->mStep:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity;->mHasPreviewedAlready:Z
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
const v1, 0x7f0a0102
invoke-virtual {v0, v1, v9}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lco/vine/android/RecordingFragment;
if-eqz v0, :cond_95
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
check-cast v0, Lco/vine/android/RecordingFragment;
invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->release()V
:cond_95
iput-object v9, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
return-void
:catch_98
move-exception v8
const-string v0, "Failed to delete previous vines."
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_46
:cond_9f
invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z
move-result v0
if-eqz v0, :cond_58
:try_start_a9
iget-object v0, p2, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
iget-boolean v4, p0, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z
iget-wide v5, p0, Lco/vine/android/AbstractRecordingActivity;->mConversationRowId:J
move-object v0, p0
move-object v1, p2
move-object v2, p3
invoke-static/range {v0 .. v6}, Lco/vine/android/util/UploadManager;->addToUploadQueue(Landroid/content/Context;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mUploadFile:Ljava/lang/String;
:try_end_bc
.catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_bc} :catch_bd
goto :goto_58
:catch_bd
move-exception v8
new-instance v0, Ljava/lang/RuntimeException;
invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v0
:cond_c4
invoke-virtual {p0, p2, p3}, Lco/vine/android/AbstractRecordingActivity;->createRecordingPreviewFragmentSw(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)Lco/vine/android/RecordingPreviewFragment;
move-result-object v9
goto :goto_6d
.end method
.method public toRecord(ZZLco/vine/android/recorder/RecordingFile;)V
.registers 14
const v9, 0x7f0a0102
const/4 v4, 0x1
const/4 v5, 0x0
iput v5, p0, Lco/vine/android/AbstractRecordingActivity;->mStep:I
iput-boolean v5, p0, Lco/vine/android/AbstractRecordingActivity;->mFirstPageSet:Z
const/4 v6, -0x1
invoke-virtual {p0, v6}, Lco/vine/android/AbstractRecordingActivity;->onPageSelected(I)V
if-eqz p3, :cond_a9
move v2, v4
:goto_10
const-string v6, "To recording fragment: {} {} {}"
const/4 v7, 0x3
new-array v7, v7, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
aput-object v8, v7, v5
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
aput-object v8, v7, v4
const/4 v8, 0x2
if-eqz p3, :cond_25
move v5, v4
:cond_25
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v7, v8
invoke-static {v6, v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v2, :cond_33
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->discardUpload()V
:cond_33
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->createRecordingFragment()Lco/vine/android/RecordingFragment;
move-result-object v1
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v5, "arg_top_overlay"
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mTopOverlay:Landroid/graphics/Bitmap;
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v5, "screen_size"
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mScreenSize:Landroid/graphics/Point;
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v5, "is_messaging"
iget-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v5, "is_vm_onboarding"
iget-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity;->mIsVmOnboarding:Z
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v5, "recipient_username"
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity;->mRecipientUsername:Ljava/lang/String;
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v5
const-string v6, "profile_background"
sget v7, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v5
iput v5, p0, Lco/vine/android/AbstractRecordingActivity;->mColor:I
const-string v5, "color"
iget v6, p0, Lco/vine/android/AbstractRecordingActivity;->mColor:I
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v1, v0}, Lco/vine/android/RecordingFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {v1, p3}, Lco/vine/android/RecordingFragment;->setFileFileToUse(Lco/vine/android/recorder/RecordingFile;)V
invoke-virtual {v1, p2}, Lco/vine/android/RecordingFragment;->setStartWithEdit(Z)V
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
if-eqz p1, :cond_ac
invoke-virtual {v3, v9, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
:goto_8a
invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
iput-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getWindow()Landroid/view/Window;
move-result-object v5
invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I
move-result v5
iput v5, p0, Lco/vine/android/AbstractRecordingActivity;->mRegularUiMode:I
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->getWindow()Landroid/view/Window;
move-result-object v5
invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v5
invoke-virtual {v5, v4}, Landroid/view/View;->setSystemUiVisibility(I)V
return-void
:cond_a9
move v2, v5
goto/16 :goto_10
:cond_ac
invoke-virtual {v3, v9, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
goto :goto_8a
.end method
.method public viewDestroyFinished()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
return-void
.end method
.method public viewDropped(I)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-gtz p1, :cond_17
move v0, v1
:goto_5
if-eqz v0, :cond_19
iget v3, p0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
iget-object v4, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
move-result v4
if-eq v3, v4, :cond_19
iput-boolean v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDeleteWasDrag:Z
invoke-virtual {p0}, Lco/vine/android/AbstractRecordingActivity;->showDeleteDialog()V
:goto_16
return v0
:cond_17
move v0, v2
goto :goto_5
:cond_19
iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V
goto :goto_16
.end method
.method public viewLanded()V
.registers 1
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->showCurrentFragment()V
return-void
.end method
.method public viewMoved(I)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-gez p1, :cond_18
move v0, v1
:goto_5
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
iget-object v4, p0, Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getHeight()I
move-result v4
if-ge p1, v4, :cond_1a
:goto_14
invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V
return v0
:cond_18
move v0, v2
goto :goto_5
:cond_1a
move v1, v2
goto :goto_14
.end method
.method public viewPickedUp()V
.registers 1
invoke-direct {p0}, Lco/vine/android/AbstractRecordingActivity;->hideCurrentFragment()V
return-void
.end method