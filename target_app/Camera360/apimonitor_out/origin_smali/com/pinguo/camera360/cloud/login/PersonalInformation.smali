.class public Lcom/pinguo/camera360/cloud/login/PersonalInformation;
.super Landroid/app/Activity;
.source "PersonalInformation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# static fields
.field private static final BASEINTEGER:I = 0x0

.field private static CROP_IMAGE_SIZE:I = 0x0

.field public static final DESTROY_KEY:Ljava/lang/String; = "destroy_account"

.field private static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field private static final REQEUST_CODE_CROP_IMAGE:I = 0x2

.field private static final REQEUST_CODE_SYSTEM_ALBUM:I = 0x1

.field private static final REQUEST_CODE_DESTROY_ACCOUNT:I = 0x3e8

.field public static final RESULT_CODE_DESTROY_ACCOUNT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "PersonalInformation"


# instance fields
.field private final ICON_EMAIL_ID:I

.field private final ICON_FB_ID:I

.field private final ICON_QQ_ID:I

.field private final ICON_SINA_ID:I

.field private final ICON_TAOBAO_ID:I

.field private final ICON_TWITTER_ID:I

.field private mChangeAvatarFuture:Lcom/pinguo/lib/os/AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeGenderFuture:Lcom/pinguo/lib/os/AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mEmailAuthThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFace:Lcom/pinguo/camera360/lib/ui/RoundImageView;

.field private mFaceParentLayout:Landroid/widget/RelativeLayout;

.field private mGetUserInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstComeIn:Z

.field private mLogout:Landroid/widget/Button;

.field private mLogoutBtnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNickname:Landroid/widget/TextView;

.field private mNicknameParentLayout:Landroid/widget/RelativeLayout;

.field private mPasue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

.field private mSnsAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

.field private mSnsGV:Landroid/widget/GridView;

.field private mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

.field private mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

.field private mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

.field private mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

.field private mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

.field private mSsoBind:Lcom/pinguo/camera360/login/model/SsoBind;

.field private mUpdateUIComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    sput v0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->CROP_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mEmailAuthThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mPasue:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mUpdateUIComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mIsFirstComeIn:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mLogoutBtnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, 0x7f020348

    iput v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->ICON_EMAIL_ID:I

    const v0, 0x7f02034a

    iput v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->ICON_QQ_ID:I

    const v0, 0x7f02034d

    iput v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->ICON_TAOBAO_ID:I

    const v0, 0x7f02034c

    iput v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->ICON_SINA_ID:I

    const v0, 0x7f020349

    iput v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->ICON_FB_ID:I

    const v0, 0x7f02034e

    iput v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->ICON_TWITTER_ID:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindQQ()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindFacebook()V

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;Lcom/pinguo/camera360/login/model/User;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->modifyGender(Ljava/lang/String;Lcom/pinguo/camera360/login/model/User;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindSina()V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindTwitter()V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindTaoBao()V

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindForSso(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->dissmissDialog()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->updateView()V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->logout()V

    return-void
.end method

.method private bindFacebook()V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/login/model/FacebookBind;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/model/FacebookBind;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$9;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$9;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/FacebookBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private bindForSso(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSsoBind:Lcom/pinguo/camera360/login/model/SsoBind;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSsoBind:Lcom/pinguo/camera360/login/model/SsoBind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SsoBind;->cancel(Z)Z

    :cond_a
    new-instance v0, Lcom/pinguo/camera360/login/model/SsoBind;

    invoke-direct {v0, p0, p2, p1}, Lcom/pinguo/camera360/login/model/SsoBind;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSsoBind:Lcom/pinguo/camera360/login/model/SsoBind;

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSsoBind:Lcom/pinguo/camera360/login/model/SsoBind;

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SsoBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private bindQQ()V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/login/model/QQBind;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/model/QQBind;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/QQBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private bindSina()V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/login/model/SinaBind;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/model/SinaBind;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$8;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$8;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SinaBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private bindTaoBao()V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/login/model/KuPanBind;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/model/KuPanBind;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$11;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$11;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/KuPanBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private bindTwitter()V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/login/model/TwitterBind;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/model/TwitterBind;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$10;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$10;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/TwitterBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private dissmissDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->cancel()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method private getUserInfo()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mGetUserInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mGetUserInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_a
    new-instance v0, Lcom/pinguo/camera360/login/model/GetUserInfo;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/model/GetUserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mGetUserInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mGetUserInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$16;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$16;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private init()V
    .registers 4

    invoke-static {p0}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->initLoginConfig(Landroid/content/Context;)V

    const v1, 0x7f0a04f3

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v1, 0x7f0a0503

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mLogout:Landroid/widget/Button;

    const v1, 0x7f0a04f4

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mFaceParentLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a04f6

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mNicknameParentLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a04f5

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/ui/RoundImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mFace:Lcom/pinguo/camera360/lib/ui/RoundImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mFace:Lcom/pinguo/camera360/lib/ui/RoundImageView;

    const v2, 0x7f020157

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setDefaultImage(I)V

    const v1, 0x7f0a04f7

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mNickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mLogout:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mFaceParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mNicknameParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->init53UI()V

    return-void
.end method

.method private init53UI()V
    .registers 2

    const v0, 0x7f0a04fc

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04fa

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04fe

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->initSnsBindView()V

    return-void
.end method

.method private initSnsBindView()V
    .registers 10

    const v6, 0x7f0a0502

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsGV:Landroid/widget/GridView;

    new-instance v5, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;-><init>(Landroid/app/Activity;)V

    iget-object v6, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsGV:Landroid/widget/GridView;

    invoke-virtual {v6, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsGV:Landroid/widget/GridView;

    new-instance v7, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;

    invoke-direct {v7, p0, v5}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v6, ""

    const v7, 0x7f0203ec

    new-instance v8, Lcom/pinguo/camera360/cloud/login/PersonalInformation$2;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$2;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-direct {v1, v6, v7, v8}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v6, ""

    const v7, 0x7f0203e2

    new-instance v8, Lcom/pinguo/camera360/cloud/login/PersonalInformation$3;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$3;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-direct {v0, v6, v7, v8}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v6, ""

    const v7, 0x7f0203f1

    new-instance v8, Lcom/pinguo/camera360/cloud/login/PersonalInformation$4;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$4;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-direct {v2, v6, v7, v8}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v6, ""

    const v7, 0x7f0203f6

    new-instance v8, Lcom/pinguo/camera360/cloud/login/PersonalInformation$5;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$5;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-direct {v4, v6, v7, v8}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v6, ""

    const v7, 0x7f0203e7

    new-instance v8, Lcom/pinguo/camera360/cloud/login/PersonalInformation$6;

    invoke-direct {v8, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$6;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-direct {v3, v6, v7, v8}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iput-object v3, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iput-object v4, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    return-void
.end method

.method private logout()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mLogoutBtnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->logout()V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->cleanPreference(Landroid/content/Context;)V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setResult(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->finish()V

    return-void
.end method

.method private modifyGender(Ljava/lang/String;Lcom/pinguo/camera360/login/model/User;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeGenderFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeGenderFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_a
    invoke-virtual {p2, p1}, Lcom/pinguo/camera360/login/model/User;->changeGener(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeGenderFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeGenderFuture:Lcom/pinguo/lib/os/AsyncFuture;

    new-instance v1, Lcom/pinguo/camera360/cloud/login/PersonalInformation$14;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$14;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private onBindEmailClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onModifyAvatar(Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeAvatarFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeAvatarFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_e
    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/login/model/User;->changeAvatar(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeAvatarFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showDialog()V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeAvatarFuture:Lcom/pinguo/lib/os/AsyncFuture;

    new-instance v2, Lcom/pinguo/camera360/cloud/login/PersonalInformation$15;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$15;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method

.method private onModifyGenderClick(Landroid/view/View;)V
    .registers 10

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v0

    if-eqz v0, :cond_3e

    const/4 v2, 0x1

    iget-object v6, v0, Lcom/pinguo/camera360/login/model/User$Info;->gender:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    iget-object v6, v0, Lcom/pinguo/camera360/login/model/User$Info;->gender:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :cond_1b
    move v5, v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080155

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;

    invoke-direct {v6, p0, v0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$13;-><init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Lcom/pinguo/camera360/login/model/User$Info;Lcom/pinguo/camera360/login/model/User;)V

    invoke-static {p0, v3, v1, v5, v6}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showSingleChoiceItems(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    :cond_3e
    return-void
.end method

.method private onModifySignatureClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/cloud/login/ModifySignature;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private processSsoTokenData(Landroid/content/Intent;)Ljava/lang/String;
    .registers 11

    new-instance v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;

    invoke-direct {v5}, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "access_token"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "expires_in"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "refresh_token"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "uid"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->uid:Ljava/lang/String;

    iput-object v0, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->access_token:Ljava/lang/String;

    iput-object v4, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->refresh_token:Ljava/lang/String;

    iput-object v2, v5, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;->expires_in:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_45

    :goto_39
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/pinguo/camera360/login/model/Sso$SsoInfo;

    invoke-virtual {v3, v5, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private setCurrentAcount(ILjava/lang/String;)V
    .registers 4

    const v0, 0x7f0a04f9

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a04f8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEmail(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const v0, 0x7f0a0500

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a04ff

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a04fe

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0a0501

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private setGender(Ljava/lang/String;)V
    .registers 3

    const v0, 0x7f0a04fb

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSignature(Ljava/lang/String;)V
    .registers 3

    const v0, 0x7f0a04fd

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDialog()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    goto :goto_d
.end method

.method private showMessage(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    return-void
.end method

.method private updateThirdInfo(Lcom/pinguo/camera360/login/model/User$Info;)V
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz p1, :cond_c9

    iget-object v4, p1, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v9, p1, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    if-eqz v9, :cond_69

    iget-object v9, p1, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    iget-object v6, v9, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->qzone:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;

    if-eqz v6, :cond_ca

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v12}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iget-object v10, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;->nickname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    :goto_21
    iget-object v9, p1, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    iget-object v7, v9, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->sina:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;

    if-eqz v7, :cond_d9

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v12}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iget-object v10, v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;->nickname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    :goto_33
    iget-object v9, p1, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    iget-object v1, v9, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->facebook:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;

    if-eqz v1, :cond_e8

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v12}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iget-object v10, v1, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;->nickname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    :goto_45
    iget-object v9, p1, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    iget-object v8, v9, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->twitter:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;

    if-eqz v8, :cond_f7

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v12}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;->nickname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    :goto_57
    iget-object v9, p1, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    iget-object v3, v9, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;->kupan:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$KupanSite;

    if-eqz v3, :cond_106

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v12}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    iget-object v10, v3, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$KupanSite;->nickname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    :cond_69
    :goto_69
    const-string/jumbo v9, "email"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_115

    const v9, 0x7f020348

    iget-object v10, p1, Lcom/pinguo/camera360/login/model/User$Info;->email:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setCurrentAcount(ILjava/lang/String;)V

    :cond_7a
    :goto_7a
    const/4 v2, 0x0

    const-string/jumbo v9, "email"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17e

    if-nez v6, :cond_8e

    if-nez v7, :cond_8e

    if-nez v1, :cond_8e

    if-nez v8, :cond_8e

    if-eqz v3, :cond_8f

    :cond_8e
    const/4 v2, 0x1

    :cond_8f
    :goto_8f
    if-eqz v2, :cond_1e2

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->setTextViewInVisible(I)V

    :goto_97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    const-string/jumbo v9, "qzone"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1eb

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c4
    :goto_c4
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    invoke-virtual {v9, v0}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->set(Ljava/util/List;)V

    :cond_c9
    return-void

    :cond_ca
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v11}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemQQ:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_d9
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v11}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_e8
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v11}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_45

    :cond_f7
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v11}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_57

    :cond_106
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-virtual {v9, v11}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setIsBind(Z)V

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_69

    :cond_115
    const-string/jumbo v9, "qzone"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12a

    if-eqz v6, :cond_7a

    const v9, 0x7f02034a

    iget-object v10, v6, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;->nickname:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setCurrentAcount(ILjava/lang/String;)V

    goto/16 :goto_7a

    :cond_12a
    const-string/jumbo v9, "sina"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13f

    if-eqz v7, :cond_7a

    const v9, 0x7f02034c

    iget-object v10, v7, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;->nickname:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setCurrentAcount(ILjava/lang/String;)V

    goto/16 :goto_7a

    :cond_13f
    const-string/jumbo v9, "facebook"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_154

    if-eqz v1, :cond_7a

    const v9, 0x7f020349

    iget-object v10, v1, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;->nickname:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setCurrentAcount(ILjava/lang/String;)V

    goto/16 :goto_7a

    :cond_154
    const-string/jumbo v9, "twitter"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_169

    if-eqz v8, :cond_7a

    const v9, 0x7f02034e

    iget-object v10, v8, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;->nickname:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setCurrentAcount(ILjava/lang/String;)V

    goto/16 :goto_7a

    :cond_169
    const-string/jumbo v9, "kupan"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    if-eqz v3, :cond_7a

    const v9, 0x7f02034d

    iget-object v10, v3, Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$KupanSite;->nickname:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setCurrentAcount(ILjava/lang/String;)V

    goto/16 :goto_7a

    :cond_17e
    const-string/jumbo v9, "qzone"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    if-nez v7, :cond_18f

    if-nez v1, :cond_18f

    if-nez v8, :cond_18f

    if-eqz v3, :cond_8f

    :cond_18f
    const/4 v2, 0x1

    goto/16 :goto_8f

    :cond_192
    const-string/jumbo v9, "sina"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a6

    if-nez v6, :cond_1a3

    if-nez v1, :cond_1a3

    if-nez v8, :cond_1a3

    if-eqz v3, :cond_8f

    :cond_1a3
    const/4 v2, 0x1

    goto/16 :goto_8f

    :cond_1a6
    const-string/jumbo v9, "facebook"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ba

    if-nez v7, :cond_1b7

    if-nez v6, :cond_1b7

    if-nez v8, :cond_1b7

    if-eqz v3, :cond_8f

    :cond_1b7
    const/4 v2, 0x1

    goto/16 :goto_8f

    :cond_1ba
    const-string/jumbo v9, "twitter"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ce

    if-nez v7, :cond_1cb

    if-nez v1, :cond_1cb

    if-nez v6, :cond_1cb

    if-eqz v3, :cond_8f

    :cond_1cb
    const/4 v2, 0x1

    goto/16 :goto_8f

    :cond_1ce
    const-string/jumbo v9, "kupan"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8f

    if-nez v7, :cond_1df

    if-nez v1, :cond_1df

    if-nez v8, :cond_1df

    if-eqz v6, :cond_8f

    :cond_1df
    const/4 v2, 0x1

    goto/16 :goto_8f

    :cond_1e2
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->setTextViewInVisible(I)V

    goto/16 :goto_97

    :cond_1eb
    const-string/jumbo v9, "sina"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fb

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemSina:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    :cond_1fb
    const-string/jumbo v9, "facebook"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20b

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemFB:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    :cond_20b
    const-string/jumbo v9, "twitter"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21b

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTwitter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    :cond_21b
    const-string/jumbo v9, "kupan"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c4

    iget-object v9, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSnsItemTaobao:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c4
.end method

.method private updateView()V
    .registers 8

    const/4 v6, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mUpdateUIComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mFace:Lcom/pinguo/camera360/lib/ui/RoundImageView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setImageUrl(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mNickname:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/pinguo/camera360/login/model/User$Info;->gender:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const v4, 0x7f080163

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setGender(Ljava/lang/String;)V

    :goto_3a
    iget-object v4, v3, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080175

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4d
    invoke-direct {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setSignature(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/pinguo/camera360/login/model/User$Info;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_81

    const v4, 0x7f0a04fe

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    :goto_63
    invoke-direct {p0, v3}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->updateThirdInfo(Lcom/pinguo/camera360/login/model/User$Info;)V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_77

    :goto_66
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mUpdateUIComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_6c
    const v4, 0x7f080164

    :try_start_6f
    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setGender(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_77

    goto :goto_3a

    :catchall_77
    move-exception v4

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mUpdateUIComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4

    :cond_7e
    :try_start_7e
    iget-object v4, v3, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;

    goto :goto_4d

    :cond_81
    iget-object v4, v3, Lcom/pinguo/camera360/login/model/User$Info;->email:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setEmail(Ljava/lang/String;)V

    goto :goto_63

    :cond_87
    const v4, 0x7f080164

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setGender(Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_7e .. :try_end_91} :catchall_77

    goto :goto_66
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 25

    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_79

    if-nez p2, :cond_14

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPersonal(IZ)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPersonal(IZ)V

    if-eqz p3, :cond_13

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_13

    new-instance v4, Landroid/content/Intent;

    const-class v18, Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v18, "return-data"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v18, "aspectX"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "aspectY"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "outputX"

    sget v19, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->CROP_IMAGE_SIZE:I

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "outputY"

    sget v19, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->CROP_IMAGE_SIZE:I

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    :cond_79
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_15d

    if-eqz p2, :cond_13

    if-eqz p3, :cond_cd

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_cd

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_95
    :goto_95
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_d2

    if-eqz v13, :cond_cd

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    if-eqz v15, :cond_13

    array-length v0, v15

    move/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-static {v15}, Lcom/pinguo/share/util/Base64;->encode([B)[B

    move-result-object v5

    if-eqz v5, :cond_13

    array-length v0, v5

    move/from16 v18, v0

    if-eqz v18, :cond_13

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->onModifyAvatar(Ljava/lang/String;)V

    :cond_cd
    :goto_cd
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_13

    :cond_d2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v18, "PersonalInformation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "key="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "cropped-rect"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14a

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    const-string/jumbo v18, "PersonalInformation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "l="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",t="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",r="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",b="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_95

    :cond_14a
    const-string/jumbo v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_95

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    goto/16 :goto_95

    :cond_15d
    const/16 v18, 0x3e8

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a8

    const/16 v18, 0x3e8

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPersonal(IZ)V

    const/16 v18, 0x3e9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_cd

    if-eqz p3, :cond_cd

    const-string/jumbo v18, "destroy_account"

    const/16 v19, 0xc8

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v18, "PersonalInformation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "status="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1a4

    move/from16 v0, v18

    if-ne v14, v0, :cond_cd

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->logout()V

    goto/16 :goto_13

    :cond_1a8
    const v18, 0x80cd

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_cd

    const/16 v18, -0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_cd

    const-string/jumbo v18, "error"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1d1

    const-string/jumbo v18, "error_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1d1
    if-eqz v6, :cond_1f0

    const-string/jumbo v18, "test"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "sina sso error="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->finish()V

    goto/16 :goto_cd

    :cond_1f0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->processSsoTokenData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v18, "sina"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindForSso(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cd
.end method

.method public onBackClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    const v4, 0x7f0a0503

    const/16 v8, 0x1f4

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_8e

    :goto_e
    return-void

    :sswitch_f
    const-string/jumbo v4, "PersonalInformation"

    const-string/jumbo v5, "\u4f60\u70b9\u51fb\u4e86\u4fee\u6539\u5934\u50cf"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0a04f4

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayBtnClick(I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-static {p1, v6, v8}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_39

    const v4, 0x7f08017e

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_e

    :cond_39
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "image/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    :sswitch_50
    const-string/jumbo v4, "PersonalInformation"

    const-string/jumbo v5, "\u4f60\u70b9\u51fb\u4e86\u4fee\u6539\u6635\u79f0"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0a04f6

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayBtnClick(I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-static {p1, v6, v8}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x3e8

    invoke-virtual {p0, v1, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    :sswitch_72
    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLayBtnClick(I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-static {p1, v6, v8}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V

    invoke-static {v4, v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingPersonal(IZ)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->logout()V

    goto :goto_e

    :sswitch_82
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->onBindEmailClick(Landroid/view/View;)V

    goto :goto_e

    :sswitch_86
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->onModifyGenderClick(Landroid/view/View;)V

    goto :goto_e

    :sswitch_8a
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->onModifySignatureClick(Landroid/view/View;)V

    goto :goto_e

    :sswitch_data_8e
    .sparse-switch
        0x7f0a04f4 -> :sswitch_f
        0x7f0a04f6 -> :sswitch_50
        0x7f0a04fa -> :sswitch_86
        0x7f0a04fc -> :sswitch_8a
        0x7f0a04fe -> :sswitch_82
        0x7f0a0503 -> :sswitch_72
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f0300de

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->setContentView(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mDensity:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mIsFirstComeIn:Z

    const/high16 v0, 0x430d

    const/high16 v3, 0x42bc

    iget v4, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mDensity:F

    mul-float v2, v3, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sput v3, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->CROP_IMAGE_SIZE:I

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->init()V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getUserInfo()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v1, 0x1

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSsoBind:Lcom/pinguo/camera360/login/model/SsoBind;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mSsoBind:Lcom/pinguo/camera360/login/model/SsoBind;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SsoBind;->cancel(Z)Z

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeAvatarFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeAvatarFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_1a
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeGenderFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mChangeGenderFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalGender(I)V

    :cond_27
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mGetUserInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mGetUserInfoFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/login/model/LoginResultEvent;)V
    .registers 7

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/pinguo/camera360/login/model/LoginResultEvent;->getStatus()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_16

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->updateView()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/16 v4, 0x1a4

    if-ne v2, v4, :cond_1e

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->logout()V

    goto :goto_15

    :cond_1e
    invoke-virtual {p1}, Lcom/pinguo/camera360/login/model/LoginResultEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const v4, 0x7f080296

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showMessage(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected onPause()V
    .registers 3

    const-string/jumbo v0, "PersonalInformation"

    const-string/jumbo v1, "onPause,onPause"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mPasue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mEmailAuthThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mPasue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->updateView()V

    iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mIsFirstComeIn:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->mIsFirstComeIn:Z

    :cond_16
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->finish()V

    return-void
.end method
