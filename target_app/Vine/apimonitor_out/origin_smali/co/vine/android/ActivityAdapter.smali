.class public Lco/vine/android/ActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lco/vine/android/widget/PinnedHeaderAdapter;


# static fields
.field private static final BLUR_MULTIPLE:I = 0x2

.field public static final NUM_VIEW_TYPES:I = 0x4

.field private static final SPAN_FLAGS:I = 0x21

.field public static final VIEW_TYPE_ACTIVITY:I = 0x0

.field public static final VIEW_TYPE_FOLLOW_REQUEST:I = 0x2

.field public static final VIEW_TYPE_MILESTONE:I = 0x1

.field public static final VIEW_TYPE_USER_LIST_COUNT:I = 0x3


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mAvatarClicker:Landroid/view/View$OnClickListener;

.field private final mBold:Lco/vine/android/widget/TypefacesSpan;

.field private final mContext:Landroid/content/Context;

.field private mFollowRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mFollowRequestsString:Ljava/lang/String;

.field private mFriendships:Lco/vine/android/Friendships;

.field private mLastNewIndex:I

.field private final mListView:Landroid/widget/ListView;

.field private mListener:Lco/vine/android/widget/SpanClickListener;

.field private final mNewActivityString:Ljava/lang/String;

.field private mNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEverydayNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mOlderActivityString:Ljava/lang/String;

.field private final mPinnedHeaderHeight:I

.field private mPinnedHeaderSection:I

.field private mPostClicker:Landroid/view/View$OnClickListener;

.field private final mProfileImageSize:I

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldReloadHeaderBecauseDataChanged:Z

.field private final mSpanColor:I

.field private mUserListClicker:Landroid/view/View$OnClickListener;

.field private mViewClickListener:Landroid/view/View$OnClickListener;

.field private mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/widget/ActivityViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVineGreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;Landroid/view/View$OnClickListener;)V
    .registers 12

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v1, Lco/vine/android/Friendships;

    invoke-direct {v1}, Lco/vine/android/Friendships;-><init>()V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mFriendships:Lco/vine/android/Friendships;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mNotifications:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    iput v2, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mSections:Ljava/util/ArrayList;

    iput v2, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderSection:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/ActivityAdapter;->mShouldReloadHeaderBecauseDataChanged:Z

    new-instance v1, Lco/vine/android/ActivityAdapter$1;

    invoke-direct {v1, p0}, Lco/vine/android/ActivityAdapter$1;-><init>(Lco/vine/android/ActivityAdapter;)V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mPostClicker:Landroid/view/View$OnClickListener;

    new-instance v1, Lco/vine/android/ActivityAdapter$2;

    invoke-direct {v1, p0}, Lco/vine/android/ActivityAdapter$2;-><init>(Lco/vine/android/ActivityAdapter;)V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mAvatarClicker:Landroid/view/View$OnClickListener;

    new-instance v1, Lco/vine/android/ActivityAdapter$3;

    invoke-direct {v1, p0}, Lco/vine/android/ActivityAdapter$3;-><init>(Lco/vine/android/ActivityAdapter;)V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mUserListClicker:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lco/vine/android/ActivityAdapter;->mListView:Landroid/widget/ListView;

    iput-object p3, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    iput-object p4, p0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    iput-object p5, p0, Lco/vine/android/ActivityAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mFollowRequestsString:Ljava/lang/String;

    const v1, 0x7f0e014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mNewActivityString:Ljava/lang/String;

    const v1, 0x7f0e0164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mOlderActivityString:Ljava/lang/String;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lco/vine/android/ActivityAdapter;->mVineGreen:I

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lco/vine/android/ActivityAdapter;->mSpanColor:I

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lco/vine/android/ActivityAdapter;->mProfileImageSize:I

    new-instance v1, Lco/vine/android/widget/TypefacesSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lco/vine/android/ActivityAdapter;->mBold:Lco/vine/android/widget/TypefacesSpan;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ActivityAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindBodyText(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineNotification;)V
    .registers 22

    move-object/from16 v0, p2

    iget-object v2, v0, Lco/vine/android/api/VineNotification;->comment:Ljava/lang/String;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v13, v0, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    if-eqz v13, :cond_3d

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v13, v0, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_1e
    move-object/from16 v0, p2

    iget-object v13, v0, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_3d

    new-instance v14, Lco/vine/android/api/VineEntity;

    move-object/from16 v0, p2

    iget-object v13, v0, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/api/VineEntity;

    invoke-direct {v14, v13}, Lco/vine/android/api/VineEntity;-><init>(Lco/vine/android/api/VineEntity;)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_3d
    if-eqz v6, :cond_114

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_114

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v6, v3, v13, v14}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;IZ)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_52
    :goto_52
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineEntity;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lco/vine/android/api/VineEntity;->isUserType()Z

    move-result v13

    if-eqz v13, :cond_99

    new-instance v12, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v13, 0x1

    iget-wide v14, v7, Lco/vine/android/api/VineEntity;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v12, v13, v14, v15}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    :cond_75
    :goto_75
    if-eqz v12, :cond_52

    :try_start_77
    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/ActivityAdapter;->mSpanColor:I

    invoke-virtual {v12, v13}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    iget v13, v7, Lco/vine/android/api/VineEntity;->start:I

    iget v14, v7, Lco/vine/android/api/VineEntity;->end:I

    const/16 v15, 0x21

    invoke-static {v3, v12, v13, v14, v15}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ActivityAdapter;->mBold:Lco/vine/android/widget/TypefacesSpan;

    iget v14, v7, Lco/vine/android/api/VineEntity;->start:I

    iget v15, v7, Lco/vine/android/api/VineEntity;->end:I

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-static {v3, v13, v14, v15, v0}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    :try_end_96
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_77 .. :try_end_96} :catch_97

    goto :goto_52

    :catch_97
    move-exception v13

    goto :goto_52

    :cond_99
    invoke-virtual {v7}, Lco/vine/android/api/VineEntity;->isTagType()Z

    move-result v13

    if-eqz v13, :cond_ac

    new-instance v12, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v13, 0x3

    iget-object v14, v7, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v12, v13, v14, v15}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    goto :goto_75

    :cond_ac
    invoke-virtual {v7}, Lco/vine/android/api/VineEntity;->isUserListType()Z

    move-result v13

    if-eqz v13, :cond_dd

    new-instance v12, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v14, 0x4

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lco/vine/android/api/VineNotification;->notificationId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v13

    const/16 v16, 0x1

    move-object/from16 v13, p2

    check-cast v13, Lco/vine/android/api/VineEverydayNotification;

    iget-wide v0, v13, Lco/vine/android/api/VineEverydayNotification;->anchor:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v15, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v12, v14, v15, v13}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    goto :goto_75

    :cond_dd
    invoke-virtual {v7}, Lco/vine/android/api/VineEntity;->isCommentListType()Z

    move-result v13

    if-eqz v13, :cond_75

    invoke-virtual {v7}, Lco/vine/android/api/VineEntity;->getPostId()J

    move-result-wide v10

    new-instance v12, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v13, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v12, v13, v14, v15}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    goto :goto_75

    :cond_f6
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/widget/ActivityViewHolder;->dateLine:Landroid/widget/TextView;

    if-eqz v13, :cond_111

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lco/vine/android/api/VineNotification;->createdAt:J

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/widget/ActivityViewHolder;->dateLine:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_111
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_114
    return-void
.end method

.method private bindFollowRequest(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineSingleNotification;)V
    .registers 10

    const/4 v6, 0x0

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View tag is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-wide v0, p2, Lco/vine/android/api/VineSingleNotification;->userId:J

    iput-wide v0, p1, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    iput v6, p1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    iget-object v2, p1, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    iget-object v3, p2, Lco/vine/android/api/VineSingleNotification;->avatarUrl:Ljava/lang/String;

    iget-wide v4, p2, Lco/vine/android/api/VineSingleNotification;->userId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lco/vine/android/ActivityAdapter;->setAvatar(Lco/vine/android/widget/ActivityViewHolder;Landroid/widget/ImageView;Ljava/lang/String;J)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    iget-wide v1, p2, Lco/vine/android/api/VineSingleNotification;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mAvatarClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1, p2}, Lco/vine/android/ActivityAdapter;->bindBodyText(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineNotification;)V

    return-void
.end method

.method private bindGroupNotification(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineEverydayNotification;)V
    .registers 13

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p2, Lco/vine/android/api/VineEverydayNotification;->notificationId:J

    iput-wide v0, p1, Lco/vine/android/widget/ActivityViewHolder;->notificationId:J

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->user:Lco/vine/android/api/VineUser;

    if-eqz v7, :cond_35

    iget-wide v0, v7, Lco/vine/android/api/VineUser;->userId:J

    iput-wide v0, p1, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    iput v8, p1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    iget-object v2, p1, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    iget-object v3, v7, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    iget-wide v4, v7, Lco/vine/android/api/VineUser;->userId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lco/vine/android/ActivityAdapter;->setAvatar(Lco/vine/android/widget/ActivityViewHolder;Landroid/widget/ImageView;Ljava/lang/String;J)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    iget-wide v1, v7, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mAvatarClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_35
    const-string v0, "twitter friend joined"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "address book friend joined"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_49
    iget-object v0, p2, Lco/vine/android/api/VineEverydayNotification;->entities:Ljava/util/ArrayList;

    if-eqz v0, :cond_5b

    iget-object v0, p2, Lco/vine/android/api/VineEverydayNotification;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineEntity;

    iget-wide v0, v0, Lco/vine/android/api/VineEntity;->id:J

    iput-wide v0, p1, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    iput v8, p1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    :cond_5b
    iget-object v0, p2, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;

    if-eqz v0, :cond_122

    iget-object v0, p2, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    iput-wide v0, p1, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    const/4 v0, 0x1

    iput v0, p1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-wide v1, p1, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mPostClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lco/vine/android/util/image/ImageKey;

    iget-object v0, p2, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;

    iget-object v0, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-direct {v6, v0, v8}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V

    iput-object v6, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnailImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1, v6}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :goto_95
    const-string v0, "followed"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "follow approved"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "address book friend joined"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    :cond_b3
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_c0
    const-string v0, "followed"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    const-string v0, "twitter friend joined"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    const-string v0, "address book friend joined"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    :cond_de
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->followButton:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->followButton:Landroid/view/View;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v7, :cond_11e

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v1, v7, Lco/vine/android/api/VineUser;->userId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/Friendships;->contains(J)Z

    move-result v0

    if-nez v0, :cond_103

    invoke-virtual {v7}, Lco/vine/android/api/VineUser;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_103

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v1, v7, Lco/vine/android/api/VineUser;->userId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/Friendships;->addFollowing(J)V

    :cond_103
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->followButton:Landroid/view/View;

    iget-wide v1, v7, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-wide v0, v7, Lco/vine/android/api/VineUser;->userId:J

    invoke-virtual {p0, v0, v1}, Lco/vine/android/ActivityAdapter;->isFollowing(J)Z

    move-result v0

    if-eqz v0, :cond_1d0

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->followButton:Landroid/view/View;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_11e
    :goto_11e
    invoke-direct {p0, p1, p2}, Lco/vine/android/ActivityAdapter;->bindBodyText(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineNotification;)V

    return-void

    :cond_122
    const-string v0, "follow approved"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_95

    :cond_133
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_95

    :cond_13b
    const-string v0, "mentioned comment"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    const-string v0, "commented"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    const-string v0, "grouped comment"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    const-string v0, "mentioned post"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    const-string v0, "mentioned"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    :cond_16d
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c0

    :cond_17c
    const-string v0, "liked"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c0

    :cond_195
    const-string v0, "reposted"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c0

    :cond_1ae
    const-string v0, "twitter friend joined"

    iget-object v1, p2, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c0

    :cond_1c7
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v8, p1, Lco/vine/android/widget/ActivityViewHolder;->clickable:Z

    goto/16 :goto_c0

    :cond_1d0
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->followButton:Landroid/view/View;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_11e

    :cond_1da
    iget-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->followButton:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11e
.end method

.method private bindHeader(Lco/vine/android/widget/ActivityViewHolder;I)V
    .registers 8

    const/16 v4, 0x8

    iget-object v3, p1, Lco/vine/android/widget/ActivityViewHolder;->headerView:Landroid/view/View;

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_2d

    invoke-virtual {p0, p2}, Lco/vine/android/ActivityAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lco/vine/android/ActivityAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne p2, v1, :cond_27

    iget-object v3, p1, Lco/vine/android/widget/ActivityViewHolder;->headerView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p1, Lco/vine/android/widget/ActivityViewHolder;->headerText:Landroid/widget/TextView;

    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v3, p1, Lco/vine/android/widget/ActivityViewHolder;->headerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26

    :cond_2d
    iget-object v3, p1, Lco/vine/android/widget/ActivityViewHolder;->headerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26
.end method

.method private bindMilestone(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineEverydayNotification;)V
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    if-eqz v7, :cond_cf

    const/4 v3, 0x0

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget-object v7, v7, Lco/vine/android/api/VineMilestone;->milestoneUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget-object v7, v7, Lco/vine/android/api/VineMilestone;->milestoneUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "user-id"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p1, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    iput v10, p1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    const/4 v3, 0x1

    :cond_3a
    :goto_3a
    new-instance v4, Lco/vine/android/util/image/ImageKey;

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget-object v7, v7, Lco/vine/android/api/VineMilestone;->backgroundImageUrl:Ljava/lang/String;

    iget-object v8, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget v8, v8, Lco/vine/android/api/VineMilestone;->blurRadius:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v4, v7, v11, v8, v11}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;ZIZ)V

    iput-object v4, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneBackgroundImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v7, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneBackground:Landroid/widget/ImageView;

    iget-object v8, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    new-instance v4, Lco/vine/android/util/image/ImageKey;

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget-object v7, v7, Lco/vine/android/api/VineMilestone;->backgroundImageUrl:Ljava/lang/String;

    iget v8, p0, Lco/vine/android/ActivityAdapter;->mProfileImageSize:I

    iget v9, p0, Lco/vine/android/ActivityAdapter;->mProfileImageSize:I

    invoke-direct {v4, v7, v8, v9, v3}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V

    iput-object v4, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneImageImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v7, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    iget-object v8, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneImageFrame:Landroid/widget/ImageView;

    if-eqz v3, :cond_e3

    const v7, 0x7f02021c

    :goto_77
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v4, Lco/vine/android/util/image/ImageKey;

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget-object v7, v7, Lco/vine/android/api/VineMilestone;->iconUrl:Ljava/lang/String;

    invoke-direct {v4, v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneIconImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v7, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    iget-object v7, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneTitle:Landroid/widget/TextView;

    iget-object v8, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget-object v8, v8, Lco/vine/android/api/VineMilestone;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    iget-wide v8, p2, Lco/vine/android/api/VineEverydayNotification;->createdAt:J

    invoke-static {v7, v8, v9, v11}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneDescription:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;

    if-eqz v7, :cond_b0

    iget-object v7, p2, Lco/vine/android/api/VineEverydayNotification;->post:Lco/vine/android/api/VinePost;

    iget-wide v7, v7, Lco/vine/android/api/VinePost;->postId:J

    iput-wide v7, p1, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    :cond_b0
    iget-object v7, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneOverlay:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v7, -0x100

    iget-object v8, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget v8, v8, Lco/vine/android/api/VineMilestone;->overlayColor:I

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v7, p1, Lco/vine/android/widget/ActivityViewHolder;->milestoneOverlay:Landroid/view/View;

    iget-object v8, p2, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    iget v8, v8, Lco/vine/android/api/VineMilestone;->overlayAlpha:F

    const v9, 0x3dcccccd

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_cf
    return-void

    :cond_d0
    const-string v7, "post"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    iput v11, p1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p1, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    const/4 v3, 0x0

    goto/16 :goto_3a

    :cond_e3
    const v7, 0x7f02021d

    goto :goto_77
.end method

.method private nextViewHasHeader(I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lco/vine/android/ActivityAdapter;->getSectionForPosition(I)I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lco/vine/android/ActivityAdapter;->getSectionForPosition(I)I

    move-result v2

    if-eq v1, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method private setAvatar(Lco/vine/android/widget/ActivityViewHolder;Landroid/widget/ImageView;Ljava/lang/String;J)V
    .registers 10

    invoke-static {p3}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;

    const/high16 v2, -0x100

    iget v3, p0, Lco/vine/android/ActivityAdapter;->mVineGreen:I

    or-int/2addr v2, v3

    invoke-static {p2, v1, v2}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V

    :goto_10
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_18
    new-instance v0, Lco/vine/android/util/image/ImageKey;

    iget v1, p0, Lco/vine/android/ActivityAdapter;->mProfileImageSize:I

    iget v2, p0, Lco/vine/android/ActivityAdapter;->mProfileImageSize:I

    const/4 v3, 0x1

    invoke-direct {v0, p3, v1, v2, v3}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V

    iput-object v0, p1, Lco/vine/android/widget/ActivityViewHolder;->avatarImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1, v0}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lco/vine/android/ActivityAdapter;->setUserImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_10
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    if-nez p2, :cond_23

    if-eqz p3, :cond_1c

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_1c
    const v0, 0xffffff

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v0, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private setUserImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-nez p2, :cond_10

    const v0, 0x7f0200f7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v0, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .registers 11

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/ActivityViewHolder;

    if-nez v1, :cond_13

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "View tag is null."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    iget-object v5, v1, Lco/vine/android/widget/ActivityViewHolder;->divider:Landroid/view/View;

    invoke-direct {p0, p2}, Lco/vine/android/ActivityAdapter;->nextViewHasHeader(I)Z

    move-result v3

    if-eqz v3, :cond_32

    const/16 v3, 0x8

    :goto_1d
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iput-wide v6, v1, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    iput-wide v6, v1, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    const/4 v3, -0x1

    iput v3, v1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    invoke-direct {p0, v1, p2}, Lco/vine/android/ActivityAdapter;->bindHeader(Lco/vine/android/widget/ActivityViewHolder;I)V

    invoke-virtual {p0, p2}, Lco/vine/android/ActivityAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_92

    :goto_31
    return-void

    :cond_32
    move v3, v4

    goto :goto_1d

    :pswitch_34
    invoke-virtual {p0, p2}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VineEverydayNotification;

    invoke-direct {p0, v1, v3}, Lco/vine/android/ActivityAdapter;->bindMilestone(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineEverydayNotification;)V

    goto :goto_31

    :pswitch_3e
    invoke-virtual {p0, p2}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VineEverydayNotification;

    invoke-direct {p0, v1, v3}, Lco/vine/android/ActivityAdapter;->bindGroupNotification(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineEverydayNotification;)V

    goto :goto_31

    :pswitch_48
    invoke-virtual {p0, p2}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VineSingleNotification;

    invoke-direct {p0, v1, v3}, Lco/vine/android/ActivityAdapter;->bindFollowRequest(Lco/vine/android/widget/ActivityViewHolder;Lco/vine/android/api/VineSingleNotification;)V

    goto :goto_31

    :pswitch_52
    invoke-virtual {p0, p2}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineEverydayNotification;

    iget-wide v5, v2, Lco/vine/android/api/VineEverydayNotification;->notificationId:J

    iput-wide v5, v1, Lco/vine/android/widget/ActivityViewHolder;->notificationId:J

    iget-object v3, v2, Lco/vine/android/api/VineEverydayNotification;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineEntity;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lco/vine/android/api/VineEntity;->isCommentListType()Z

    move-result v3

    if-eqz v3, :cond_8d

    const/4 v3, 0x3

    iput v3, v1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    invoke-virtual {v0}, Lco/vine/android/api/VineEntity;->getPostId()J

    move-result-wide v3

    iput-wide v3, v1, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    :goto_75
    iget-wide v3, v2, Lco/vine/android/api/VineEverydayNotification;->anchor:J

    iput-wide v3, v1, Lco/vine/android/widget/ActivityViewHolder;->anchor:J

    iget-object v3, v1, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    iget-object v4, v2, Lco/vine/android/api/VineEverydayNotification;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    iget-object v4, p0, Lco/vine/android/ActivityAdapter;->mUserListClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_31

    :cond_8d
    const/4 v3, 0x2

    iput v3, v1, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I

    goto :goto_75

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_34
        :pswitch_48
        :pswitch_52
    .end packed-switch
.end method

.method public follow(J)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/Friendships;->addFollowing(J)V

    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mNotifications:Ljava/util/ArrayList;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 4

    invoke-virtual {p0, p1}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineNotification;

    iget-wide v0, v0, Lco/vine/android/api/VineNotification;->notificationId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    const/4 v1, 0x2

    :goto_9
    return v1

    :cond_a
    invoke-virtual {p0, p1}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineEverydayNotification;

    iget-object v1, v0, Lco/vine/android/api/VineEverydayNotification;->milestone:Lco/vine/android/api/VineMilestone;

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_9

    :cond_16
    const-string v1, "count"

    iget-object v2, v0, Lco/vine/android/api/VineEverydayNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x3

    goto :goto_9

    :cond_22
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getPinnedHeaderHeight()I
    .registers 2

    iget v0, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderHeight:I

    return v0
.end method

.method public getPinnedHeaderStatus(I)Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v3, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderSection:I

    iget-object v6, p0, Lco/vine/android/ActivityAdapter;->mListView:Landroid/widget/ListView;

    check-cast v6, Lco/vine/android/widget/PinnedHeaderListView;

    invoke-virtual {v6, p1}, Lco/vine/android/widget/PinnedHeaderListView;->getPositionForPixelLocation(I)I

    move-result v0

    iget-object v6, p0, Lco/vine/android/ActivityAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    iget-object v9, p0, Lco/vine/android/ActivityAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    sub-int/2addr v6, v9

    add-int v4, v6, v0

    invoke-virtual {p0, v4}, Lco/vine/android/ActivityAdapter;->getSectionForPosition(I)I

    move-result v6

    iput v6, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderSection:I

    const/4 v2, 0x0

    invoke-direct {p0, v4}, Lco/vine/android/ActivityAdapter;->nextViewHasHeader(I)Z

    move-result v6

    if-eqz v6, :cond_44

    iget-object v6, p0, Lco/vine/android/ActivityAdapter;->mListView:Landroid/widget/ListView;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v9, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderHeight:I

    add-int/2addr v9, p1

    if-ge v6, v9, :cond_44

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v9, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderHeight:I

    sub-int/2addr v6, v9

    sub-int v2, v6, p1

    :cond_44
    iget v6, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderSection:I

    if-ne v3, v6, :cond_4c

    iget-boolean v6, p0, Lco/vine/android/ActivityAdapter;->mShouldReloadHeaderBecauseDataChanged:Z

    if-eqz v6, :cond_55

    :cond_4c
    move v5, v8

    :goto_4d
    iput-boolean v7, p0, Lco/vine/android/ActivityAdapter;->mShouldReloadHeaderBecauseDataChanged:Z

    new-instance v6, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;

    invoke-direct {v6, v2, v5, v8}, Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;-><init>(IZZ)V

    return-object v6

    :cond_55
    move v5, v7

    goto :goto_4d
.end method

.method public getPinnedHeaderView(Landroid/view/View;)Landroid/view/View;
    .registers 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_a

    :goto_9
    return-object v1

    :cond_a
    if-nez p1, :cond_2c

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030018

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iget v2, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderHeight:I

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    new-instance v0, Lco/vine/android/widget/ActivityViewHolder;

    invoke-direct {v0, p1}, Lco/vine/android/widget/ActivityViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ActivityViewHolder;

    iget v1, p0, Lco/vine/android/ActivityAdapter;->mPinnedHeaderSection:I

    invoke-virtual {p0, v1}, Lco/vine/android/ActivityAdapter;->getPositionForSection(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/ActivityAdapter;->bindHeader(Lco/vine/android/widget/ActivityViewHolder;I)V

    move-object v1, p1

    goto :goto_9
.end method

.method public getPositionForSection(I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_a

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_1d
    iget v1, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    if-ltz v1, :cond_26

    iget v0, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_26
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public getSectionForPosition(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_29

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_27

    :goto_25
    move v1, v0

    goto :goto_11

    :cond_27
    move v0, v1

    goto :goto_25

    :cond_29
    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_39

    move v2, v0

    :goto_32
    iget v3, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    if-ltz v3, :cond_3b

    :goto_36
    add-int v1, v2, v0

    goto :goto_11

    :cond_39
    move v2, v1

    goto :goto_32

    :cond_3b
    move v0, v1

    goto :goto_36
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mFollowRequestsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget v0, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    if-ltz v0, :cond_1f

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mNewActivityString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget v0, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    if-gez v0, :cond_2b

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    :cond_2b
    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter;->mOlderActivityString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p2, :cond_a

    invoke-virtual {p0, p1, p3}, Lco/vine/android/ActivityAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0, p1}, Lco/vine/android/ActivityAdapter;->bindView(Landroid/view/View;I)V

    return-object v0

    :cond_a
    move-object v0, p2

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public isFollowing(J)Z
    .registers 4

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/Friendships;->isFollowing(J)Z

    move-result v0

    return v0
.end method

.method public layoutPinnedHeader(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public mergeData(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEverydayNotification;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineSingleNotification;",
            ">;Z)V"
        }
    .end annotation

    if-nez p3, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/ActivityAdapter;->mNotifications:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v2}, Lco/vine/android/Friendships;->clear()V

    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    :cond_18
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineEverydayNotification;

    iget-boolean v2, v1, Lco/vine/android/api/VineEverydayNotification;->isNew:Z

    if-eqz v2, :cond_34

    iget v2, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lco/vine/android/ActivityAdapter;->mLastNewIndex:I

    :cond_34
    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_3a
    if-eqz p2, :cond_52

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineSingleNotification;

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mFollowRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_52
    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mListView:Landroid/widget/ListView;

    check-cast v2, Lco/vine/android/widget/PinnedHeaderListView;

    invoke-virtual {v2}, Lco/vine/android/widget/PinnedHeaderListView;->untrackScrollawayChild()V

    if-nez p1, :cond_5d

    if-eqz p2, :cond_60

    :cond_5d
    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->notifyDataSetChanged()V

    :cond_60
    return-void
.end method

.method public newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lco/vine/android/ActivityAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_50

    :pswitch_8
    iget-object v3, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001a

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_15
    new-instance v0, Lco/vine/android/widget/ActivityViewHolder;

    invoke-direct {v0, v2}, Lco/vine/android/widget/ActivityViewHolder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x1

    if-eq v1, v3, :cond_26

    iget-object v3, v0, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_26
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :pswitch_34
    iget-object v3, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001e

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_15

    :pswitch_42
    iget-object v3, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001b

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_15

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_34
        :pswitch_8
        :pswitch_42
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/ActivityAdapter;->mShouldReloadHeaderBecauseDataChanged:Z

    return-void
.end method

.method public setImages(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ActivityViewHolder;

    if-nez v0, :cond_23

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->avatarImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v8, :cond_3e

    iget-object v3, v0, Lco/vine/android/widget/ActivityViewHolder;->avatarImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v8

    if-eqz v8, :cond_3e

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    iget-object v9, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lco/vine/android/ActivityAdapter;->setUserImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_3e
    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->thumbnailImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v8, :cond_59

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->thumbnailImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/vine/android/util/image/UrlImage;

    if-eqz v6, :cond_59

    invoke-virtual {v6}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v8

    if-eqz v8, :cond_59

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v9, v6, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_59
    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneImageImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v8, :cond_74

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneImageImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/vine/android/util/image/UrlImage;

    if-eqz v6, :cond_74

    invoke-virtual {v6}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v8

    if-eqz v8, :cond_74

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneImage:Landroid/widget/ImageView;

    iget-object v9, v6, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_74
    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneBackgroundImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v8, :cond_8f

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneBackgroundImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_8f

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v8

    if-eqz v8, :cond_8f

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneBackground:Landroid/widget/ImageView;

    iget-object v9, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_8f
    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneIconImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v8, :cond_b

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneIconImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lco/vine/android/widget/ActivityViewHolder;->milestoneIcon:Landroid/widget/ImageView;

    iget-object v9, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    :cond_ac
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_c2
    return-void
.end method

.method public unfollow(J)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/Friendships;->removeFollowing(J)V

    invoke-virtual {p0}, Lco/vine/android/ActivityAdapter;->notifyDataSetChanged()V

    return-void
.end method
