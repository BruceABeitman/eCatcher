.class public Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;
.super Landroid/app/Activity;
.source "GeneralInterfaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private addPic:Landroid/widget/Button;

.field private addPicUrl:Landroid/widget/Button;

.field private addWeibo:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private deviceStatus:Landroid/widget/Button;

.field private errorReport:Landroid/widget/Button;

.field private friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

.field private friendAdd:Landroid/widget/Button;

.field private friendCheck:Landroid/widget/Button;

.field private friendFunsList:Landroid/widget/Button;

.field private friendGetIntimateFriend:Landroid/widget/Button;

.field private friendIdolList:Landroid/widget/Button;

.field private friendMutualList:Landroid/widget/Button;

.field private homeTimeLine:Landroid/widget/Button;

.field private htTimeLine:Landroid/widget/Button;

.field private latitude:D

.field private lbsAPI:Lcom/tencent/weibo/sdk/android/api/LbsAPI;

.field private lbsGetAroundNew:Landroid/widget/Button;

.field private lbsGetAroundPeople:Landroid/widget/Button;

.field private loadingWindow:Landroid/widget/PopupWindow;

.field private longitude:D

.field private mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field private mLocation:Landroid/location/Location;

.field private progressBar:Landroid/widget/ProgressBar;

.field private requestFormat:Ljava/lang/String;

.field private scrollView:Landroid/widget/ScrollView;

.field private tReList:Landroid/widget/Button;

.field private timeLineAPI:Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;

.field private userAPI:Lcom/tencent/weibo/sdk/android/api/UserAPI;

.field private userInfo:Landroid/widget/Button;

.field private userInfos:Landroid/widget/Button;

.field private userOtherInfo:Landroid/widget/Button;

.field private userTimeLine:Landroid/widget/Button;

.field private weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->loadingWindow:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->progressBar:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->scrollView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    const-string/jumbo v0, "json"

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    iput-wide v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->longitude:D

    iput-wide v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->latitude:D

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->loadingWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)Landroid/widget/ScrollView;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public initInterface()V
    .registers 15

    const/4 v13, -0x1

    new-instance v12, Landroid/widget/ScrollView;

    invoke-direct {v12, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v11, Landroid/widget/TableLayout;

    invoke-direct {v11, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, v13, v13}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->homeTimeLine:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->homeTimeLine:Landroid/widget/Button;

    const-string/jumbo v13, "\u4e3b\u4eba\u9875\u65f6\u95f4\u7ebf"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->homeTimeLine:Landroid/widget/Button;

    const/16 v13, 0x3e9

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->homeTimeLine:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->homeTimeLine:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userTimeLine:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userTimeLine:Landroid/widget/Button;

    const-string/jumbo v13, "\u5ba2\u4eba\u9875\u65f6\u95f4\u7ebf"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userTimeLine:Landroid/widget/Button;

    const/16 v13, 0x3ea

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userTimeLine:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userTimeLine:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addWeibo:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addWeibo:Landroid/widget/Button;

    const-string/jumbo v13, "\u666e\u901a\u53d1\u8868\u63a5\u53e3"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addWeibo:Landroid/widget/Button;

    const/16 v13, 0x3eb

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addWeibo:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addWeibo:Landroid/widget/Button;

    invoke-virtual {v3, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPic:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPic:Landroid/widget/Button;

    const-string/jumbo v13, "\u53d1\u8868\u5e26\u56fe\u5fae\u535a"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPic:Landroid/widget/Button;

    const/16 v13, 0x3ec

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPic:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPic:Landroid/widget/Button;

    invoke-virtual {v3, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TableRow;

    invoke-direct {v4, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPicUrl:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPicUrl:Landroid/widget/Button;

    const-string/jumbo v13, "\u53d1\u8868\u5e26\u7f51\u7edc\u56fe\u7247\u5fae\u535a"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPicUrl:Landroid/widget/Button;

    const/16 v13, 0x3ed

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPicUrl:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->addPicUrl:Landroid/widget/Button;

    invoke-virtual {v4, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->htTimeLine:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->htTimeLine:Landroid/widget/Button;

    const-string/jumbo v13, "\u8bdd\u9898\u65f6\u95f4\u7ebf"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->htTimeLine:Landroid/widget/Button;

    const/16 v13, 0x3ee

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->htTimeLine:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->htTimeLine:Landroid/widget/Button;

    invoke-virtual {v4, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfo:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfo:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfo:Landroid/widget/Button;

    const/16 v13, 0x3ef

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfo:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfo:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userOtherInfo:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userOtherInfo:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u4ed6\u4eba\u4fe1\u606f"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userOtherInfo:Landroid/widget/Button;

    const/16 v13, 0x3f0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userOtherInfo:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userOtherInfo:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TableRow;

    invoke-direct {v6, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfos:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfos:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u4e00\u6279\u4eba\u4fe1\u606f"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfos:Landroid/widget/Button;

    const/16 v13, 0x3f1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfos:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userInfos:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAdd:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAdd:Landroid/widget/Button;

    const-string/jumbo v13, "\u6536\u542c\u67d0\u4e2a\u7528\u6237"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAdd:Landroid/widget/Button;

    const/16 v13, 0x3f2

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAdd:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAdd:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TableRow;

    invoke-direct {v7, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendIdolList:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendIdolList:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u5076\u50cf\u5217\u8868"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendIdolList:Landroid/widget/Button;

    const/16 v13, 0x3f3

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendIdolList:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendIdolList:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendFunsList:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendFunsList:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u7c89\u4e1d\u5217\u8868"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendFunsList:Landroid/widget/Button;

    const/16 v13, 0x3f4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendFunsList:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendFunsList:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TableRow;

    invoke-direct {v8, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendMutualList:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendMutualList:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u4e92\u542c\u5217\u8868"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendMutualList:Landroid/widget/Button;

    const/16 v13, 0x3f5

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendMutualList:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendMutualList:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendCheck:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendCheck:Landroid/widget/Button;

    const-string/jumbo v13, "\u9a8c\u8bc1\u597d\u53cb\u5173\u7cfb"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendCheck:Landroid/widget/Button;

    const/16 v13, 0x3f6

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendCheck:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendCheck:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/TableRow;

    invoke-direct {v9, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->tReList:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->tReList:Landroid/widget/Button;

    const-string/jumbo v13, "\u8f6c\u64ad\u83b7\u53d6\u8f6c\u64ad\u5217\u8868"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->tReList:Landroid/widget/Button;

    const/16 v13, 0x3f7

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->tReList:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->tReList:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendGetIntimateFriend:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendGetIntimateFriend:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u6700\u8fd1\u8054\u7cfb\u4eba"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendGetIntimateFriend:Landroid/widget/Button;

    const/16 v13, 0x3f8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendGetIntimateFriend:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendGetIntimateFriend:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/TableRow;

    invoke-direct {v10, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundPeople:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundPeople:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u9644\u8fd1\u7684\u4eba"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundPeople:Landroid/widget/Button;

    const/16 v13, 0x3f9

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundPeople:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundPeople:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundNew:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundNew:Landroid/widget/Button;

    const-string/jumbo v13, "\u83b7\u53d6\u8eab\u8fb9\u6700\u65b0\u7684\u5fae\u535a"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundNew:Landroid/widget/Button;

    const/16 v13, 0x3fa

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundNew:Landroid/widget/Button;

    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsGetAroundNew:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->deviceStatus:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->deviceStatus:Landroid/widget/Button;

    const-string/jumbo v13, "\u7ec8\u7aef\u72b6\u51b5"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->deviceStatus:Landroid/widget/Button;

    const/16 v13, 0x3fb

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->deviceStatus:Landroid/widget/Button;

    invoke-virtual {v2, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->errorReport:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->errorReport:Landroid/widget/Button;

    const-string/jumbo v13, "\u9519\u8bef\u53cd\u9988"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->errorReport:Landroid/widget/Button;

    const/16 v13, 0x3fc

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setId(I)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->errorReport:Landroid/widget/Button;

    invoke-virtual {v2, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v12, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v12, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v12}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 37

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$2;-><init>(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_2d6

    :goto_15
    :pswitch_15
    return-void

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->timeLineAPI:Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual/range {v2 .. v12}, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;->getHomeTimeLine(Landroid/content/Context;IIIIILjava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto :goto_15

    :pswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->timeLineAPI:Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const-string/jumbo v8, "api_weibo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual/range {v2 .. v15}, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;->getUserTimeLine(Landroid/content/Context;IIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto :goto_15

    :pswitch_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    const-string/jumbo v4, "hello world !"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->longitude:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->latitude:D

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual/range {v2 .. v14}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->addWeibo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto :goto_15

    :pswitch_76
    :try_start_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "logo"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    const-string/jumbo v4, "call telephone OKK"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->longitude:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->latitude:D

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual/range {v2 .. v15}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->addPic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDLandroid/graphics/Bitmap;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_ab} :catch_ad

    goto/16 :goto_15

    :catch_ad
    move-exception v2

    goto/16 :goto_15

    :pswitch_b0
    const-string/jumbo v19, "http://t2.qpic.cn/mblogpic/9c7e34358608bb61a696/2000"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    const-string/jumbo v13, "y phone "

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->longitude:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->latitude:D

    move-wide/from16 v17, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-virtual/range {v11 .. v24}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->addPicUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->timeLineAPI:Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1e

    const-string/jumbo v24, "0"

    const-string/jumbo v25, "0"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string/jumbo v28, "\u52a0\u6cb9"

    const-string/jumbo v29, "0"

    const/16 v30, 0x1

    const/16 v31, 0x80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x4

    invoke-virtual/range {v20 .. v34}, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;->getHTTimeLine(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userAPI:Lcom/tencent/weibo/sdk/android/api/UserAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/weibo/sdk/android/api/UserAPI;->getUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_12d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userAPI:Lcom/tencent/weibo/sdk/android/api/UserAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    const-string/jumbo v5, "api_weibo"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/weibo/sdk/android/api/UserAPI;->getUserOtherInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userAPI:Lcom/tencent/weibo/sdk/android/api/UserAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    const-string/jumbo v5, "api_weibo"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/weibo/sdk/android/api/UserAPI;->getUserInfos(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    const-string/jumbo v5, "api_weibo"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->addFriend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1e

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x4

    invoke-virtual/range {v20 .. v29}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->friendIDolList(Landroid/content/Context;Ljava/lang/String;IIIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1e

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x4

    invoke-virtual/range {v20 .. v30}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->friendFansList(Landroid/content/Context;Ljava/lang/String;IIIIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "api_weibo"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1e

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x4

    invoke-virtual/range {v20 .. v30}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->getMutualList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "api_weibo"

    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x4

    invoke-virtual/range {v20 .. v28}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->friendCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const-string/jumbo v24, "112714089895346"

    const/16 v25, 0x0

    const-string/jumbo v26, "0"

    const/16 v27, 0x1e

    const-string/jumbo v28, "0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x4

    invoke-virtual/range {v20 .. v31}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->reList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;->getIntimateFriends(Landroid/content/Context;Ljava/lang/String;ILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_26f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsAPI:Lcom/tencent/weibo/sdk/android/api/LbsAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->longitude:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->latitude:D

    move-wide/from16 v25, v0

    const-string/jumbo v27, ""

    const/16 v28, 0x14

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x4

    invoke-virtual/range {v20 .. v32}, Lcom/tencent/weibo/sdk/android/api/LbsAPI;->getAroundPeople(Landroid/content/Context;Ljava/lang/String;DDLjava/lang/String;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    :pswitch_2a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsAPI:Lcom/tencent/weibo/sdk/android/api/LbsAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->requestFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->longitude:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->latitude:D

    move-wide/from16 v25, v0

    const-string/jumbo v27, ""

    const/16 v28, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x4

    invoke-virtual/range {v20 .. v31}, Lcom/tencent/weibo/sdk/android/api/LbsAPI;->getAroundNew(Landroid/content/Context;Ljava/lang/String;DDLjava/lang/String;ILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_15

    nop

    :pswitch_data_2d6
    .packed-switch 0x3e9
        :pswitch_16
        :pswitch_32
        :pswitch_53
        :pswitch_76
        :pswitch_b0
        :pswitch_df
        :pswitch_116
        :pswitch_12d
        :pswitch_148
        :pswitch_163
        :pswitch_17e
        :pswitch_1a7
        :pswitch_1d2
        :pswitch_1fe
        :pswitch_226
        :pswitch_256
        :pswitch_26f
        :pswitch_2a3
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/16 v3, 0x64

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_TOKEN"

    invoke-static {v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->accessToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_21

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_21
    const-string/jumbo v1, "\u8bf7\u5148\u6388\u6743"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->finish()V

    :goto_2f
    return-void

    :cond_30
    new-instance v0, Lcom/tencent/weibo/sdk/android/model/AccountModel;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->accessToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/model/AccountModel;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    invoke-direct {v1, v0}, Lcom/tencent/weibo/sdk/android/api/FriendAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->friendAPI:Lcom/tencent/weibo/sdk/android/api/FriendAPI;

    new-instance v1, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;

    invoke-direct {v1, v0}, Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->timeLineAPI:Lcom/tencent/weibo/sdk/android/api/TimeLineAPI;

    new-instance v1, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    invoke-direct {v1, v0}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    new-instance v1, Lcom/tencent/weibo/sdk/android/api/UserAPI;

    invoke-direct {v1, v0}, Lcom/tencent/weibo/sdk/android/api/UserAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->userAPI:Lcom/tencent/weibo/sdk/android/api/UserAPI;

    new-instance v1, Lcom/tencent/weibo/sdk/android/api/LbsAPI;

    invoke-direct {v1, v0}, Lcom/tencent/weibo/sdk/android/api/LbsAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->lbsAPI:Lcom/tencent/weibo/sdk/android/api/LbsAPI;

    new-instance v1, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;

    invoke-direct {v1, p0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity$1;-><init>(Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->progressBar:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->loadingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->longitude:D

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->latitude:D

    :cond_93
    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/GeneralInterfaceActivity;->initInterface()V

    goto :goto_2f
.end method
