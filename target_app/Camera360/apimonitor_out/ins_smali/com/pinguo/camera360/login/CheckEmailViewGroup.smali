.class public Lcom/pinguo/camera360/login/CheckEmailViewGroup;
.super Landroid/view/ViewGroup;
.source "CheckEmailViewGroup.java"
.field public static final EYE_CLICK_RANGE_MODIFY:I = 0xa
.field public static final EYE_PADDING_RIGHT:I = 0xa
.field public static final STATE_BASE:I = 0x0
.field public static final STATE_EXCEPTION:I = 0x6
.field public static final STATE_FAIL:I = 0x4
.field public static final STATE_HIDE:I = 0x1
.field public static final STATE_PROGRESS:I = 0x3
.field public static final STATE_SHOW:I = 0x2
.field public static final STATE_SUCCESS:I = 0x5
.field private mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
.field private mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
.field private mPromptImg:Landroid/widget/ImageView;
.field private mRotationAnim:Landroid/view/animation/Animation;
.field private mState:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mState:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mState:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mState:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->init(Landroid/content/Context;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mRotationAnim:Landroid/view/animation/Animation;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mState:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
return-object v0
.end method
.method private init(Landroid/content/Context;)V
.registers 4
const v0, 0x7f040007
invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mRotationAnim:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mRotationAnim:Landroid/view/animation/Animation;
new-instance v1, Landroid/view/animation/LinearInterpolator;
invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
new-instance v0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;-><init>(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)V
iput-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
return-void
.end method
.method public cancelAllMessage()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->removeMessages(I)V
return-void
.end method
.method public changePromptIconState(I)V
.registers 3
iput p1, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mState:I
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mHandler:Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$UpateUIHandler;->sendEmptyMessage(I)Z
return-void
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V
const v0, 0x7f0a02b5
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
iput-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
const v0, 0x7f0a02b6
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
new-instance v1, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;-><init>(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 14
const/4 v7, 0x0
if-eqz p1, :cond_2b
iget-object v4, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
sub-int v5, p4, p2
sub-int v6, p5, p3
invoke-virtual {v4, v7, v7, v5, v6}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->layout(IIII)V
iget-object v4, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v1
iget-object v4, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v0
sub-int v4, p4, p2
sub-int/2addr v4, v1
add-int/lit8 v2, v4, -0xa
sub-int v4, p5, p3
sub-int/2addr v4, v0
div-int/lit8 v3, v4, 0x2
iget-object v4, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
add-int v5, v2, v1
add-int v6, v3, v0
invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V
:cond_2b
return-void
.end method
.method protected onMeasure(II)V
.registers 9
const/4 v5, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mPromptImg:Landroid/widget/ImageView;
invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->measure(II)V
iget-object v2, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-virtual {v2}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getMeasuredHeight()I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->setMeasuredDimension(II)V
return-void
.end method