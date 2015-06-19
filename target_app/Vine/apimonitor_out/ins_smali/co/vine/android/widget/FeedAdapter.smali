.class public Lco/vine/android/widget/FeedAdapter;
.super Lco/vine/android/widget/GenericTimelineAdapter;
.source "FeedAdapter.java"
.implements Lco/vine/android/player/HasVideoPlayerAdapter;
.implements Lco/vine/android/widget/PinnedHeaderAdapter;
.field private currentPlayerCount:I
.field private volatile mCurrentPlaying:I
.field private mDividerScrollAwayPadding:I
.field private final mFeedLocationPinDrawable:Landroid/graphics/drawable/Drawable;
.field private mFirstPlayed:Z
.field private final mHandler:Landroid/os/Handler;
.field private mHasFocus:Z
.field private mLastPlayer:Lco/vine/android/player/SdkVideoView;
.field private mLoopCountHandler:Landroid/os/Handler;
.field private mLoopCountThread:Landroid/os/HandlerThread;
.field private mMuted:Z
.field private mNeedReleaseOtherPlayers:Z
.field private final mPaths:Landroid/util/SparseArray;
.field private mPinnedHeaderHeight:I
.field private mPinnedHeaderListViewChildIndex:I
.field private mPinnedHeaderPosition:I
.field private mPinnedHeaderView:Landroid/view/View;
.field private final mPlayCurrentPositionRunnable:Ljava/lang/Runnable;
.field private final mPlayers:Landroid/util/SparseArray;
.field private final mPosts:Ljava/util/ArrayList;
.field private mShouldBePlaying:I
.field private final mUrlReverse:Ljava/util/HashMap;
.field private mVideoAttr:Landroid/util/AttributeSet;
.field private mWasResumed:Z
.field private maxPlayer:I
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;Lco/vine/android/LikeCache;Lco/vine/android/RevineCache;Lco/vine/android/BaseTimelineFragment;Ljava/lang/String;)V
.registers 11
const/high16 v1, -0x8000
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct/range {p0 .. p6}, Lco/vine/android/widget/GenericTimelineAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ListView;Lco/vine/android/LikeCache;Lco/vine/android/RevineCache;Lco/vine/android/BaseTimelineFragment;Ljava/lang/String;)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;
iput v1, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
iput v1, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I
const/16 v0, 0xa
iput v0, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I
iput v2, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
iput-boolean v2, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z
iput-boolean v2, p0, Lco/vine/android/widget/FeedAdapter;->mWasResumed:Z
iput-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderPosition:I
iput v2, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderHeight:I
iput-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderView:Landroid/view/View;
iput v2, p0, Lco/vine/android/widget/FeedAdapter;->mDividerScrollAwayPadding:I
iput v2, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderListViewChildIndex:I
const-string v0, "Adapter constructed, accelerated? {}"
invoke-virtual {p2}, Landroid/widget/ListView;->isHardwareAccelerated()Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
new-instance v0, Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;
invoke-direct {v0, p0}, Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;-><init>(Lco/vine/android/widget/FeedAdapter;)V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f02016d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mFeedLocationPinDrawable:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0063
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderHeight:I
new-instance v0, Landroid/widget/LinearLayout;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p5, v0, v3, v2}, Lco/vine/android/BaseTimelineFragment;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "loop-count-handler"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountThread:Landroid/os/HandlerThread;
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountThread:Landroid/os/HandlerThread;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountHandler:Landroid/os/Handler;
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b002d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mDividerScrollAwayPadding:I
return-void
.end method
.method static synthetic access$000(Lco/vine/android/widget/FeedAdapter;)I
.registers 2
iget v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
return v0
.end method
.method static synthetic access$100(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/VideoViewInterface;J)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/widget/FeedAdapter;->countedMediaPlayerStart(Lco/vine/android/player/VideoViewInterface;J)V
return-void
.end method
.method static synthetic access$1000(Lco/vine/android/widget/FeedAdapter;I)Z
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getExplicit(I)Z
move-result v0
return v0
.end method
.method static synthetic access$202(Lco/vine/android/widget/FeedAdapter;I)I
.registers 2
iput p1, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I
return p1
.end method
.method static synthetic access$300(Lco/vine/android/widget/FeedAdapter;)I
.registers 2
iget v0, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
return v0
.end method
.method static synthetic access$402(Lco/vine/android/widget/FeedAdapter;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z
return p1
.end method
.method static synthetic access$500(Lco/vine/android/widget/FeedAdapter;)Landroid/util/SparseArray;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/widget/FeedAdapter;I)Lco/vine/android/api/VinePost;
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v0
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/widget/FeedAdapter;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z
return v0
.end method
.method static synthetic access$800(Lco/vine/android/widget/FeedAdapter;)Lco/vine/android/player/SdkVideoView;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/widget/FeedAdapter;)I
.registers 2
invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->calculateCurrentPosition()I
move-result v0
return v0
.end method
.method private bindHeader(Lco/vine/android/widget/FeedViewHolder;)V
.registers 15
const/16 v12, 0x21
const/4 v11, 0x1
const/4 v10, 0x0
const/4 v9, 0x0
iget-object v1, p1, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-object v4, v1, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
iput-object v9, p1, Lco/vine/android/widget/FeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;
invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->bindAvatar(Lco/vine/android/widget/GenericFeedViewHolder;)V
if-nez v4, :cond_2f
const-string v4, ""
new-instance v5, Lco/vine/android/VineLoggingException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Invalid user name for post "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-wide v7, v1, Lco/vine/android/api/VinePost;->userId:J
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V
invoke-static {v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
:cond_2f
new-instance v2, Landroid/text/SpannableStringBuilder;
invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v6
invoke-static {v2, v5, v10, v6, v12}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
new-instance v3, Lco/vine/android/widget/StyledClickableSpan;
iget-wide v5, v1, Lco/vine/android/api/VinePost;->userId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
invoke-direct {v3, v11, v5, v6}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mProfileColor:I
invoke-virtual {v3, v5}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
invoke-static {v2, v3, v10, v5, v12}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
iget-object v5, p1, Lco/vine/android/widget/FeedViewHolder;->userImage:Landroid/widget/ImageView;
new-instance v6, Lco/vine/android/widget/FeedAdapter$8;
invoke-direct {v6, p0, v1}, Lco/vine/android/widget/FeedAdapter$8;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V
invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v5, p1, Lco/vine/android/widget/FeedViewHolder;->username:Landroid/widget/TextView;
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v5, p1, Lco/vine/android/widget/FeedViewHolder;->username:Landroid/widget/TextView;
invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
iget-wide v6, v1, Lco/vine/android/api/VinePost;->created:J
invoke-static {v5, v6, v7, v10}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/Context;JZ)Ljava/lang/String;
move-result-object v0
iget-object v5, v1, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
if-eqz v5, :cond_b0
iget-object v5, v1, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
iget-object v5, v5, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_b0
iget-object v5, p1, Lco/vine/android/widget/FeedViewHolder;->timestamp:Landroid/widget/TextView;
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mFeedLocationPinDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v5, v9, v9, v6, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
const v6, 0x7f0e00a8
invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
aput-object v0, v6, v10
iget-object v7, v1, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
iget-object v7, v7, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v11
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_a7
iget-object v5, p1, Lco/vine/android/widget/FeedViewHolder;->timestamp:Landroid/widget/TextView;
invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1, v1}, Lco/vine/android/widget/FeedViewHolder;->updateCount(Lco/vine/android/api/VinePost;)V
return-void
:cond_b0
iget-object v5, p1, Lco/vine/android/widget/FeedViewHolder;->timestamp:Landroid/widget/TextView;
invoke-virtual {v5, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto :goto_a7
.end method
.method private bindView(Lco/vine/android/widget/FeedViewHolder;)V
.registers 28
move-object/from16 v0, p1
iget-object v12, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
move-object/from16 v0, p1
iget v11, v0, Lco/vine/android/widget/FeedViewHolder;->position:I
move-object/from16 v0, p0
invoke-direct {v0, v11}, Lco/vine/android/widget/FeedAdapter;->shouldShowThumbnail(I)Z
move-result v21
if-eqz v21, :cond_39
const-string v21, "Should show thumbnail... {} {}."
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v22
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
move/from16 v23, v0
invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v23
invoke-static/range {v21 .. v23}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-virtual/range {v21 .. v22}, Landroid/widget/ProgressBar;->setVisibility(I)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
move-object/from16 v21, v0
const/16 v22, 0x8
invoke-virtual/range {v21 .. v22}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
:cond_39
const/16 v21, 0x0
move-object/from16 v0, v21
move-object/from16 v1, p1
iput-object v0, v1, Lco/vine/android/widget/FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;
invoke-virtual/range {p0 .. p1}, Lco/vine/android/widget/FeedAdapter;->bindVideoImage(Lco/vine/android/widget/GenericFeedViewHolder;)Z
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/widget/FeedAdapter;->mIconsSwitched:Z
move/from16 v21, v0
if-nez v21, :cond_54
const/16 v21, 0x1
move/from16 v0, v21
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/widget/FeedAdapter;->mIconsSwitched:Z
:cond_54
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Lco/vine/android/api/VinePost;->isExplicit()Z
move-result v21
if-eqz v21, :cond_70
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mDismissedWarnings:Ljava/util/HashSet;
move-object/from16 v21, v0
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_104
:cond_70
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->videoImage:Landroid/widget/ImageView;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_7b
iget-object v0, v12, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
move-object/from16 v21, v0
if-eqz v21, :cond_184
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->revineLine:Landroid/widget/TextView;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, v12, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget-wide v0, v0, Lco/vine/android/api/VineRepost;->userId:J
move-wide/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v21
cmp-long v21, v18, v21
if-nez v21, :cond_111
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->revineLine:Landroid/widget/TextView;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
move-object/from16 v22, v0
const v23, 0x7f0e01b1
invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_ba
iget-object v0, v12, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
move-object/from16 v21, v0
invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v21
if-nez v21, :cond_442
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->description:Landroid/widget/TextView;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, v12, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;
move-object/from16 v21, v0
if-nez v21, :cond_191
iget-object v0, v12, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
move-object/from16 v21, v0
if-eqz v21, :cond_191
new-instance v21, Ljava/util/ArrayList;
invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v21
iput-object v0, v12, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;
iget-object v0, v12, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_ec
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v21
if-eqz v21, :cond_191
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lco/vine/android/api/VineEntity;
iget-object v0, v12, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;
move-object/from16 v21, v0
invoke-virtual {v8}, Lco/vine/android/api/VineEntity;->duplicate()Lco/vine/android/api/VineEntity;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_ec
:cond_104
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->videoImage:Landroid/widget/ImageView;
move-object/from16 v21, v0
const/16 v22, 0x8
invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_7b
:cond_111
iget-object v0, v12, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget-object v0, v0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
move-object/from16 v21, v0
if-eqz v21, :cond_177
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->revineLine:Landroid/widget/TextView;
move-object/from16 v21, v0
new-instance v22, Lco/vine/android/widget/FeedAdapter$6;
move-object/from16 v0, v22
move-object/from16 v1, p0
move-wide/from16 v2, v18
invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/FeedAdapter$6;-><init>(Lco/vine/android/widget/FeedAdapter;J)V
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
move-object/from16 v21, v0
const v22, 0x7f0e01b0
const/16 v23, 0x1
move/from16 v0, v23
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v23, v0
const/16 v24, 0x0
iget-object v0, v12, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
move-object/from16 v25, v0
move-object/from16 v0, v25
iget-object v0, v0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
move-object/from16 v25, v0
aput-object v25, v23, v24
invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
new-instance v16, Landroid/text/SpannableStringBuilder;
move-object/from16 v0, v16
invoke-direct {v0, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->revineLine:Landroid/widget/TextView;
move-object/from16 v21, v0
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->revineLine:Landroid/widget/TextView;
move-object/from16 v21, v0
move-object/from16 v0, v21
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_ba
:cond_177
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->revineLine:Landroid/widget/TextView;
move-object/from16 v21, v0
const/16 v22, 0x8
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_ba
:cond_184
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->revineLine:Landroid/widget/TextView;
move-object/from16 v21, v0
const/16 v22, 0x8
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_ba
:cond_191
iget-object v13, v12, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;
iget-object v0, v12, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
move-object/from16 v21, v0
invoke-static/range {v21 .. v21}, Lco/vine/android/util/Util;->addDirectionalMarkers(Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v5
if-eqz v13, :cond_428
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->description:Landroid/widget/TextView;
move-object/from16 v21, v0
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v0, v12, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;
move-object/from16 v21, v0
if-nez v21, :cond_216
new-instance v21, Landroid/text/SpannableStringBuilder;
move-object/from16 v0, v21
invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
move-object/from16 v0, v21
iput-object v0, v12, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;
iget-object v6, v12, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;
const/16 v21, 0x0
const/16 v22, 0x0
:try_start_1c1
move/from16 v0, v21
move/from16 v1, v22
invoke-static {v13, v6, v0, v1}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;IZ)V
invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_1cc
:cond_1cc
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v21
if-eqz v21, :cond_216
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lco/vine/android/api/VineEntity;
invoke-virtual {v8}, Lco/vine/android/api/VineEntity;->isUserType()Z
move-result v21
if-eqz v21, :cond_3f1
new-instance v20, Lco/vine/android/widget/StyledClickableSpan;
const/16 v21, 0x1
iget-wide v0, v8, Lco/vine/android/api/VineEntity;->id:J
move-wide/from16 v22, v0
invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v22
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
move-object/from16 v23, v0
invoke-direct/range {v20 .. v23}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mProfileColor:I
move/from16 v21, v0
invoke-virtual/range {v20 .. v21}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
iget v0, v8, Lco/vine/android/api/VineEntity;->start:I
move/from16 v21, v0
iget v0, v8, Lco/vine/android/api/VineEntity;->end:I
move/from16 v22, v0
const/16 v23, 0x21
move-object/from16 v0, v20
move/from16 v1, v21
move/from16 v2, v22
move/from16 v3, v23
invoke-static {v6, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
:try_end_211
.catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_211} :catch_212
goto :goto_1cc
:catch_212
move-exception v7
invoke-static {v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
:cond_216
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->description:Landroid/widget/TextView;
move-object/from16 v21, v0
iget-object v0, v12, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;
move-object/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_223
invoke-static {v5}, Lco/vine/android/util/Util;->isRtlLanguage(Ljava/lang/String;)Z
move-result v21
if-eqz v21, :cond_435
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->description:Landroid/widget/TextView;
move-object/from16 v21, v0
const/16 v22, 0x5
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setGravity(I)V
:goto_234
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v11}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->imageListener:Lco/vine/android/player/SensitiveImageClickListener;
move-object/from16 v21, v0
if-eqz v21, :cond_252
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->imageListener:Lco/vine/android/player/SensitiveImageClickListener;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v11}, Lco/vine/android/player/SensitiveImageClickListener;->setPosition(I)V
:cond_252
invoke-direct/range {p0 .. p1}, Lco/vine/android/widget/FeedAdapter;->bindHeader(Lco/vine/android/widget/FeedViewHolder;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->comment:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mProfileColor:I
move/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setColor(I)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->comment:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
new-instance v22, Lco/vine/android/widget/FeedAdapter$7;
move-object/from16 v0, v22
move-object/from16 v1, p0
invoke-direct {v0, v1, v12}, Lco/vine/android/widget/FeedAdapter$7;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p1
iget-object v4, v0, Lco/vine/android/widget/FeedViewHolder;->commentList:Landroid/widget/LinearLayout;
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
move-object/from16 v21, v0
if-eqz v21, :cond_44f
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I
move-result v21
if-lez v21, :cond_44f
const/16 v17, 0x1
:goto_2a2
invoke-virtual/range {p0 .. p1}, Lco/vine/android/widget/FeedAdapter;->setStyledCompactLikesComments(Lco/vine/android/widget/GenericFeedViewHolder;)V
const/16 v21, 0x0
move/from16 v0, v21
invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
if-eqz v17, :cond_45d
iget-object v0, v12, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
move-object/from16 v21, v0
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, v21
invoke-virtual {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setStyledComments(Lco/vine/android/widget/GenericFeedViewHolder;Lco/vine/android/api/VinePagedData;)V
const/16 v21, 0x0
move/from16 v0, v21
invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget v0, v12, Lco/vine/android/api/VinePost;->commentsCount:I
move/from16 v21, v0
const/16 v22, 0x3
move/from16 v0, v21
move/from16 v1, v22
if-le v0, v1, :cond_453
const/16 v21, 0x2
move/from16 v0, v21
move-object/from16 v1, p1
iput v0, v1, Lco/vine/android/widget/FeedViewHolder;->commentType:I
:goto_2d6
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/LikeCache;->contains(J)Z
move-result v21
if-eqz v21, :cond_466
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/LikeCache;->isLike(J)Z
move-result v10
invoke-virtual {v12, v10}, Lco/vine/android/api/VinePost;->setFlagLiked(Z)V
:goto_2f7
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->liked:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mProfileColor:I
move/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setColor(I)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->liked:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v10}, Lco/vine/android/widget/ColorizedCircleButton;->setSelected(Z)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->liked:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v22
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->liked:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->more:Landroid/widget/ImageView;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->more:Landroid/widget/ImageView;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mRevineCache:Lco/vine/android/RevineCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/RevineCache;->contains(J)Z
move-result v21
if-eqz v21, :cond_48a
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mRevineCache:Lco/vine/android/RevineCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/RevineCache;->isRevined(J)Z
move-result v14
invoke-virtual {v12, v14}, Lco/vine/android/api/VinePost;->setFlagRevined(Z)V
:goto_377
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mProfileColor:I
move/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setColor(I)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v14}, Lco/vine/android/widget/ColorizedCircleButton;->setSelected(Z)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v12}, Lco/vine/android/widget/ColorizedCircleButton;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v22, v0
invoke-virtual/range {v21 .. v22}, Lco/vine/android/widget/ColorizedCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v11, v1}, Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedViewHolder;)V
move-object/from16 v0, p0
iget-boolean v0, v0, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z
move/from16 v21, v0
if-nez v21, :cond_3f0
if-nez v11, :cond_3f0
invoke-virtual {v12}, Lco/vine/android/api/VinePost;->isExplicit()Z
move-result v21
if-nez v21, :cond_3f0
const/16 v21, 0x0
move-object/from16 v0, p0
move/from16 v1, v21
invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->play(I)V
sget-boolean v21, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v21, :cond_3e8
move-object/from16 v0, p0
iget-wide v0, v0, Lco/vine/android/widget/FeedAdapter;->mStartLoadingTime:J
move-wide/from16 v21, v0
const-wide/16 v23, 0x0
cmp-long v21, v21, v23
if-lez v21, :cond_3e8
const-string v21, "Time since started loading to request 0th video to play: {}ms"
invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/FeedAdapter;->timeSinceStartLoadingTime()J
move-result-wide v22
invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v22
invoke-static/range {v21 .. v22}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:cond_3e8
const/16 v21, 0x1
move/from16 v0, v21
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z
:cond_3f0
return-void
:cond_3f1
:try_start_3f1
invoke-virtual {v8}, Lco/vine/android/api/VineEntity;->isTagType()Z
move-result v21
if-eqz v21, :cond_1cc
new-instance v20, Lco/vine/android/widget/StyledClickableSpan;
const/16 v21, 0x4
iget-object v0, v8, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
move-object/from16 v22, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
move-object/from16 v23, v0
invoke-direct/range {v20 .. v23}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mProfileColor:I
move/from16 v21, v0
invoke-virtual/range {v20 .. v21}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
iget v0, v8, Lco/vine/android/api/VineEntity;->start:I
move/from16 v21, v0
iget v0, v8, Lco/vine/android/api/VineEntity;->end:I
move/from16 v22, v0
const/16 v23, 0x21
move-object/from16 v0, v20
move/from16 v1, v21
move/from16 v2, v22
move/from16 v3, v23
invoke-static {v6, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
:try_end_426
.catch Ljava/lang/Exception; {:try_start_3f1 .. :try_end_426} :catch_212
goto/16 :goto_1cc
:cond_428
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->description:Landroid/widget/TextView;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_223
:cond_435
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->description:Landroid/widget/TextView;
move-object/from16 v21, v0
const/16 v22, 0x3
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setGravity(I)V
goto/16 :goto_234
:cond_442
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->description:Landroid/widget/TextView;
move-object/from16 v21, v0
const/16 v22, 0x8
invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_234
:cond_44f
const/16 v17, 0x0
goto/16 :goto_2a2
:cond_453
const/16 v21, 0x1
move/from16 v0, v21
move-object/from16 v1, p1
iput v0, v1, Lco/vine/android/widget/FeedViewHolder;->commentType:I
goto/16 :goto_2d6
:cond_45d
const/16 v21, 0x8
move/from16 v0, v21
invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto/16 :goto_2d6
:cond_466
invoke-virtual {v12}, Lco/vine/android/api/VinePost;->isLiked()Z
move-result v10
if-eqz v10, :cond_47b
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/LikeCache;->like(J)V
goto/16 :goto_2f7
:cond_47b
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/LikeCache;->unlike(J)V
goto/16 :goto_2f7
:cond_48a
iget-wide v0, v12, Lco/vine/android/api/VinePost;->myRepostId:J
move-wide/from16 v21, v0
const-wide/16 v23, 0x0
cmp-long v21, v21, v23
if-gtz v21, :cond_49a
invoke-virtual {v12}, Lco/vine/android/api/VinePost;->isRevined()Z
move-result v21
if-eqz v21, :cond_4bd
:cond_49a
const/4 v14, 0x1
:goto_49b
if-eqz v14, :cond_4bf
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mRevineCache:Lco/vine/android/RevineCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->myRepostId:J
move-wide/from16 v24, v0
invoke-virtual/range {v21 .. v25}, Lco/vine/android/RevineCache;->putMyRepostId(JJ)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mRevineCache:Lco/vine/android/RevineCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/RevineCache;->revine(J)V
goto/16 :goto_377
:cond_4bd
const/4 v14, 0x0
goto :goto_49b
:cond_4bf
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mRevineCache:Lco/vine/android/RevineCache;
move-object/from16 v21, v0
iget-wide v0, v12, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v22, v0
invoke-virtual/range {v21 .. v23}, Lco/vine/android/RevineCache;->unRevine(J)V
goto/16 :goto_377
.end method
.method private calculateCurrentPosition()I
.registers 16
iget-object v11, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v1
const/4 v8, 0x0
iget-object v11, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
if-eqz v11, :cond_11
iget-object v11, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
invoke-interface {v11, p0}, Lco/vine/android/ViewOffsetResolver;->getOffset(Landroid/widget/BaseAdapter;)I
move-result v8
:cond_11
sub-int/2addr v1, v8
iget-object v11, p0, Lco/vine/android/widget/FeedAdapter;->mTimelineFragment:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v11}, Lco/vine/android/BaseTimelineFragment;->getHeaderViewParents()Ljava/util/HashSet;
move-result-object v4
invoke-virtual {v4}, Ljava/util/HashSet;->size()I
move-result v11
if-lez v11, :cond_46
const/4 v7, 0x0
invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_23
:cond_23
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_38
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/view/View;
invoke-virtual {v10}, Landroid/view/View;->isShown()Z
move-result v11
if-nez v11, :cond_23
add-int/lit8 v7, v7, 0x1
goto :goto_23
:cond_38
sub-int/2addr v1, v7
const-string v11, "Try to get current First: {}, missing header count: {}"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v12
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-static {v11, v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:cond_46
invoke-virtual {p0, v1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;
move-result-object v2
if-nez v2, :cond_4e
const/4 v1, -0x1
:goto_4d
:cond_4d
return v1
:cond_4e
const/4 v3, 0x0
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v11
if-eqz v11, :cond_5f
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v11
invoke-virtual {v11}, Lco/vine/android/player/SdkVideoView;->getHeight()I
move-result v11
div-int/lit8 v3, v11, 0x2
:cond_5f
invoke-virtual {v2}, Landroid/view/View;->getBottom()I
move-result v11
int-to-float v11, v11
int-to-float v12, v3
add-float v0, v11, v12
invoke-virtual {v2}, Landroid/view/View;->getHeight()I
move-result v11
int-to-float v11, v11
int-to-float v12, v3
add-float v5, v11, v12
const/4 v11, 0x0
cmpl-float v11, v5, v11
if-nez v11, :cond_76
const/high16 v5, 0x3f80
:cond_76
div-float v9, v0, v5
const-string v11, "Current First: {}, ratio: {}"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v12
invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v13
invoke-static {v11, v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
float-to-double v11, v9
const-wide/high16 v13, 0x3fe0
cmpg-double v11, v11, v13
if-ltz v11, :cond_9d
const/4 v11, -0x1
if-ne v1, v11, :cond_a0
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getCount()I
move-result v11
add-int/lit8 v11, v11, -0x1
if-ge v1, v11, :cond_a0
add-int/lit8 v11, v1, 0x1
iget v12, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
if-eq v11, v12, :cond_a0
:cond_9d
add-int/lit8 v1, v1, 0x1
goto :goto_4d
:cond_a0
iget v11, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
if-ne v1, v11, :cond_4d
const/4 v1, -0x1
goto :goto_4d
.end method
.method private countedMediaPlayerStart(Lco/vine/android/player/VideoViewInterface;J)V
.registers 8
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->start()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;
iget v2, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
invoke-direct {v1, p0, v2, p2, p3}, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;-><init>(Lco/vine/android/widget/FeedAdapter;IJ)V
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private getExplicit(I)Z
.registers 5
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v0
if-eqz v0, :cond_1a
invoke-virtual {v0}, Lco/vine/android/api/VinePost;->isExplicit()Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mDismissedWarnings:Ljava/util/HashSet;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1a
const/4 v1, 0x1
:goto_19
return v1
:cond_1a
const/4 v1, 0x0
goto :goto_19
.end method
.method private getPost(I)Lco/vine/android/api/VinePost;
.registers 3
if-ltz p1, :cond_13
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VinePost;
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method private hasPlayerPlaying()Z
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPaused()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private initVideoView(ILco/vine/android/widget/FeedViewHolder;)V
.registers 6
iget-object v1, p2, Lco/vine/android/widget/FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
new-instance v1, Lco/vine/android/widget/FeedAdapter$1;
invoke-direct {v1, p0, p2}, Lco/vine/android/widget/FeedAdapter$1;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/widget/FeedViewHolder;)V
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V
new-instance v1, Lco/vine/android/widget/FeedAdapter$2;
invoke-direct {v1, p0, v0, p1, p2}, Lco/vine/android/widget/FeedAdapter$2;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/SdkVideoView;ILco/vine/android/widget/FeedViewHolder;)V
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V
new-instance v1, Lco/vine/android/widget/FeedAdapter$3;
invoke-direct {v1, p0, p2}, Lco/vine/android/widget/FeedAdapter$3;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/widget/FeedViewHolder;)V
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnCompletionListener(Lco/vine/android/player/VideoViewInterface$OnCompletionListener;)V
new-instance v1, Lco/vine/android/widget/FeedAdapter$4;
invoke-direct {v1, p0}, Lco/vine/android/widget/FeedAdapter$4;-><init>(Lco/vine/android/widget/FeedAdapter;)V
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setSurfaceReadyListener(Lco/vine/android/player/SdkVideoView$SurfaceReadyListener;)V
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;
invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
return-void
.end method
.method private preFetch(I)Z
.registers 11
const/4 v5, 0x1
const/4 v6, 0x0
iget-object v7, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v7
if-ge p1, v7, :cond_90
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v3
if-eqz v3, :cond_7d
iget-object v7, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v7
if-nez v7, :cond_73
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v7
invoke-virtual {p0, v7, v6}, Lco/vine/android/widget/FeedAdapter;->getRequestKey(Lco/vine/android/api/VinePost;Z)Lco/vine/android/util/video/VideoKey;
move-result-object v4
const-string v6, "Pre-fetch {}: {}"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-static {v6, v7, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
if-eqz v4, :cond_68
iget-object v6, v3, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
if-eqz v6, :cond_43
new-instance v1, Lco/vine/android/util/image/ImageKey;
iget-object v6, v3, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
invoke-direct {v1, v6}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v6, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_43
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;
invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_43
iget-object v6, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
if-eqz v6, :cond_5b
new-instance v1, Lco/vine/android/util/image/ImageKey;
iget-object v6, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
invoke-direct {v1, v6, v5}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v6, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_5b
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;
invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_5b
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v6, v4}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_69
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v6, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_68
:goto_68
return v5
:cond_69
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_68
:cond_73
const-string v6, "{} is already fetched."
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_68
:cond_7d
const-string v5, "End of list, no pre-fetching: {} {}"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getCount()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-static {v5, v7, v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
move v5, v6
goto :goto_68
:cond_90
move v5, v6
goto :goto_68
.end method
.method private refreshVideoView(ILco/vine/android/widget/FeedViewHolder;)V
.registers 9
iget-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;
move-result-object v2
check-cast v2, Landroid/view/ViewGroup;
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;
if-nez v3, :cond_14
iget-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getAttributes()Landroid/util/AttributeSet;
move-result-object v3
iput-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;
:cond_14
iget-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->suspend()V
:try_start_19
iget-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:try_end_1e
.catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1e} :catch_3a
:goto_1e
new-instance v3, Lco/vine/android/player/SdkVideoView;
iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;
invoke-direct {v3, v4, v5}, Lco/vine/android/player/SdkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
iget-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
const v4, 0x7f0a0075
invoke-virtual {v3, v4}, Lco/vine/android/player/SdkVideoView;->setId(I)V
iget-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-direct {p0, p1, p2}, Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedViewHolder;)V
return-void
:catch_3a
move-exception v0
:try_start_3b
iget-object v3, p2, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_41
goto :goto_1e
:catch_41
move-exception v1
const-string v3, "Weird things are happening."
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1e
.end method
.method private shouldShowThumbnail(I)Z
.registers 3
iget v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
if-ne v0, p1, :cond_a
invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->hasPlayerPlaying()Z
move-result v0
if-nez v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method protected createInsensitiveListener(Lco/vine/android/widget/FeedViewHolder;)V
.registers 4
iget-object v0, p1, Lco/vine/android/widget/FeedViewHolder;->sensitiveTextContainer:Landroid/widget/LinearLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p1, Lco/vine/android/widget/FeedViewHolder;->sensitiveTextContainer:Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p1, Lco/vine/android/widget/FeedViewHolder;->sensitiveTextContainer:Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V
return-void
.end method
.method protected bridge synthetic createInsensitiveListener(Lco/vine/android/widget/GenericFeedViewHolder;)V
.registers 2
check-cast p1, Lco/vine/android/widget/FeedViewHolder;
invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->createInsensitiveListener(Lco/vine/android/widget/FeedViewHolder;)V
return-void
.end method
.method protected createSensitiveLisenter(Lco/vine/android/widget/FeedViewHolder;)V
.registers 5
const/4 v2, 0x1
new-instance v0, Lco/vine/android/player/VideoSensitiveImageClickListener;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mDismissedWarnings:Ljava/util/HashSet;
invoke-direct {v0, p0, v1}, Lco/vine/android/player/VideoSensitiveImageClickListener;-><init>(Lco/vine/android/player/HasVideoPlayerAdapter;Ljava/util/HashSet;)V
iput-object v0, p1, Lco/vine/android/widget/FeedViewHolder;->imageListener:Lco/vine/android/player/SensitiveImageClickListener;
iget-object v0, p1, Lco/vine/android/widget/FeedViewHolder;->sensitiveTextContainer:Landroid/widget/LinearLayout;
iget-object v1, p1, Lco/vine/android/widget/FeedViewHolder;->imageListener:Lco/vine/android/player/SensitiveImageClickListener;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p1, Lco/vine/android/widget/FeedViewHolder;->sensitiveTextContainer:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V
iput-boolean v2, p1, Lco/vine/android/widget/FeedViewHolder;->isVideoImageLoaded:Z
return-void
.end method
.method protected bridge synthetic createSensitiveLisenter(Lco/vine/android/widget/GenericFeedViewHolder;)V
.registers 2
check-cast p1, Lco/vine/android/widget/FeedViewHolder;
invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->createSensitiveLisenter(Lco/vine/android/widget/FeedViewHolder;)V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method protected getHolderFromPosition(I)Lco/vine/android/widget/FeedViewHolder;
.registers 4
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_11
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/widget/FeedViewHolder;
:goto_10
return-object v1
:cond_11
const/4 v1, 0x0
goto :goto_10
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getLastPlayer()Lco/vine/android/player/SdkVideoView;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
return-object v0
.end method
.method public getPinnedHeaderHeight()I
.registers 2
iget v0, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderHeight:I
return v0
.end method
.method public getPinnedHeaderStatus(I)Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;
.registers 15
const/4 v10, 0x1
const/4 v11, 0x0
iget v4, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderPosition:I
iget-object v9, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
check-cast v9, Lco/vine/android/widget/PinnedHeaderListView;
invoke-virtual {v9, p1}, Lco/vine/android/widget/PinnedHeaderListView;->getPositionForPixelLocation(I)I
move-result v9
iput v9, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderListViewChildIndex:I
iget-object v9, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v9
iget-object v12, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
invoke-virtual {v12}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v12
sub-int/2addr v9, v12
iget v12, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderListViewChildIndex:I
add-int/2addr v9, v12
iput v9, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderPosition:I
iget-object v9, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
iget v12, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderListViewChildIndex:I
invoke-virtual {v9, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
const/4 v3, 0x0
const/4 v7, 0x1
if-eqz v0, :cond_6b
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/widget/FeedViewHolder;
if-eqz v2, :cond_6b
move-object v9, v0
check-cast v9, Landroid/view/ViewGroup;
invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v9
if-nez v9, :cond_7a
move v6, v10
:goto_42
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v8
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v9
iget-object v12, v2, Lco/vine/android/widget/FeedViewHolder;->divider:Landroid/view/View;
invoke-virtual {v12}, Landroid/view/View;->getTop()I
move-result v12
add-int v1, v9, v12
iget v9, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderHeight:I
add-int/2addr v9, p1
iget v12, p0, Lco/vine/android/widget/FeedAdapter;->mDividerScrollAwayPadding:I
add-int/2addr v9, v12
if-ge v1, v9, :cond_60
iget v9, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderHeight:I
sub-int v9, v1, v9
sub-int v3, v9, p1
:cond_60
if-eqz v6, :cond_6a
invoke-virtual {v5}, Landroid/view/View;->getHeight()I
move-result v9
sub-int v9, p1, v9
if-gt v8, v9, :cond_7c
:cond_6a
move v7, v10
:goto_6b
:cond_6b
new-instance v9, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;
iget-object v12, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderView:Landroid/view/View;
if-eqz v12, :cond_75
iget v12, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderPosition:I
if-eq v4, v12, :cond_76
:cond_75
move v11, v10
:cond_76
invoke-direct {v9, v3, v11, v7}, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;-><init>(IZZ)V
return-object v9
:cond_7a
move v6, v11
goto :goto_42
:cond_7c
move v7, v11
goto :goto_6b
.end method
.method public getPinnedHeaderView(Landroid/view/View;)Landroid/view/View;
.registers 6
iget-object v2, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
iget v3, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderListViewChildIndex:I
invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
if-eqz v1, :cond_1c
const v2, 0x7f0a0152
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_19
const/4 v2, -0x1
invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V
:cond_19
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPinnedHeaderView:Landroid/view/View;
:goto_1b
return-object v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public getPlayer(IZ)Lco/vine/android/player/SdkVideoView;
.registers 4
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;
invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/player/SdkVideoView;
return-object v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
if-nez p2, :cond_6
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->newView()Landroid/view/View;
move-result-object p2
:cond_6
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/widget/FeedViewHolder;
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v1
iput-object v1, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
iput p1, v0, Lco/vine/android/widget/FeedViewHolder;->position:I
iget-object v1, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
if-eqz v1, :cond_1c
invoke-direct {p0, v0}, Lco/vine/android/widget/FeedAdapter;->bindView(Lco/vine/android/widget/FeedViewHolder;)V
:goto_1b
return-object p2
:cond_1c
const-string v1, "Post null: {} {}"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1b
.end method
.method public isPlaying()Z
.registers 2
invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->hasPlayerPlaying()Z
move-result v0
return v0
.end method
.method public layoutPinnedHeader(Landroid/view/View;IIII)V
.registers 6
return-void
.end method
.method public mergeMyPost(Lco/vine/android/api/VinePost;)V
.registers 4
if-eqz p1, :cond_1d
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->notifyDataSetChanged()V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V
:cond_1d
return-void
.end method
.method public mergePost(Lco/vine/android/api/VinePost;)V
.registers 4
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public mergePosts(Ljava/util/ArrayList;Z)V
.registers 4
if-nez p2, :cond_16
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
:cond_16
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public newView()Landroid/view/View;
.registers 10
const v8, 0x7f0a0073
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v5
const v6, 0x7f030070
const/4 v7, 0x0
invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I
iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I
iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const v5, 0x7f0a012b
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I
iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I
iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v3, Lco/vine/android/widget/FeedViewHolder;
invoke-direct {v3, v4}, Lco/vine/android/widget/FeedViewHolder;-><init>(Landroid/view/View;)V
const v5, 0x7f0a0075
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Lco/vine/android/player/SdkVideoView;
iput-object v5, v3, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
new-instance v5, Lco/vine/android/player/OnListVideoClickListener;
invoke-direct {v5, p0}, Lco/vine/android/player/OnListVideoClickListener;-><init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V
iput-object v5, v3, Lco/vine/android/widget/FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;
invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
iget-object v6, v3, Lco/vine/android/widget/FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;
invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;
new-instance v6, Ljava/lang/ref/WeakReference;
invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string v5, "Get view: {}"
iget-object v6, v3, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I
move-result v6
rem-int/lit8 v6, v6, 0x64
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v6, 0xf
if-le v5, v6, :cond_8c
iget-object v5, v3, Lco/vine/android/widget/FeedViewHolder;->loopsHintButton:Landroid/widget/Button;
new-instance v6, Lco/vine/android/widget/FeedAdapter$5;
invoke-direct {v6, p0}, Lco/vine/android/widget/FeedAdapter$5;-><init>(Lco/vine/android/widget/FeedAdapter;)V
invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:cond_8c
return-object v4
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/widget/FeedAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V
invoke-virtual {p0, v1}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountHandler:Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V
iput-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mLoopCountThread:Landroid/os/HandlerThread;
const-string v1, " - Lco/vine/android/widget/FeedAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroyView()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
return-void
.end method
.method public declared-synchronized onPause(Z)V
.registers 4
const-string v1, " + Lco/vine/android/widget/FeedAdapter; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
:try_start_1
const-string v0, "OnPause {}. {}"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {v0, v1, p0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z
const/high16 v0, -0x8000
iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/widget/FeedAdapter;->resetStates(Z)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/widget/FeedAdapter;->mWasResumed:Z
:try_end_22
.catchall {:try_start_1 .. :try_end_22} :catchall_24
monitor-exit p0
const-string v1, " - Lco/vine/android/widget/FeedAdapter; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_24
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onResume(Z)V
.registers 7
const-string v1, " + Lco/vine/android/widget/FeedAdapter; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
:try_start_1
const-string v3, "OnResume {}. {}"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-static {v3, v4, p0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget-boolean v3, p0, Lco/vine/android/widget/FeedAdapter;->mWasResumed:Z
if-nez v3, :cond_1d
const/4 v3, 0x1
iput-boolean v3, p0, Lco/vine/android/widget/FeedAdapter;->mWasResumed:Z
const/high16 v3, -0x8000
iput v3, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
invoke-static {v3}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z
move-result v3
iput-boolean v3, p0, Lco/vine/android/widget/FeedAdapter;->mMuted:Z
:cond_1d
iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z
iget-boolean v3, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z
if-eqz v3, :cond_3a
invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->calculateCurrentPosition()I
move-result v0
if-lez v0, :cond_3a
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
:try_end_2e
.catchall {:try_start_1 .. :try_end_2e} :catchall_46
move-result v3
if-le v3, v0, :cond_3a
:try_start_31
invoke-virtual {p0, v0}, Lco/vine/android/widget/FeedAdapter;->getHolderFromPosition(I)Lco/vine/android/widget/FeedViewHolder;
move-result-object v2
if-eqz v2, :cond_3a
invoke-virtual {p0, v2}, Lco/vine/android/widget/FeedAdapter;->bindVideoImage(Lco/vine/android/widget/GenericFeedViewHolder;)Z
:try_end_3a
.catchall {:try_start_31 .. :try_end_3a} :catchall_46
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_3a} :catch_3f
:goto_3a
:try_start_3a
:cond_3a
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V
:try_end_3d
.catchall {:try_start_3a .. :try_end_3d} :catchall_46
monitor-exit p0
const-string v1, " - Lco/vine/android/widget/FeedAdapter; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_3f
move-exception v1
:try_start_40
const-string v3, "Race condition."
invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_45
.catchall {:try_start_40 .. :try_end_45} :catchall_46
goto :goto_3a
:catchall_46
move-exception v3
monitor-exit p0
throw v3
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/FeedAdapter; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_5
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V
:cond_5
const-string v1, " - Lco/vine/android/widget/FeedAdapter; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onVideoImageObtained(Lco/vine/android/widget/FeedViewHolder;Z)V
.registers 3
iput-boolean p2, p1, Lco/vine/android/widget/FeedViewHolder;->isVideoImageLoaded:Z
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V
return-void
.end method
.method protected bridge synthetic onVideoImageObtained(Lco/vine/android/widget/GenericFeedViewHolder;Z)V
.registers 3
check-cast p1, Lco/vine/android/widget/FeedViewHolder;
invoke-virtual {p0, p1, p2}, Lco/vine/android/widget/FeedAdapter;->onVideoImageObtained(Lco/vine/android/widget/FeedViewHolder;Z)V
return-void
.end method
.method public onVideoPathObtained(Ljava/util/HashMap;)V
.registers 8
const-string v3, "CALLBACK onVideoPathObtained"
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
:cond_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_56
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/util/video/VideoKey;
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/video/UrlVideo;
invoke-virtual {v2}, Lco/vine/android/util/video/UrlVideo;->isValid()Z
move-result v3
if-eqz v3, :cond_d
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_d
iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Integer;
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {v2}, Lco/vine/android/util/video/UrlVideo;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Integer;
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
iget v4, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I
if-ne v3, v4, :cond_d
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V
goto :goto_d
:cond_56
return-void
.end method
.method public pauseCurrentPlayer()V
.registers 3
invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->hasPlayerPlaying()Z
move-result v0
if-eqz v0, :cond_1a
const-string v0, "Pause player {}."
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->getPlayingPosition()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V
:cond_1a
return-void
.end method
.method public declared-synchronized play(I)V
.registers 10
monitor-enter p0
:try_start_1
const-string v5, "play task executing with position {} "
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-boolean v5, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z
if-eqz v5, :cond_ec
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v5
if-eqz v5, :cond_3b
add-int/lit8 v5, p1, 0x1
invoke-direct {p0, v5}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z
move-result v5
if-eqz v5, :cond_23
add-int/lit8 v5, p1, 0x2
invoke-direct {p0, v5}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z
:cond_23
const-string v5, "{} is in cache or it is already pre-fetched."
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const-string v5, "playing file at position {}"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v5, 0x1
invoke-virtual {p0, p1, v5}, Lco/vine/android/widget/FeedAdapter;->playFile(IZ)V
:cond_39
:goto_39
:try_end_39
.catchall {:try_start_1 .. :try_end_39} :catchall_55
monitor-exit p0
return-void
:try_start_3b
:cond_3b
const-string v5, "Real fetch for {}."
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v1
if-eqz v1, :cond_e3
const/4 v5, 0x0
invoke-virtual {p0, v1, v5}, Lco/vine/android/widget/FeedAdapter;->getRequestKey(Lco/vine/android/api/VinePost;Z)Lco/vine/android/util/video/VideoKey;
move-result-object v3
if-nez v3, :cond_58
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->onInvalidRequestKey()V
:try_end_54
.catchall {:try_start_3b .. :try_end_54} :catchall_55
goto :goto_39
:catchall_55
move-exception v5
monitor-exit p0
throw v5
:cond_58
:try_start_58
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v5, v3}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
move-result-object v0
add-int/lit8 v5, p1, 0x1
invoke-direct {p0, v5}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z
move-result v5
if-eqz v5, :cond_6b
add-int/lit8 v5, p1, 0x2
invoke-direct {p0, v5}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z
:cond_6b
if-eqz v0, :cond_80
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
const-string v5, "playing file at position {}"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v5, 0x1
invoke-virtual {p0, p1, v5}, Lco/vine/android/widget/FeedAdapter;->playFile(IZ)V
goto :goto_39
:cond_80
iput p1, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I
iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v5, "{} is not in app cache yet."
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->pauseCurrentPlayer()V
invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_39
invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
instance-of v5, v2, Lco/vine/android/widget/FeedViewHolder;
if-eqz v5, :cond_ae
check-cast v2, Lco/vine/android/widget/FeedViewHolder;
iget-object v5, v2, Lco/vine/android/widget/FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_39
:cond_ae
new-instance v5, Ljava/lang/IllegalStateException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Somehow tag was "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ", view class is \'"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "\'."
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-static {v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto/16 :goto_39
:cond_e3
const-string v5, "mPosts is {} or the requested position has no post object in it yet, return -1."
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
goto/16 :goto_39
:cond_ec
const-string v5, "not playing because not focused."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:try_end_f1
.catchall {:try_start_58 .. :try_end_f1} :catchall_55
goto/16 :goto_39
.end method
.method public declared-synchronized playCurrentPosition()V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0x32
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized playFile(IZ)V
.registers 13
const/4 v3, 0x1
const/4 v5, 0x0
monitor-enter p0
if-gez p1, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:try_start_7
:cond_7
const-string v6, "Playing item: {}"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;
move-result-object v1
if-nez v1, :cond_23
const-string v5, "Item is not visible: {}"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_1f
.catchall {:try_start_7 .. :try_end_1f} :catchall_20
goto :goto_5
:catchall_20
move-exception v5
monitor-exit p0
throw v5
:cond_23
:try_start_23
invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/widget/FeedViewHolder;
if-eqz v4, :cond_5
iget-object v0, v4, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
if-eq v0, v6, :cond_39
const-string v6, "Pause previous player."
invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->pauseCurrentPlayer()V
:cond_39
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
if-nez v2, :cond_49
const-string v5, "Path was cleared."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
goto :goto_5
:cond_49
iget-object v6, v4, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
if-nez v6, :cond_53
const-string v5, "Post was cleared."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
goto :goto_5
:cond_53
invoke-virtual {v0, v2}, Lco/vine/android/player/SdkVideoView;->isPathPlaying(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_df
iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
invoke-static {v6}, Lco/vine/android/util/SystemUtil;->isSinglePlayerEnabled(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_d7
invoke-static {}, Lco/vine/android/player/SdkVideoView;->getCurrentUri()Landroid/net/Uri;
move-result-object v6
if-nez v6, :cond_d5
:cond_67
:goto_67
if-nez v3, :cond_6c
invoke-direct {p0, p1, v4}, Lco/vine/android/widget/FeedAdapter;->refreshVideoView(ILco/vine/android/widget/FeedViewHolder;)V
:cond_6c
iget-object v0, v4, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
iget-boolean v5, p0, Lco/vine/android/widget/FeedAdapter;->mMuted:Z
invoke-virtual {v0, v5}, Lco/vine/android/player/SdkVideoView;->setMute(Z)V
iget-boolean v5, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z
if-eqz v5, :cond_82
iget v5, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
iget v6, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I
if-lt v5, v6, :cond_82
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {p0, v5}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
:cond_82
const-string v5, "Start playing by set path."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v5, v5, Lco/vine/android/api/VinePost;->postId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v0, v5}, Lco/vine/android/player/SdkVideoView;->setTag(Ljava/lang/Object;)V
const-string v5, "Setting video path in feed for post {}"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
iget-object v8, v4, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v8, v8, Lco/vine/android/api/VinePost;->postId:J
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {v0, v2}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isSurfaceReady()Z
move-result v5
if-nez v5, :cond_b8
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getVisibility()I
move-result v5
if-eqz v5, :cond_b8
const/4 v5, 0x0
invoke-virtual {v0, v5}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
:cond_b8
iget v5, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
:goto_be
invoke-virtual {v0, p1}, Lco/vine/android/player/SdkVideoView;->setPlayingPosition(I)V
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;
invoke-virtual {v5, p1}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->imageListener:Lco/vine/android/player/SensitiveImageClickListener;
if-eqz v5, :cond_cf
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->imageListener:Lco/vine/android/player/SensitiveImageClickListener;
invoke-virtual {v5, p1}, Lco/vine/android/player/SensitiveImageClickListener;->setPosition(I)V
:cond_cf
iput p1, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
goto/16 :goto_5
:cond_d5
move v3, v5
goto :goto_67
:cond_d7
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getPath()Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_67
move v3, v5
goto :goto_67
:cond_df
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v5}, Lco/vine/android/player/SdkVideoView;->getVisibility()I
move-result v5
if-eqz v5, :cond_ed
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
:cond_ed
iget-boolean v5, p0, Lco/vine/android/widget/FeedAdapter;->mMuted:Z
invoke-virtual {v0, v5}, Lco/vine/android/player/SdkVideoView;->setMute(Z)V
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v5
if-eqz v5, :cond_101
const-string v5, "Start playing by calling start."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V
goto :goto_be
:cond_101
const-string v5, "Start playing by set path."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
iget-object v5, v4, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v5, v5, Lco/vine/android/api/VinePost;->postId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v0, v5}, Lco/vine/android/player/SdkVideoView;->setTag(Ljava/lang/Object;)V
const-string v5, "Setting video path in feed for post {}"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
iget-object v8, v4, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v8, v8, Lco/vine/android/api/VinePost;->postId:J
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {v0, v2}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V
:try_end_127
.catchall {:try_start_23 .. :try_end_127} :catchall_20
goto :goto_be
.end method
.method public declared-synchronized releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_7
:goto_7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_39
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/widget/FeedViewHolder;
if-eqz v0, :cond_7
iget-object v3, v0, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
if-eq p1, v3, :cond_7
const-string v3, "Releasing player: {}"
iget v4, v0, Lco/vine/android/widget/FeedViewHolder;->position:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v3, v0, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->suspend()V
iget v3, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
:try_end_35
.catchall {:try_start_1 .. :try_end_35} :catchall_36
goto :goto_7
:catchall_36
move-exception v3
monitor-exit p0
throw v3
:cond_39
monitor-exit p0
return-void
.end method
.method public removePost(J)V
.registers 7
const/4 v0, 0x0
:goto_1
iget-object v2, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v0, v2, :cond_1a
invoke-direct {p0, v0}, Lco/vine/android/widget/FeedAdapter;->getPost(I)Lco/vine/android/api/VinePost;
move-result-object v1
if-eqz v1, :cond_30
iget-wide v2, v1, Lco/vine/android/api/VinePost;->postId:J
cmp-long v2, v2, p1
if-nez v2, :cond_30
iget-object v2, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:cond_1a
iget-object v2, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
iget-object v2, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
iget-object v2, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;
invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->notifyDataSetChanged()V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V
return-void
:cond_30
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method protected resetStates(Z)V
.registers 4
const/4 v1, 0x0
invoke-super {p0, p1}, Lco/vine/android/widget/GenericTimelineAdapter;->resetStates(Z)V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;
invoke-virtual {v0}, Lco/vine/android/LikeCache;->clear()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mRevineCache:Lco/vine/android/RevineCache;
invoke-virtual {v0}, Lco/vine/android/RevineCache;->clear()V
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I
iput v1, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
iput-boolean v1, p0, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z
return-void
.end method
.method public stopCurrentPlayer()V
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->suspend()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
:cond_f
return-void
.end method
.method public toggleMute(Z)V
.registers 5
iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mMuted:Z
const-string v1, "Mute state changed to muted? {}."
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v0
if-eqz v0, :cond_16
iget-boolean v1, p0, Lco/vine/android/widget/FeedAdapter;->mMuted:Z
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setMute(Z)V
:cond_16
return-void
.end method