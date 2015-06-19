.class public Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;,
        Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;,
        Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;,
        Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/camera360/lib/ui/Rotatable;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final MIN_SCENE_UPDATE_INTERVAL:J = 0x5265c00L

.field private static final MSG_UPDATE_VIEW:I = 0x1001001

.field private static final MSG_UPDATE_VIEW_WITHNET:I = 0x1001002

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isCancelDownload:Z

.field private mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private mContext:Landroid/content/Context;

.field private mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

.field private mHandler:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;

.field private mIconSize:I

.field private mIconSpacing:I

.field private mIsAnimating:Z

.field private mIsUpdate:Z

.field private mOrientation:I

.field private mPopupWindow:Landroid/view/View;

.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

.field private mRootview:Landroid/view/ViewGroup;

.field private mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

.field private mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

.field private mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;

.field private mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iput-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iput-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;

    iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsUpdate:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->isCancelDownload:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    iput-object p2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRootview:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    invoke-direct {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->initData()V

    invoke-direct {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->initView()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->isCancelDownload:Z

    return v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->updateSceneSync(I)V

    return-void
.end method

.method static synthetic access$15(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsUpdate:Z

    return-void
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mHandler:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRootview:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSize:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->isCancelDownload:Z

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    return-void
.end method

.method private checkNetWorkStateAndDownLoad(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 7

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pinguo/camera360/push/utils/NetWorkHelper;->hasInternet(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pinguo/camera360/push/utils/NetWorkHelper;->isWIFI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->showSceneProgressDialog()V

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->downloadSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->showIsDownloadDialog(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    goto :goto_1e

    :cond_23
    new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f080318

    iget v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    invoke-direct {v2, v1, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    iput-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    goto :goto_1e
.end method

.method private initData()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pinguo/lib/UIContants;->getSceneTemplateIconSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSize:I

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pinguo/lib/UIContants;->getGridViewSpacing(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSpacing:I

    new-instance v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;)V

    iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mHandler:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;

    return-void
.end method

.method private initView()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    const v1, 0x7f0a016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    iget v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    invoke-virtual {p0, v0, v3}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->setOrientation(IZ)V

    return-void
.end method

.method private updateGridview(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;I)V
    .registers 8

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x3

    sparse-switch p2, :sswitch_data_3e

    :goto_7
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSize:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSpacing:I

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iget v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSize:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iget v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSpacing:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {p1, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :sswitch_3c
    const/4 v0, 0x2

    goto :goto_7

    :sswitch_data_3e
    .sparse-switch
        0x5a -> :sswitch_3c
        0x10e -> :sswitch_3c
    .end sparse-switch
.end method

.method private declared-synchronized updateSceneSync(I)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsUpdate:Z

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->registerSceneSyncListener(Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$OnSceneTemplateLoadListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->updateSceneTemplate(IZ)Z
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public downloadSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public hide()Z
    .registers 6

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    if-eqz v3, :cond_9

    :goto_8
    return v1

    :cond_9
    iput-boolean v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->resetRefreshState()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    const v3, 0x7f040031

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2e
    move v1, v2

    goto :goto_8

    :cond_30
    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRootview:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRootview:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    goto :goto_2e
.end method

.method public hideProgressDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public initSceneTemplateModel()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->getInstance()Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    :cond_a
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pinguo/lib/util/DeviceInfo;->hasSDCard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->isCancelDownload:Z

    sget-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Item:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getLocationType()I

    move-result v1

    packed-switch v1, :pswitch_data_72

    goto :goto_8

    :pswitch_37
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->isCompleteSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;

    invoke-interface {v1, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;->onSceneSelectListener(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;

    invoke-virtual {v1}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->notifyDataSetChanged()V

    goto :goto_8

    :cond_48
    :pswitch_48
    invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getDetailLogo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->deleteSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v3, "\u6a21\u677f\u4e0d\u5b8c\u6574\u5237\u65b0\u91cd\u8bd5"

    iget v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    invoke-direct {v2, v1, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mHandler:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;

    const v2, 0x1001002

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    :cond_6d
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->checkNetWorkStateAndDownLoad(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    goto :goto_8

    nop

    :pswitch_data_72
    .packed-switch 0x2
        :pswitch_37
        :pswitch_37
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method public resetRefreshState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsUpdate:Z

    return-void
.end method

.method public setOnEffectClickListener(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 8

    const/4 v2, 0x0

    iput p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    const/4 v3, 0x3

    new-array v1, v3, [Lcom/pinguo/camera360/lib/ui/Rotatable;

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iget v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    invoke-direct {p0, v3, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->updateGridview(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;I)V

    array-length v3, v1

    :goto_1c
    if-lt v2, v3, :cond_1f

    return-void

    :cond_1f
    aget-object v0, v1, v2

    if-eqz v0, :cond_26

    invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method public show()Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pinguo/lib/util/DeviceInfo;->hasSDCard(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    iget-boolean v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    if-nez v3, :cond_a

    iput-boolean v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRootview:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->initSceneTemplateModel()V

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    const v3, 0x7f04002e

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$9;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$9;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_48
    move v1, v2

    goto :goto_a

    :cond_4a
    iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mHandler:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;

    const v4, 0x1001002

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->sendEmptyMessage(I)Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z

    goto :goto_48
.end method

.method public showIsDownloadDialog(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 8

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0802cc

    const v2, 0x7f0802cd

    const v3, 0x7f080002

    new-instance v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;

    invoke-direct {v4, p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    new-instance v5, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$4;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$4;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    return-void
.end method

.method public showSceneProgressDialog()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_12
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;

    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V

    return-void
.end method

.method public updateSceneAsync(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsUpdate:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$6;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$6;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void
.end method
