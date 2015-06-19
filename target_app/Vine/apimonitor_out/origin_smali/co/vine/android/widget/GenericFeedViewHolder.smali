.class public abstract Lco/vine/android/widget/GenericFeedViewHolder;
.super Ljava/lang/Object;
.source "GenericFeedViewHolder.java"


# instance fields
.field public avatarKey:Lco/vine/android/util/image/ImageKey;

.field public comment:Lco/vine/android/widget/ColorizedCircleButton;

.field public commentList:Landroid/widget/LinearLayout;

.field public commentType:I

.field public comments1:Landroid/widget/TextView;

.field public comments2:Landroid/widget/TextView;

.field public comments3:Landroid/widget/TextView;

.field public compactLikesCommentsRevinesCounts:Landroid/widget/TextView;

.field public counterPlus:Landroid/view/View;

.field public counterView:Lco/vine/android/widget/CounterView;

.field public description:Landroid/widget/TextView;

.field public divider:Landroid/view/View;

.field public hasVideoImage:Z

.field public imageListener:Lco/vine/android/player/SensitiveImageClickListener;

.field public isVideoImageLoaded:Z

.field public liked:Lco/vine/android/widget/ColorizedCircleButton;

.field public location:Landroid/widget/TextView;

.field public loopsContainer:Landroid/view/ViewGroup;

.field public loopsHintButton:Landroid/widget/Button;

.field public loopsLabel:Landroid/widget/TextView;

.field public more:Landroid/widget/ImageView;

.field public onFireView:Landroid/view/View;

.field public position:I

.field public post:Lco/vine/android/api/VinePost;

.field public postCommentsDivider:Landroid/view/View;

.field public revineLine:Landroid/widget/TextView;

.field public sensitiveTextContainer:Landroid/widget/LinearLayout;

.field public share:Lco/vine/android/widget/ColorizedCircleButton;

.field public timestamp:Landroid/widget/TextView;

.field public userImage:Landroid/widget/ImageView;

.field public username:Landroid/widget/TextView;

.field public videoImageKey:Lco/vine/android/util/image/ImageKey;

.field public videoLoadImage:Landroid/widget/ProgressBar;

.field public viewAllComments:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->username:Landroid/widget/TextView;

    const v0, 0x7f0a019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->location:Landroid/widget/TextView;

    const v0, 0x7f0a007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->timestamp:Landroid/widget/TextView;

    const v0, 0x7f0a0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->userImage:Landroid/widget/ImageView;

    const v0, 0x7f0a015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->commentList:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    const v0, 0x7f0a015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->sensitiveTextContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ColorizedCircleButton;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->liked:Lco/vine/android/widget/ColorizedCircleButton;

    const v0, 0x7f0a0151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ColorizedCircleButton;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;

    const v0, 0x7f0a0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ColorizedCircleButton;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->comment:Lco/vine/android/widget/ColorizedCircleButton;

    const v0, 0x7f0a014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->more:Landroid/widget/ImageView;

    const v0, 0x7f0a0160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->comments1:Landroid/widget/TextView;

    const v0, 0x7f0a0161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->comments2:Landroid/widget/TextView;

    const v0, 0x7f0a0162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->comments3:Landroid/widget/TextView;

    const v0, 0x7f0a0159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->compactLikesCommentsRevinesCounts:Landroid/widget/TextView;

    const v0, 0x7f0a015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->revineLine:Landroid/widget/TextView;

    const v0, 0x7f0a0157

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->loopsLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->loopsHintButton:Landroid/widget/Button;

    const v0, 0x7f0a0153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->loopsContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/CounterView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterView:Lco/vine/android/widget/CounterView;

    iget-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterView:Lco/vine/android/widget/CounterView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lco/vine/android/widget/CounterView;->setMinAnimationSeparation(J)V

    iget-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterView:Lco/vine/android/widget/CounterView;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lco/vine/android/widget/CounterView;->setMaxAnimationSeparation(J)V

    iget-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterView:Lco/vine/android/widget/CounterView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/CounterView;->setTypeFace(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterView:Lco/vine/android/widget/CounterView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/CounterView;->setTextSize(F)V

    const v0, 0x7f0a0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->onFireView:Landroid/view/View;

    const v0, 0x7f0a015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->divider:Landroid/view/View;

    const v0, 0x7f0a0156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterPlus:Landroid/view/View;

    const v0, 0x7f0a015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->postCommentsDivider:Landroid/view/View;

    const v0, 0x7f0a015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->viewAllComments:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract getViewForVideoImage()Landroid/view/View;
.end method

.method public updateCount(Lco/vine/android/api/VinePost;)V
    .registers 11

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterView:Lco/vine/android/widget/CounterView;

    iget-wide v1, p1, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v1, v2}, Lco/vine/android/util/LoopManager;->getLocalLoopCount(J)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/widget/CounterView;->adjustExtraCount(J)V

    iget-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterView:Lco/vine/android/widget/CounterView;

    iget-wide v1, p1, Lco/vine/android/api/VinePost;->loops:J

    iget-wide v3, p1, Lco/vine/android/api/VinePost;->velocity:D

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    iget-wide v5, p1, Lco/vine/android/api/VinePost;->lastRefresh:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/widget/CounterView;->setKnownCount(JDJ)J

    iget-object v1, p0, Lco/vine/android/widget/GenericFeedViewHolder;->onFireView:Landroid/view/View;

    iget-boolean v0, p1, Lco/vine/android/api/VinePost;->onFire:Z

    if-eqz v0, :cond_3b

    move v0, v7

    :goto_27
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/widget/GenericFeedViewHolder;->counterPlus:Landroid/view/View;

    iget-wide v1, p1, Lco/vine/android/api/VinePost;->created:J

    const-wide v3, 0x1458afc9808L

    cmp-long v1, v1, v3

    if-gez v1, :cond_3d

    :goto_37
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3b
    move v0, v8

    goto :goto_27

    :cond_3d
    move v7, v8

    goto :goto_37
.end method
