.class public LvStudio/Android/Camera360/activity/GuideViewFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "GuideViewFragment.java"
.field public static final NEW_USER:I = -0x1
.field public static final NORMAL_USER:I = 0x1
.field private static final TAG:Ljava/lang/String;
.field public static final UPDATE_USER:I
.field private beginInstallTime:J
.field private bgViewRoot:Landroid/widget/RelativeLayout;
.field private btnStartX1:F
.field private btnStartX2:F
.field private btnStartY1:F
.field private btnStartY2:F
.field private imageView:Landroid/view/View;
.field private mActivity:Landroid/app/Activity;
.field private mAppBindItemList:Ljava/util/List;
.field private mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
.field private mBackgroundView:Landroid/view/View;
.field private mBtnStartLay:Landroid/widget/RelativeLayout;
.field private mCurrentMegIndex:I
.field private mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
.field private mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
.field private mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
.field private mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
.field private mHandler:Landroid/os/Handler;
.field private mIsInstallDataDone:Z
.field private mIsLoadPartnerImage:Z
.field private mIsShowPartnerAd:Z
.field private mIsZH_CN:Z
.field private mMaxIndex:I
.field private mPartnerCheck:Landroid/widget/CheckBox;
.field private mPartnerImage:Landroid/widget/ImageView;
.field private mPartnerTxt:Landroid/widget/TextView;
.field private mPartnerView:Landroid/view/View;
.field private mSelectedViewPagerIndex:I
.field private mView:Landroid/view/View;
.field private mViewPager:Landroid/support/v4/view/ViewPager;
.field private oldVersionCode:I
.field private preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
.field private relativeLayoutDm:Landroid/widget/RelativeLayout;
.field private startViewRoot:Landroid/widget/RelativeLayout;
.field private textView1:Landroid/widget/TextView;
.field private textView3:Landroid/widget/TextView;
.field private userType:I
.field private versionCode:I
.method static constructor <clinit>()V
.registers 1
const-class v0, LvStudio/Android/Camera360/activity/GuideViewFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v0, -0x1
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
iput v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->versionCode:I
iput v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
iput-boolean v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
iput v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mSelectedViewPagerIndex:I
const/4 v0, 0x0
iput-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
iput-boolean v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsInstallDataDone:Z
iput v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mCurrentMegIndex:I
new-instance v0, LvStudio/Android/Camera360/activity/GuideViewFragment$1;
invoke-direct {v0, p0}, LvStudio/Android/Camera360/activity/GuideViewFragment$1;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
iput-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
iput-boolean v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsLoadPartnerImage:Z
const/4 v0, 0x3
iput v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mMaxIndex:I
new-instance v0, Lcom/pinguo/camera360/adv/AppBindModel;
invoke-direct {v0}, Lcom/pinguo/camera360/adv/AppBindModel;-><init>()V
iput-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
iput-boolean v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsShowPartnerAd:Z
const-string/jumbo v0, "GuideViewFragment"
const-string/jumbo v1, " updateAndDownload "
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AppBindModel;->updateAndDownload()V
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(LvStudio/Android/Camera360/activity/GuideViewFragment;I)V
.registers 2
iput p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mCurrentMegIndex:I
return-void
.end method
.method static synthetic access$10(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
.registers 2
iget v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
return v0
.end method
.method static synthetic access$11(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
.registers 2
iget v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mSelectedViewPagerIndex:I
return v0
.end method
.method static synthetic access$12(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
.registers 2
iget v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mMaxIndex:I
return v0
.end method
.method static synthetic access$13(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->startViewRoot:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic access$14(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method static synthetic access$15(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic access$16(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$17(LvStudio/Android/Camera360/activity/GuideViewFragment;Landroid/os/Handler;)V
.registers 2
iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$18(LvStudio/Android/Camera360/activity/GuideViewFragment;)Z
.registers 2
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->releaseGuideView()Z
move-result v0
return v0
.end method
.method static synthetic access$19(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
.registers 2
iget v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
return v0
.end method
.method static synthetic access$2(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->textView3:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$20(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
.registers 1
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->installDefaultData()V
return-void
.end method
.method static synthetic access$21(LvStudio/Android/Camera360/activity/GuideViewFragment;II)Z
.registers 4
invoke-direct {p0, p1, p2}, LvStudio/Android/Camera360/activity/GuideViewFragment;->updateAdapterData(II)Z
move-result v0
return v0
.end method
.method static synthetic access$22(LvStudio/Android/Camera360/activity/GuideViewFragment;)Z
.registers 2
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->isNeedUpdateDispatch()Z
move-result v0
return v0
.end method
.method static synthetic access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
return-object v0
.end method
.method static synthetic access$24(LvStudio/Android/Camera360/activity/GuideViewFragment;I)V
.registers 2
iput p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mSelectedViewPagerIndex:I
return-void
.end method
.method static synthetic access$25(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFirst;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
return-object v0
.end method
.method static synthetic access$26(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewSecond;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
return-object v0
.end method
.method static synthetic access$27(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic access$28(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewThird;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
return-object v0
.end method
.method static synthetic access$29(LvStudio/Android/Camera360/activity/GuideViewFragment;J)V
.registers 3
iput-wide p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->beginInstallTime:J
return-void
.end method
.method static synthetic access$3(LvStudio/Android/Camera360/activity/GuideViewFragment;Z)V
.registers 2
invoke-direct {p0, p1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->startEnterCamera(Z)V
return-void
.end method
.method static synthetic access$30(LvStudio/Android/Camera360/activity/GuideViewFragment;Z)V
.registers 2
invoke-direct {p0, p1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->readyEnterCamera(Z)V
return-void
.end method
.method static synthetic access$31(LvStudio/Android/Camera360/activity/GuideViewFragment;Z)V
.registers 2
iput-boolean p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsInstallDataDone:Z
return-void
.end method
.method static synthetic access$4(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
return-object v0
.end method
.method static synthetic access$5(LvStudio/Android/Camera360/activity/GuideViewFragment;I)V
.registers 2
iput p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
return-void
.end method
.method static synthetic access$6(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
.registers 2
iget v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->versionCode:I
return v0
.end method
.method static synthetic access$7(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
.registers 1
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->enterCamera()V
return-void
.end method
.method static synthetic access$8(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
.registers 1
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->startPlayGuide()V
return-void
.end method
.method static synthetic access$9(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
return-object v0
.end method
.method private enterCamera()V
.registers 8
const/16 v6, 0x8
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v4, 0x2
invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v4, 0x3
invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
sget-object v3, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v4, "enterCamera"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
if-eqz v3, :cond_52
iget v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mMaxIndex:I
const/4 v4, 0x4
if-ne v3, v4, :cond_52
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerCheck:Landroid/widget/CheckBox;
if-eqz v3, :cond_52
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
const-string/jumbo v4, "pref_appdownload"
invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
const-string/jumbo v4, "pref_appdownload_done"
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerCheck:Landroid/widget/CheckBox;
invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z
move-result v5
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerCheck:Landroid/widget/CheckBox;
invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z
move-result v3
if-eqz v3, :cond_7a
:goto_4f
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherPartnerAppDownLoad(I)V
:cond_52
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
if-eqz v1, :cond_64
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->startViewRoot:Landroid/widget/RelativeLayout;
if-eqz v1, :cond_64
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->startViewRoot:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:cond_64
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
if-eqz v1, :cond_6d
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z
:cond_6d
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/camera/event/ShowCameraFragmentEvent;
invoke-direct {v2}, Lcom/pinguo/camera360/camera/event/ShowCameraFragmentEvent;-><init>()V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
:cond_7a
move v1, v2
goto :goto_4f
.end method
.method private guideViewStart()V
.registers 6
const/4 v4, 0x0
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
if-eqz v1, :cond_6c
sget-object v1, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "guideViewStart mView = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v2, 0x7f0a041e
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->imageView:Landroid/view/View;
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->imageView:Landroid/view/View;
const v2, 0x7f0202b1
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v2, 0x7f0a041d
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
iput-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-boolean v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsShowPartnerAd:Z
if-eqz v1, :cond_60
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v2, 0x7f0a041c
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const v1, 0x7f020202
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->bgViewRoot:Landroid/widget/RelativeLayout;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:cond_60
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
if-eqz v1, :cond_6c
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v2, 0x6
const-wide/16 v3, 0x1f4
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_6c
return-void
.end method
.method private initViewPager()V
.registers 10
const/4 v7, 0x0
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->startInitPartnerAD()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-boolean v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
if-eqz v5, :cond_29
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
if-eqz v5, :cond_29
iget-boolean v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsLoadPartnerImage:Z
if-eqz v5, :cond_29
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_29
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-virtual {v5}, Lcom/pinguo/camera360/guide/GuideViewFifth;->getStartX1()F
move-result v5
iput v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartX1:F
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-virtual {v5}, Lcom/pinguo/camera360/guide/GuideViewFifth;->getStartX2()F
move-result v5
iput v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartX2:F
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-virtual {v5}, Lcom/pinguo/camera360/guide/GuideViewFifth;->getStartY1()F
move-result v5
iput v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartY1:F
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-virtual {v5}, Lcom/pinguo/camera360/guide/GuideViewFifth;->getStartY2()F
move-result v5
iput v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartY2:F
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
iget v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartX1:F
float-to-int v5, v5
iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iget v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartY1:F
float-to-int v5, v5
iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
iget v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartX2:F
iget v6, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartX1:F
sub-float/2addr v5, v6
float-to-int v5, v5
iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I
iget v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartY2:F
iget v6, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->btnStartY1:F
sub-float/2addr v5, v6
float-to-int v5, v5
iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-virtual {v5}, Landroid/widget/RelativeLayout;->invalidate()V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
new-instance v6, LvStudio/Android/Camera360/activity/GuideViewFragment$3;
invoke-direct {v6, p0}, LvStudio/Android/Camera360/activity/GuideViewFragment$3;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
new-instance v6, LvStudio/Android/Camera360/activity/GuideViewFragment$4;
invoke-direct {v6, p0}, LvStudio/Android/Camera360/activity/GuideViewFragment$4;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v2, LvStudio/Android/Camera360/activity/GuideViewFragment$5;
invoke-direct {v2, p0, v1}, LvStudio/Android/Camera360/activity/GuideViewFragment$5;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;Ljava/util/ArrayList;)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
new-instance v6, LvStudio/Android/Camera360/activity/GuideViewFragment$6;
invoke-direct {v6, p0}, LvStudio/Android/Camera360/activity/GuideViewFragment$6;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v5}, Lcom/pinguo/lib/util/PhoneInfo;->getScreenWidth(Landroid/app/Activity;)I
move-result v3
new-instance v4, Landroid/view/animation/TranslateAnimation;
int-to-float v5, v3
invoke-direct {v4, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
const-wide/16 v5, 0x1f4
invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
const/4 v5, 0x1
invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v5, v4}, Landroid/support/v4/view/ViewPager;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v6, 0x7
const-wide/16 v7, 0x64
invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method
.method private installDefaultData()V
.registers 4
new-instance v0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;
invoke-direct {v0, p0}, LvStudio/Android/Camera360/activity/GuideViewFragment$8;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v1
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lcom/pinguo/lib/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
return-void
.end method
.method private isNeedUpdateDispatch()Z
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v4, "pref_key_need_update_dispatch"
invoke-virtual {v3, v4, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return v1
:cond_e
iget v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
const/4 v4, -0x1
if-eq v3, v4, :cond_22
iget v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
const/16 v4, 0x19c
if-ge v3, v4, :cond_22
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v3, "pref_key_need_update_dispatch"
invoke-virtual {v2, v3, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V
goto :goto_d
:cond_22
move v1, v2
goto :goto_d
.end method
.method private readyEnterCamera(Z)V
.registers 11
const-wide/16 v7, 0x7d0
const-wide/16 v5, 0x3e8
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, 0x4
iput v1, v0, Landroid/os/Message;->what:I
if-eqz p1, :cond_22
const/4 v1, 0x0
:goto_f
iput v1, v0, Landroid/os/Message;->arg1:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-wide v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->beginInstallTime:J
sub-long/2addr v1, v3
cmp-long v1, v1, v5
if-gez v1, :cond_25
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_21
return-void
:cond_22
const/16 v1, 0x63
goto :goto_f
:cond_25
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-wide v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->beginInstallTime:J
sub-long/2addr v1, v3
cmp-long v1, v1, v7
if-gez v1, :cond_41
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-wide v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->beginInstallTime:J
sub-long/2addr v1, v3
cmp-long v1, v1, v5
if-lez v1, :cond_41
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_21
:cond_41
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const-wide/16 v2, 0x64
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_21
.end method
.method private releaseGuideView()Z
.registers 5
const/4 v0, 0x0
const/4 v3, 0x0
const-string/jumbo v1, "guide"
const-string/jumbo v2, "releaseGuideView "
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBackgroundView:Landroid/view/View;
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->imageView:Landroid/view/View;
if-eqz v1, :cond_1a
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->imageView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->imageView:Landroid/view/View;
:cond_1a
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
if-eqz v1, :cond_2f
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
:cond_2f
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
if-eqz v1, :cond_3a
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
invoke-virtual {v1}, Lcom/pinguo/camera360/guide/GuideViewFirst;->releaseImageResource()V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
:cond_3a
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerImage:Landroid/widget/ImageView;
if-eqz v1, :cond_43
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerImage:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_43
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
if-eqz v1, :cond_4e
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
invoke-virtual {v1}, Lcom/pinguo/camera360/guide/GuideViewSecond;->releaseImageResource()V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
:cond_4e
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
if-eqz v1, :cond_59
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
invoke-virtual {v1}, Lcom/pinguo/camera360/guide/GuideViewThird;->releaseImageResource()V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
:cond_59
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
if-eqz v1, :cond_65
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-virtual {v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->releaseImageResource()V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
const/4 v0, 0x1
:cond_65
return v0
.end method
.method private startEnterCamera(Z)V
.registers 6
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->relativeLayoutDm:Landroid/widget/RelativeLayout;
if-nez v1, :cond_5
:goto_4
return-void
:cond_5
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->textView1:Landroid/widget/TextView;
if-eqz v1, :cond_17
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->textView1:Landroid/widget/TextView;
const v2, 0x7f08023c
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->relativeLayoutDm:Landroid/widget/RelativeLayout;
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:cond_17
sget-object v1, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "startEnterCamera"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
if-eqz p1, :cond_31
const/4 v1, 0x5
iput v1, v0, Landroid/os/Message;->what:I
:goto_29
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const-wide/16 v2, 0x12c
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_4
:cond_31
const/16 v1, 0x8
iput v1, v0, Landroid/os/Message;->what:I
goto :goto_29
.end method
.method private startInitPartnerAD()V
.registers 11
const/4 v1, 0x0
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
if-eqz v2, :cond_4a
iget-boolean v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
if-eqz v2, :cond_4a
iget-boolean v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsLoadPartnerImage:Z
if-nez v2, :cond_4a
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/adv/AppBindModel;->getAppBindItems()Ljava/util/List;
move-result-object v2
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindItemList:Ljava/util/List;
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v6, "getAppBindItems:---------> 2"
invoke-static {v2, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v9, "mAppBindItemList: "
invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v9, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindItemList:Ljava/util/List;
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v9
invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v2, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindItemList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_d0
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/adv/AppBindModel;->getInfo()Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;
move-result-object v2
if-nez v2, :cond_4b
iput-boolean v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsLoadPartnerImage:Z
:goto_4a
:cond_4a
return-void
:cond_4b
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
iget-object v6, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v6}, Lcom/pinguo/camera360/adv/AppBindModel;->getInfo()Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;
move-result-object v6
invoke-virtual {v2, v6}, Lcom/pinguo/camera360/adv/AppBindModel;->getPoster(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_4a
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/lib/util/PhoneInfo;->getScreenWidth(Landroid/app/Activity;)I
move-result v2
int-to-float v2, v2
const/high16 v6, 0x43f0
div-float v8, v2, v6
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v9, "w: "
invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v9, " H: "
invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v9, " scale:"
invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v2, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/high16 v2, 0x4000
cmpl-float v2, v8, v2
if-lez v2, :cond_9f
const/high16 v8, 0x4000
:cond_9f
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z
move v2, v1
move v6, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v7
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerImage:Landroid/widget/ImageView;
invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerTxt:Landroid/widget/TextView;
iget-object v6, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v6}, Lcom/pinguo/camera360/adv/AppBindModel;->getInfo()Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;
move-result-object v6
iget-object v6, v6, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showText:Ljava/lang/String;
invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v2, 0x1
iput-boolean v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsLoadPartnerImage:Z
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
const/4 v1, 0x4
iput v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mMaxIndex:I
const/4 v1, 0x5
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherPartnerAppDownLoad(I)V
goto/16 :goto_4a
:cond_d0
iput-boolean v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsLoadPartnerImage:Z
sget-object v1, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v6, "mAppBindItemList.size(): "
invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindItemList:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4a
.end method
.method private startPlayGuide()V
.registers 6
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/lib/util/PhoneInfo;->getScreenWidth(Landroid/app/Activity;)I
move-result v2
int-to-float v1, v2
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/lib/util/PhoneInfo;->getScreenHeight(Landroid/app/Activity;)I
move-result v2
int-to-float v0, v2
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "w: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " h: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/pinguo/camera360/guide/GuideViewFirst;
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
iget-boolean v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
invoke-direct {v2, v3, v1, v0, v4}, Lcom/pinguo/camera360/guide/GuideViewFirst;-><init>(Landroid/content/Context;FFZ)V
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
new-instance v2, Lcom/pinguo/camera360/guide/GuideViewSecond;
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
iget-boolean v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
invoke-direct {v2, v3, v1, v0, v4}, Lcom/pinguo/camera360/guide/GuideViewSecond;-><init>(Landroid/content/Context;FFZ)V
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
new-instance v2, Lcom/pinguo/camera360/guide/GuideViewThird;
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
iget-boolean v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
invoke-direct {v2, v3, v1, v0, v4}, Lcom/pinguo/camera360/guide/GuideViewThird;-><init>(Landroid/content/Context;FFZ)V
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
new-instance v2, Lcom/pinguo/camera360/guide/GuideViewFifth;
iget-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-direct {v2, v3, v1, v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;-><init>(Landroid/content/Context;FF)V
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
if-eqz v2, :cond_e9
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v3, 0x7f0a041f
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/support/v4/view/ViewPager;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
const-string/jumbo v3, "#fffce8"
invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v3, 0x7f0a0421
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->startViewRoot:Landroid/widget/RelativeLayout;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v3, 0x7f0a0422
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->textView1:Landroid/widget/TextView;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v3, 0x7f0a0423
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->relativeLayoutDm:Landroid/widget/RelativeLayout;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v3, 0x7f0a0425
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->textView3:Landroid/widget/TextView;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v3, 0x7f0a0420
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
iget-boolean v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
if-eqz v2, :cond_e5
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
if-eqz v2, :cond_e5
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
const v3, 0x7f0a03a1
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerImage:Landroid/widget/ImageView;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
const v3, 0x7f0a03a2
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/CheckBox;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerCheck:Landroid/widget/CheckBox;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
const v3, 0x7f0a03a3
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerTxt:Landroid/widget/TextView;
:cond_e5
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->initViewPager()V
:goto_e8
return-void
:cond_e9
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v3, "mView is null"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->finish()V
goto :goto_e8
.end method
.method private updateAdapterData(II)Z
.registers 14
const/16 v10, 0x221
const/4 v8, 0x1
const/4 v9, 0x0
if-nez p1, :cond_34
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->canNotUseIDCamera()Z
move-result v1
if-nez v1, :cond_34
if-ge p2, v10, :cond_34
move v2, v8
:goto_f
if-nez p1, :cond_36
const/16 v1, 0x213
if-gt p2, v1, :cond_36
move v3, v8
:goto_16
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getFrontImageVersion()I
move-result v7
const/16 v1, 0x23
if-ge v7, v1, :cond_38
move v5, v8
:goto_23
if-nez p1, :cond_3a
if-ge p2, v10, :cond_3a
move v4, v8
:goto_28
if-nez v2, :cond_3c
if-nez v3, :cond_3c
if-nez v5, :cond_3c
if-nez v4, :cond_3c
move v6, v9
:goto_31
if-nez v6, :cond_3e
:goto_33
return v9
:cond_34
move v2, v9
goto :goto_f
:cond_36
move v3, v9
goto :goto_16
:cond_38
move v5, v9
goto :goto_23
:cond_3a
move v4, v9
goto :goto_28
:cond_3c
move v6, v8
goto :goto_31
:cond_3e
new-instance v0, LvStudio/Android/Camera360/activity/GuideViewFragment$7;
move-object v1, p0
invoke-direct/range {v0 .. v5}, LvStudio/Android/Camera360/activity/GuideViewFragment$7;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;ZZZZ)V
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v1
new-array v9, v9, [Ljava/lang/Object;
invoke-virtual {v0, v1, v9}, Lcom/pinguo/lib/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
move v9, v8
goto :goto_33
.end method
.method private writeAdapterInfo()V
.registers 8
const/16 v6, 0xb4
const/4 v5, 0x1
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_FRONT_HAS_MIRROR:Z
if-eqz v4, :cond_1b
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressMirror(Z)V
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedress(Z)V
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressDegree(I)V
invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;
move-result-object v4
invoke-virtual {v4, v6}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->setFrontDiffDegreeToCamera(I)V
:cond_1b
sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M040_FLYME_32:Z
if-eqz v4, :cond_25
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedress(Z)V
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedressDegree(I)V
:cond_25
sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_ZTE_V889D:Z
if-eqz v4, :cond_31
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackRedress(Z)V
const/16 v4, 0x10e
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackRedressDegree(I)V
:cond_31
sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_FRONT_HAVENT_EXIF:Z
if-nez v4, :cond_39
sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_FRONT_NOT_CAMERA_INFO:Z
if-eqz v4, :cond_3c
:cond_39
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFrontRedress(Z)V
:cond_3c
sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SYSTEM_BACK_HAVENT_EXIF:Z
if-eqz v4, :cond_43
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setBackRedress(Z)V
:cond_43
const/16 v4, 0x50
invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z
move-result v1
if-eqz v1, :cond_7d
sget-object v4, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSoundKeyMode(Ljava/lang/Enum;)V
:goto_50
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
iget-object v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v4}, Lcom/pinguo/lib/util/PhoneInfo;->getScreenWidth(Landroid/app/Activity;)I
move-result v3
iget-object v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v4}, Lcom/pinguo/lib/util/PhoneInfo;->getScreenHeight(Landroid/app/Activity;)I
move-result v2
iget-object v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v5, "key_set_screen_width"
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const-string/jumbo v5, "key_set_screen_height"
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commit()Z
return-void
:cond_7d
sget-object v4, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->SHOT:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSoundKeyMode(Ljava/lang/Enum;)V
goto :goto_50
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 10
const/4 v7, 0x1
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
sget-object v5, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v6, "onActivityCreated:---------> 3"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v5
iput-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->preferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const/4 v5, -0x1
iget v6, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
if-ne v5, v6, :cond_5e
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNewFlagInShop(Z)V
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->guideViewStart()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
sget-boolean v5, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z
if-eqz v5, :cond_3f
iget v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
const/16 v6, 0x1a9
if-ge v5, v6, :cond_3f
invoke-static {}, Lcom/pinguo/camera360/camera/logic/RenderManager;->instance()Lcom/pinguo/camera360/camera/logic/RenderManager;
move-result-object v6
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBackgroundView:Landroid/view/View;
check-cast v5, Landroid/view/ViewGroup;
new-instance v7, LvStudio/Android/Camera360/activity/GuideViewFragment$2;
invoke-direct {v7, p0, v3}, LvStudio/Android/Camera360/activity/GuideViewFragment$2;-><init>(LvStudio/Android/Camera360/activity/GuideViewFragment;Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)V
invoke-virtual {v6, v5, v7}, Lcom/pinguo/camera360/camera/logic/RenderManager;->startGPUCheck(Landroid/view/ViewGroup;Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;)V
:cond_3f
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->writeAdapterInfo()V
:goto_42
:cond_42
sget-object v5, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "dir:"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v7, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-virtual {v7}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_5e
iget v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
if-nez v5, :cond_42
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNeedForceRefresh(Z)V
iget-object v5, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-virtual {v5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_d3
new-instance v5, Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "shop"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v0, Ljava/io/File;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "cameraShop.json.1"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "cameraShop.json.0"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_d3
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->guideViewStart()V
goto/16 :goto_42
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + LvStudio/Android/Camera360/activity/GuideViewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AppBindModel;->getAppBindItems()Ljava/util/List;
move-result-object v0
iput-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindItemList:Ljava/util/List;
sget-object v0, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "getAppBindItems:---------> 1"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iput-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
const-string v1, " - LvStudio/Android/Camera360/activity/GuideViewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
const/4 v5, 0x0
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v3, "onCreateView:---------> 2"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string/jumbo v2, "userType"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
const-string/jumbo v2, "mIsShowPartnerAd"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsShowPartnerAd:Z
const-string/jumbo v2, "mOldVersionCode"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
const-string/jumbo v2, "mVersionCode"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->versionCode:I
invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->isZhCn()Z
move-result v2
iput-boolean v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "mIsZH_CN:---------> "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const v2, 0x7f0300b9
invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_6e
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/lib/network/NetworkUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_6e
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherCurrentNetType(Ljava/lang/String;)V
:cond_6e
iget-boolean v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsZH_CN:Z
if-eqz v2, :cond_84
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v2}, Lcom/pinguo/lib/network/NetworkUtils;->currentNetType(Landroid/content/Context;)I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_84
const v2, 0x7f030099
invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mPartnerView:Landroid/view/View;
:cond_84
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
const v3, 0x7f0a041b
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBackgroundView:Landroid/view/View;
sget-object v2, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "userType = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "oldVersionCode ="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "versionCode = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->versionCode:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mView:Landroid/view/View;
return-object v2
.end method
.method public onDestroy()V
.registers 5
const-string v1, " + LvStudio/Android/Camera360/activity/GuideViewFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
sget-object v1, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onDestroy"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
if-eqz v1, :cond_17
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:cond_17
iget v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
const/4 v2, -0x1
if-eq v1, v2, :cond_20
iget v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->userType:I
if-nez v1, :cond_28
:cond_20
invoke-direct {p0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->releaseGuideView()Z
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mAppBindModel:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/adv/AppBindModel;->clearPosters()V
:cond_28
const/4 v0, 0x1
:goto_29
const/4 v1, 0x7
if-lt v0, v1, :cond_32
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V
iput-object v3, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
const-string v1, " - LvStudio/Android/Camera360/activity/GuideViewFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_32
iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_29
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_8
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
:cond_8
const/4 v0, 0x1
return v0
.end method
.method public onPause()V
.registers 3
const-string v1, " + LvStudio/Android/Camera360/activity/GuideViewFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_38
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x7
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
:cond_38
sget-object v0, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPause"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
const-string v1, " - LvStudio/Android/Camera360/activity/GuideViewFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 5
const-string v1, " + LvStudio/Android/Camera360/activity/GuideViewFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, LvStudio/Android/Camera360/activity/GuideViewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onResume"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
iget v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mCurrentMegIndex:I
if-nez v0, :cond_1c
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x6
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_1c
iget-boolean v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsInstallDataDone:Z
if-eqz v0, :cond_24
const/4 v0, 0x1
invoke-direct {p0, v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->readyEnterCamera(Z)V
:cond_24
const-string v1, " - LvStudio/Android/Camera360/activity/GuideViewFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method