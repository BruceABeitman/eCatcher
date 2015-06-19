.class public Lcom/pinguo/share/at/MyListView;
.super Landroid/widget/ListView;
.source "MyListView.java"
.field private static final DONE:I = 0x3
.field private static final LOADING:I = 0x4
.field private static final PULL_To_REFRESH:I = 0x1
.field private static final RATIO:I = 0x3
.field private static final REFRESHING:I = 0x2
.field private static final RELEASE_To_REFRESH:I = 0x0
.field private static final TAG:Ljava/lang/String; = "MyListView"
.field public static nowtime:J
.field private animation:Landroid/view/animation/RotateAnimation;
.field private arrowImageView:Landroid/widget/ImageView;
.field private firstItemIndex:I
.field private headContentHeight:I
.field private headView:Landroid/widget/LinearLayout;
.field private inflater:Landroid/view/LayoutInflater;
.field private isBack:Z
.field private isRecored:Z
.field private isRefreshable:Z
.field private lastUpdatedTextView:Landroid/widget/TextView;
.field private mContext:Landroid/content/Context;
.field private refreshListener:Lcom/pinguo/share/at/MyListView$OnRefreshListener;
.field private repeatRotateAnim:Landroid/view/animation/RotateAnimation;
.field private reverseAnimation:Landroid/view/animation/RotateAnimation;
.field private startY:I
.field private state:I
.field private tipsTextview:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/pinguo/share/at/MyListView;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p1}, Lcom/pinguo/share/at/MyListView;->init(Landroid/content/Context;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/at/MyListView;I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/at/MyListView;->firstItemIndex:I
return-void
.end method
.method private changeHeaderViewByState()V
.registers 5
const v3, 0x7f080065
const/4 v2, 0x0
iget v0, p0, Lcom/pinguo/share/at/MyListView;->state:I
packed-switch v0, :pswitch_data_e8
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->reverseHeadView()V
const-string/jumbo v0, "MyListView"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Invalid state:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_24
return-void
:pswitch_25
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/share/at/MyListView;->animation:Landroid/view/animation/RotateAnimation;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
const v1, 0x7f080067
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const-string/jumbo v0, "MyListView"
const-string/jumbo v1, "\u5f53\u524d\u72b6\u6001\uff0c\u677e\u5f00\u5237\u65b0"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_24
:pswitch_52
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-boolean v0, p0, Lcom/pinguo/share/at/MyListView;->isBack:Z
if-eqz v0, :cond_87
iput-boolean v2, p0, Lcom/pinguo/share/at/MyListView;->isBack:Z
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/share/at/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V
:goto_7d
const-string/jumbo v0, "MyListView"
const-string/jumbo v1, "\u5f53\u524d\u72b6\u6001\uff0c\u4e0b\u62c9\u5237\u65b0"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_24
:cond_87
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V
goto :goto_7d
:pswitch_8d
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/share/at/MyListView;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
const v1, 0x7f020036
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
const v1, 0x7f080068
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
const-string/jumbo v0, "MyListView"
const-string/jumbo v1, "\u5f53\u524d\u72b6\u6001,\u6b63\u5728\u5237\u65b0..."
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_24
:pswitch_c3
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
const v1, 0x7f020035
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->reverseHeadView()V
const-string/jumbo v0, "MyListView"
const-string/jumbo v1, "\u5f53\u524d\u72b6\u6001\uff0cdone"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_24
:pswitch_data_e8
.packed-switch 0x0
:pswitch_25
:pswitch_52
:pswitch_8d
:pswitch_c3
.end packed-switch
.end method
.method private init(Landroid/content/Context;)V
.registers 15
const/high16 v2, -0x3ccc
const/4 v1, 0x0
const/4 v12, 0x0
const/high16 v4, 0x3f00
const/4 v3, 0x1
iput-object p1, p0, Lcom/pinguo/share/at/MyListView;->mContext:Landroid/content/Context;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/share/at/MyListView;->inflater:Landroid/view/LayoutInflater;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->inflater:Landroid/view/LayoutInflater;
const v5, 0x7f030013
const/4 v6, 0x0
invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
const v5, 0x7f0a0070
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/share/at/MyListView;->arrowImageView:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
const v5, 0x7f0a0071
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/share/at/MyListView;->tipsTextview:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
const v5, 0x7f0a0072
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/share/at/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
invoke-direct {p0, v0}, Lcom/pinguo/share/at/MyListView;->measureView(Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I
move-result v0
iput v0, p0, Lcom/pinguo/share/at/MyListView;->headContentHeight:I
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
iget v5, p0, Lcom/pinguo/share/at/MyListView;->headContentHeight:I
mul-int/lit8 v5, v5, -0x1
invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
const/4 v5, 0x0
invoke-virtual {p0, v0, v5, v12}, Lcom/pinguo/share/at/MyListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
new-instance v0, Lcom/pinguo/share/at/MyListView$1;
invoke-direct {v0, p0}, Lcom/pinguo/share/at/MyListView$1;-><init>(Lcom/pinguo/share/at/MyListView;)V
invoke-virtual {p0, v0}, Lcom/pinguo/share/at/MyListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
new-instance v0, Landroid/view/animation/RotateAnimation;
move v5, v3
move v6, v4
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
iput-object v0, p0, Lcom/pinguo/share/at/MyListView;->animation:Landroid/view/animation/RotateAnimation;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->animation:Landroid/view/animation/RotateAnimation;
new-instance v5, Landroid/view/animation/LinearInterpolator;
invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->animation:Landroid/view/animation/RotateAnimation;
const-wide/16 v5, 0xfa
invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->animation:Landroid/view/animation/RotateAnimation;
invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V
new-instance v5, Landroid/view/animation/RotateAnimation;
move v6, v2
move v7, v1
move v8, v3
move v9, v4
move v10, v3
move v11, v4
invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
iput-object v5, p0, Lcom/pinguo/share/at/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;
new-instance v2, Landroid/view/animation/LinearInterpolator;
invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;
const-wide/16 v5, 0xc8
invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;
invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V
new-instance v0, Landroid/view/animation/RotateAnimation;
const/high16 v2, 0x43b4
move v5, v3
move v6, v4
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
iput-object v0, p0, Lcom/pinguo/share/at/MyListView;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;
new-instance v1, Landroid/view/animation/LinearInterpolator;
invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;
const-wide/16 v1, 0x3e8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;
invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;
invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V
const/4 v0, 0x3
iput v0, p0, Lcom/pinguo/share/at/MyListView;->state:I
iput-boolean v12, p0, Lcom/pinguo/share/at/MyListView;->isRefreshable:Z
return-void
.end method
.method private measureView(Landroid/view/View;)V
.registers 9
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
if-nez v3, :cond_e
new-instance v3, Landroid/view/ViewGroup$LayoutParams;
const/4 v4, -0x1
const/4 v5, -0x2
invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
:cond_e
iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
move-result v1
iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
if-lez v2, :cond_22
const/high16 v4, 0x4000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
:goto_1e
invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V
return-void
:cond_22
invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_1e
.end method
.method private onRefresh()V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->refreshListener:Lcom/pinguo/share/at/MyListView$OnRefreshListener;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->refreshListener:Lcom/pinguo/share/at/MyListView$OnRefreshListener;
invoke-virtual {p0}, Lcom/pinguo/share/at/MyListView;->getTag()Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Lcom/pinguo/share/at/MyListView$OnRefreshListener;->onRefresh(Ljava/lang/Object;)V
:cond_d
return-void
.end method
.method private reverseHeadView()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
iget v1, p0, Lcom/pinguo/share/at/MyListView;->headContentHeight:I
mul-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V
goto :goto_5
.end method
.method public onRefreshComplete()V
.registers 2
const/4 v0, 0x3
iput v0, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/share/at/MyListView;->setSelection(I)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 12
const/4 v9, 0x2
const/4 v8, 0x3
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v3, p0, Lcom/pinguo/share/at/MyListView;->isRefreshable:Z
if-eqz v3, :cond_5e
sget-wide v3, Lcom/pinguo/share/at/MyListView;->nowtime:J
const-wide/16 v5, 0x0
cmp-long v3, v3, v5
if-eqz v3, :cond_3a
iget-object v3, p0, Lcom/pinguo/share/at/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/pinguo/share/at/MyListView;->mContext:Landroid/content/Context;
const v6, 0x7f080066
invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v5, Ljava/util/Date;
sget-wide v6, Lcom/pinguo/share/at/MyListView;->nowtime:J
invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v5}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_3a
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v3
packed-switch v3, :pswitch_data_1e2
const-string/jumbo v3, "MyListView"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Action ignored:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->reverseHeadView()V
:goto_5e
:cond_5e
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-ne v8, v3, :cond_69
invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v3
if-nez v3, :cond_69
move v1, v2
:cond_69
:goto_69
return v1
:pswitch_6a
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-ne v9, v3, :cond_72
invoke-virtual {p0}, Lcom/pinguo/share/at/MyListView;->onRefreshComplete()V
goto :goto_5e
:cond_72
iget v3, p0, Lcom/pinguo/share/at/MyListView;->firstItemIndex:I
if-nez v3, :cond_5e
iget-boolean v3, p0, Lcom/pinguo/share/at/MyListView;->isRecored:Z
if-nez v3, :cond_5e
iput-boolean v1, p0, Lcom/pinguo/share/at/MyListView;->isRecored:Z
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v3, v3
iput v3, p0, Lcom/pinguo/share/at/MyListView;->startY:I
const-string/jumbo v3, "MyListView"
const-string/jumbo v4, "\u5728down\u65f6\u5019\u8bb0\u5f55\u5f53\u524d\u4f4d\u7f6e"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5e
:pswitch_8d
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-ne v3, v8, :cond_a2
const-string/jumbo v3, "MyListView"
const-string/jumbo v4, "\u4ec0\u4e48\u90fd\u4e0d\u505a"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->reverseHeadView()V
:goto_9d
:cond_9d
iput-boolean v2, p0, Lcom/pinguo/share/at/MyListView;->isRecored:Z
iput-boolean v2, p0, Lcom/pinguo/share/at/MyListView;->isBack:Z
goto :goto_5e
:cond_a2
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-ne v3, v1, :cond_b5
iput v8, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
const-string/jumbo v2, "MyListView"
const-string/jumbo v3, "\u7531\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_69
:cond_b5
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-nez v3, :cond_9d
iput v9, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->onRefresh()V
const-string/jumbo v3, "MyListView"
const-string/jumbo v4, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9d
:pswitch_cb
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v0, v3
iget-boolean v3, p0, Lcom/pinguo/share/at/MyListView;->isRecored:Z
if-nez v3, :cond_e5
iget v3, p0, Lcom/pinguo/share/at/MyListView;->firstItemIndex:I
if-nez v3, :cond_e5
const-string/jumbo v3, "MyListView"
const-string/jumbo v4, "\u5728move\u65f6\u5019\u8bb0\u5f55\u4e0b\u4f4d\u7f6e"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v1, p0, Lcom/pinguo/share/at/MyListView;->isRecored:Z
iput v0, p0, Lcom/pinguo/share/at/MyListView;->startY:I
:cond_e5
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-eq v3, v9, :cond_5e
iget-boolean v3, p0, Lcom/pinguo/share/at/MyListView;->isRecored:Z
if-eqz v3, :cond_5e
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
const/4 v4, 0x4
if-eq v3, v4, :cond_5e
iget-object v3, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-nez v3, :cond_1a9
invoke-virtual {p0, v2}, Lcom/pinguo/share/at/MyListView;->setSelection(I)V
iget v3, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v3, v0, v3
div-int/lit8 v3, v3, 0x3
iget v4, p0, Lcom/pinguo/share/at/MyListView;->headContentHeight:I
if-ge v3, v4, :cond_188
iget v3, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v3, v0, v3
if-lez v3, :cond_188
iput v1, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
const-string/jumbo v3, "MyListView"
const-string/jumbo v4, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u4e0b\u62c9\u5237\u65b0\u72b6\u6001"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
:goto_11c
:cond_11c
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-ne v3, v8, :cond_160
const-string/jumbo v3, "I"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p0, Lcom/pinguo/share/at/MyListView;->startY:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v5, v0, v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/share/at/MyListView;->getFirstVisiblePosition()I
move-result v3
if-nez v3, :cond_160
iget v3, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v3, v0, v3
if-lez v3, :cond_160
iput v1, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
:cond_160
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-ne v3, v1, :cond_174
iget-object v3, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
iget v4, p0, Lcom/pinguo/share/at/MyListView;->headContentHeight:I
mul-int/lit8 v4, v4, -0x1
iget v5, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v5, v0, v5
div-int/lit8 v5, v5, 0x3
add-int/2addr v4, v5
invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V
:cond_174
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-nez v3, :cond_5e
iget-object v3, p0, Lcom/pinguo/share/at/MyListView;->headView:Landroid/widget/LinearLayout;
iget v4, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v4, v0, v4
div-int/lit8 v4, v4, 0x3
iget v5, p0, Lcom/pinguo/share/at/MyListView;->headContentHeight:I
sub-int/2addr v4, v5
invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V
goto/16 :goto_5e
:cond_188
iget v3, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v3, v0, v3
if-gtz v3, :cond_19e
iput v8, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
const-string/jumbo v2, "MyListView"
const-string/jumbo v3, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_69
:cond_19e
const-string/jumbo v3, "MyListView"
const-string/jumbo v4, "\u4e0d\u7528\u8fdb\u884c\u7279\u522b\u7684\u64cd\u4f5c\uff0c\u53ea\u7528\u66f4\u65b0paddingTop\u7684\u503c\u5c31\u884c\u4e86"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_11c
:cond_1a9
iget v3, p0, Lcom/pinguo/share/at/MyListView;->state:I
if-ne v3, v1, :cond_11c
invoke-virtual {p0, v2}, Lcom/pinguo/share/at/MyListView;->setSelection(I)V
iget v3, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v3, v0, v3
div-int/lit8 v3, v3, 0x3
iget v4, p0, Lcom/pinguo/share/at/MyListView;->headContentHeight:I
if-lt v3, v4, :cond_1cc
iput v2, p0, Lcom/pinguo/share/at/MyListView;->state:I
iput-boolean v1, p0, Lcom/pinguo/share/at/MyListView;->isBack:Z
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
const-string/jumbo v3, "MyListView"
const-string/jumbo v4, "\u7531done\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u677e\u5f00\u5237\u65b0"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_11c
:cond_1cc
iget v3, p0, Lcom/pinguo/share/at/MyListView;->startY:I
sub-int v3, v0, v3
if-gtz v3, :cond_11c
iput v8, p0, Lcom/pinguo/share/at/MyListView;->state:I
invoke-direct {p0}, Lcom/pinguo/share/at/MyListView;->changeHeaderViewByState()V
const-string/jumbo v2, "MyListView"
const-string/jumbo v3, "\u7531DOne\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_69
:pswitch_data_1e2
.packed-switch 0x0
:pswitch_6a
:pswitch_8d
:pswitch_cb
.end packed-switch
.end method
.method public setAdapter(Landroid/widget/BaseAdapter;)V
.registers 6
sget-wide v0, Lcom/pinguo/share/at/MyListView;->nowtime:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/pinguo/share/at/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/share/at/MyListView;->mContext:Landroid/content/Context;
const v3, 0x7f080066
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_30
invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setonRefreshListener(Lcom/pinguo/share/at/MyListView$OnRefreshListener;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/share/at/MyListView;->refreshListener:Lcom/pinguo/share/at/MyListView$OnRefreshListener;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/share/at/MyListView;->isRefreshable:Z
return-void
.end method