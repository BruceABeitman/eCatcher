.class public Lcom/pinguo/camera360/camera/activity/AdsActivity;
.super Landroid/app/Activity;
.source "AdsActivity.java"
.implements Landroid/widget/TabHost$OnTabChangeListener;
.field public static final mArray:[Ljava/lang/String;
.field private static final mArray2:[Ljava/lang/String;
.field private static final mCodeArray:[Ljava/lang/String;
.field private language:Ljava/lang/String;
.field private mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
.field private mButtonArray:[Landroid/widget/Button;
.field private mImageViewArray:[Landroid/view/View;
.field private mImgArray:[Landroid/widget/ImageView;
.field private mRLArray:[Landroid/view/ViewGroup;
.field private mTitleView:Lcom/pinguo/camera360/ui/TitleView;
.field private mViewArray:[Landroid/view/View;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v4, [Ljava/lang/String;
const-string/jumbo v1, "zuixin"
aput-object v1, v0, v2
const-string/jumbo v1, "bibei"
aput-object v1, v0, v3
sput-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
new-array v0, v4, [Ljava/lang/String;
const-string/jumbo v1, "n"
aput-object v1, v0, v2
const-string/jumbo v1, "m"
aput-object v1, v0, v3
sput-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray2:[Ljava/lang/String;
new-array v0, v4, [Ljava/lang/String;
const-string/jumbo v1, "40461"
aput-object v1, v0, v2
const-string/jumbo v1, "40463"
aput-object v1, v0, v3
sput-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mCodeArray:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
sget-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
array-length v0, v0
new-array v0, v0, [Landroid/view/View;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mViewArray:[Landroid/view/View;
sget-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
array-length v0, v0
new-array v0, v0, [Landroid/view/View;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImageViewArray:[Landroid/view/View;
sget-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
array-length v0, v0
new-array v0, v0, [Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mButtonArray:[Landroid/widget/Button;
sget-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
array-length v0, v0
new-array v0, v0, [Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImgArray:[Landroid/widget/ImageView;
sget-object v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
array-length v0, v0
new-array v0, v0, [Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mRLArray:[Landroid/view/ViewGroup;
return-void
.end method
.method public back(Landroid/view/View;)V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->finish()V
return-void
.end method
.method public listviewchange(Landroid/view/View;)V
.registers 19
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v12
const/4 v7, 0x0
:goto_9
sget-object v14, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
array-length v14, v14
if-lt v7, v14, :cond_f
return-void
:cond_f
sget-object v14, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
aget-object v14, v14, v7
invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_14f
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mViewArray:[Landroid/view/View;
aget-object v14, v14, v7
invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v14
if-nez v14, :cond_11a
new-instance v2, Lcom/umeng/newxp/controller/ExchangeDataService;
const-string/jumbo v14, ""
invoke-direct {v2, v14}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>(Ljava/lang/String;)V
new-instance v10, Lcom/umeng/newxp/controller/ExchangeDataService;
sget-object v14, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mCodeArray:[Ljava/lang/String;
aget-object v14, v14, v7
invoke-direct {v10, v14}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mViewArray:[Landroid/view/View;
aget-object v13, v14, v7
check-cast v13, Landroid/widget/ListView;
const/4 v14, 0x0
sput-boolean v14, Lcom/umeng/newxp/common/ExchangeConstants;->ONLY_CHINESE:Z
new-instance v14, Ljava/lang/StringBuilder;
sget-object v15, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray2:[Ljava/lang/String;
aget-object v15, v15, v7
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->language:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v10, v14}, Lcom/umeng/newxp/controller/ExchangeDataService;->setKeywords(Ljava/lang/String;)V
const/4 v14, 0x0
iput v14, v10, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I
const/4 v14, 0x0
iput v14, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I
new-instance v14, Ljava/lang/StringBuilder;
sget-object v15, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray2:[Ljava/lang/String;
aget-object v15, v15, v7
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->language:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v2, v14}, Lcom/umeng/newxp/controller/ExchangeDataService;->setKeywords(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mViewArray:[Landroid/view/View;
aget-object v14, v14, v7
const-string/jumbo v15, "ok"
invoke-virtual {v14, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
new-instance v5, Landroid/widget/RelativeLayout;
move-object/from16 v0, p0
invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v3, Landroid/util/DisplayMetrics;
invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v14
invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v14
invoke-virtual {v14, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v14, v3, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v14, v14
const/high16 v15, 0x3ea0
mul-float/2addr v14, v15
invoke-static {v14}, Ljava/lang/Math;->round(F)I
move-result v6
new-instance v8, Landroid/widget/AbsListView$LayoutParams;
const/4 v14, -0x1
invoke-direct {v8, v14, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v14, Lcom/pinguo/camera360/camera/activity/AdsActivity$2;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Lcom/pinguo/camera360/camera/activity/AdsActivity$2;-><init>(Lcom/pinguo/camera360/camera/activity/AdsActivity;)V
iput-object v14, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
const-string/jumbo v15, "ec830992736c66df10aae7ba5381bec5"
invoke-virtual {v14, v15}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getItems(Ljava/lang/String;)Ljava/util/List;
move-result-object v9
if-eqz v9, :cond_105
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v14
if-lez v14, :cond_105
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v14
const v15, 0x7f03003b
const/16 v16, 0x0
invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/shop/view/BannerView;
new-instance v11, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
const v14, 0x400851ec
invoke-direct {v11, v14}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;-><init>(F)V
invoke-virtual {v11, v9}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->addAll(Ljava/util/Collection;)V
invoke-virtual {v1, v11}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V
new-instance v14, Lcom/pinguo/camera360/camera/activity/AdsActivity$3;
move-object/from16 v0, p0
invoke-direct {v14, v0, v11}, Lcom/pinguo/camera360/camera/activity/AdsActivity$3;-><init>(Lcom/pinguo/camera360/camera/activity/AdsActivity;Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;)V
invoke-virtual {v1, v14}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v14, Lcom/pinguo/camera360/camera/activity/AdsActivity$4;
move-object/from16 v0, p0
invoke-direct {v14, v0, v11}, Lcom/pinguo/camera360/camera/activity/AdsActivity$4;-><init>(Lcom/pinguo/camera360/camera/activity/AdsActivity;Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;)V
invoke-virtual {v1, v14}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
invoke-virtual {v13, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
:cond_105
new-instance v4, Lcom/umeng/newxp/view/ExchangeViewManager;
move-object/from16 v0, p0
invoke-direct {v4, v0, v2}, Lcom/umeng/newxp/view/ExchangeViewManager;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mRLArray:[Landroid/view/ViewGroup;
aget-object v14, v14, v7
invoke-virtual {v4, v14, v13}, Lcom/umeng/newxp/view/ExchangeViewManager;->addView(Landroid/view/ViewGroup;Landroid/widget/ListView;)V
const/16 v14, 0xbb9
invoke-virtual {v4, v14}, Lcom/umeng/newxp/view/ExchangeViewManager;->setLoopInterval(I)V
:cond_11a
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mRLArray:[Landroid/view/ViewGroup;
aget-object v14, v14, v7
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImgArray:[Landroid/widget/ImageView;
aget-object v14, v14, v7
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImageViewArray:[Landroid/view/View;
aget-object v14, v14, v7
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
if-nez v7, :cond_146
const-string/jumbo v14, "b4001"
move-object/from16 v0, p0
invoke-static {v0, v14}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
:goto_142
add-int/lit8 v7, v7, 0x1
goto/16 :goto_9
:cond_146
const-string/jumbo v14, "b4002"
move-object/from16 v0, p0
invoke-static {v0, v14}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_142
:cond_14f
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mRLArray:[Landroid/view/ViewGroup;
aget-object v14, v14, v7
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImgArray:[Landroid/widget/ImageView;
aget-object v14, v14, v7
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImageViewArray:[Landroid/view/View;
aget-object v14, v14, v7
const/4 v15, 0x4
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
goto :goto_142
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030062
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->setContentView(I)V
const-string/jumbo v0, "b4000"
invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const v0, 0x7f0a0216
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
new-instance v1, Lcom/pinguo/camera360/camera/activity/AdsActivity$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity$1;-><init>(Lcom/pinguo/camera360/camera/activity/AdsActivity;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080337
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V
invoke-static {}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getInstance()Lcom/pinguo/camera360/adv/AdvertisementModel;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/camera/activity/AdsActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
const/4 v0, 0x0
:goto_4
sget-object v1, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_2a
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->isZhForNow()Z
move-result v1
if-eqz v1, :cond_11b
const-string/jumbo v1, "c"
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->language:Ljava/lang/String;
:goto_14
const-string/jumbo v1, "#000000"
sput-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->text_color:Ljava/lang/String;
const/4 v1, 0x1
sput-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_AUTOEXPANDED:Z
const/4 v1, 0x0
sput-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z
const v1, 0x7f0a0219
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->listviewchange(Landroid/view/View;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/AdsActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2a
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mViewArray:[Landroid/view/View;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "_lv"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "id"
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
aput-object v2, v1, v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImageViewArray:[Landroid/view/View;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "_iv"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "id"
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
aput-object v2, v1, v0
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mButtonArray:[Landroid/widget/Button;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "_button"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "id"
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
aput-object v1, v2, v0
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mRLArray:[Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "_lv_rl"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "id"
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
aput-object v1, v2, v0
iget-object v2, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mImgArray:[Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "img_"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Lcom/pinguo/camera360/camera/activity/AdsActivity;->mArray:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "id"
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
aput-object v1, v2, v0
add-int/lit8 v0, v0, 0x1
goto/16 :goto_4
:cond_11b
const-string/jumbo v1, "e"
iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity;->language:Ljava/lang/String;
goto/16 :goto_14
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 2
return-void
.end method