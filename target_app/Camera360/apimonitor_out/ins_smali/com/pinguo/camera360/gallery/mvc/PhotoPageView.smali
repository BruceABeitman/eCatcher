.class public Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;
.super Ljava/lang/Object;
.source "PhotoPageView.java"
.field private static final TAG:Ljava/lang/String;
.field private mActivity:Lcom/pinguo/camera360/base/BaseActivity;
.field private mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
.field private mBottomBar:Landroid/widget/LinearLayout;
.field private mBtnRepalceEffect:Landroid/widget/TextView;
.field private mCompundEffect:Landroid/widget/Button;
.field private mEditable:Z
.field private mGramoPhoneview:Landroid/widget/ImageView;
.field private final mPhotoPageHandler:Landroid/os/Handler;
.field private mShare:Landroid/widget/Button;
.field private mShareListView:Lcom/pinguo/share/ui/ShareListView;
.field private mSingleDelete:Landroid/widget/Button;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/base/BaseActivity;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mEditable:Z
iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mPhotoPageHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mPhotoPageHandler:Landroid/os/Handler;
return-object v0
.end method
.method private addReplaceViewsToLayoutIfNeeded()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBottomBar:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
:cond_10
return-void
.end method
.method private restoreBottomBar()V
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShare:Landroid/widget/Button;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mSingleDelete:Landroid/widget/Button;
const v2, 0x7f0200a2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mSingleDelete:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mSingleDelete:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private showSoundView()V
.registers 3
invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V
return-void
.end method
.method public destroy()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->addReplaceViewsToLayoutIfNeeded()V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideShareList()V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->stopPlaySoundAnimation()V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideSoundView()V
return-void
.end method
.method public hideShareList()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareListView;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareListView;->hide()V
:cond_11
return-void
.end method
.method public hideSoundView()V
.registers 3
invoke-static {}, Lcom/pinguo/lib/log/GLogger;->logMethodName()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public init(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
const v1, 0x7f0a0147
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
const v1, 0x7f0a0155
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBottomBar:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
const v1, 0x7f0a0121
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
const v1, 0x7f0a0120
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShare:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
const v1, 0x7f0a0122
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mCompundEffect:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
const v1, 0x7f0a0123
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mSingleDelete:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShare:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mCompundEffect:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mCompundEffect:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method public resume()V
.registers 1
return-void
.end method
.method public setEditable(Z)V
.registers 6
const v3, 0x7f070079
const v2, 0x7f02014b
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mEditable:Z
if-nez p1, :cond_37
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mCompundEffect:Landroid/widget/Button;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:goto_28
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mCompundEffect:Landroid/widget/Button;
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mEditable:Z
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mEditable:Z
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V
return-void
:cond_37
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mCompundEffect:Landroid/widget/Button;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/base/BaseActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_28
.end method
.method public setUiType(Z)V
.registers 5
sget-object v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setUiType isCamera360 : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
if-nez p1, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShare:Landroid/widget/Button;
invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I
move-result v0
if-eqz v0, :cond_22
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->restoreBottomBar()V
:cond_22
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBottomBar:Landroid/widget/LinearLayout;
const/high16 v1, 0x4040
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/pinguo/lib/util/ViewUtils;->setViewClickable(Landroid/widget/TextView;Z)V
return-void
.end method
.method public showShareList(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
if-nez v0, :cond_1c
new-instance v0, Lcom/pinguo/share/ui/ShareListView;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
invoke-direct {v0, v1}, Lcom/pinguo/share/ui/ShareListView;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0, p1}, Lcom/pinguo/share/ui/ShareListView;->setOnClickListener(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
new-instance v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView$1;-><init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;)V
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareListView;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
:cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareListView;->initShowItems(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareListView;->show()V
return-void
.end method
.method public startPlaySoundAnimation()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/base/BaseActivity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/base/BaseActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020425
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
goto :goto_8
.end method
.method public stopPlaySoundAnimation()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mGramoPhoneview:Landroid/widget/ImageView;
const v1, 0x7f020426
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:cond_18
return-void
.end method
.method public switchShareListState(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)Z
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
if-nez v1, :cond_9
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->showShareList(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V
:goto_8
return v0
:cond_9
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v1}, Lcom/pinguo/share/ui/ShareListView;->isShowing()Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideShareList()V
const/4 v0, 0x0
goto :goto_8
:cond_16
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->showShareList(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V
goto :goto_8
.end method
.method public updateBottomByMode(IZ)V
.registers 8
const/16 v4, 0x8
sget-object v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "updateBottomByMode = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", soundPhoto:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0xe
if-ne p1, v1, :cond_4c
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mShare:Landroid/widget/Button;
invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mBtnRepalceEffect:Landroid/widget/TextView;
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mSingleDelete:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v1, -0x1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mSingleDelete:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->mSingleDelete:Landroid/widget/Button;
const v2, 0x7f020081
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
:goto_46
if-eqz p2, :cond_50
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->showSoundView()V
:goto_4b
return-void
:cond_4c
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->restoreBottomBar()V
goto :goto_46
:cond_50
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageView;->hideSoundView()V
goto :goto_4b
.end method