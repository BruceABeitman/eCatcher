.class public Lcom/tencent/weibo/sdk/android/component/ReAddActivity;
.super Landroid/app/Activity;
.source "ReAddActivity.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private api:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

.field private content:Landroid/widget/EditText;

.field private contentStr:Ljava/lang/String;

.field private gallery:Landroid/widget/Gallery;

.field private galleryLayout:Landroid/widget/RelativeLayout;

.field private imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/widget/LinearLayout;

.field private loadingWindow:Landroid/widget/PopupWindow;

.field private mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field private mHandler:Landroid/os/Handler;

.field private musicAuthor:Ljava/lang/String;

.field private musicPath:Ljava/lang/String;

.field private musicTitle:Ljava/lang/String;

.field private picPath:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textView_num:Landroid/widget/TextView;

.field private videoCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoPath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->picPath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicPath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicTitle:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicAuthor:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->imageList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->loadingWindow:Landroid/widget/PopupWindow;

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->progressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->galleryLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$1;-><init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    new-instance v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$2;-><init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->imageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->loadingWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/Gallery;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public initLayout()Landroid/view/View;
    .registers 23

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const-string/jumbo v20, "readd_bg"

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v19, "up_bg2x"

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "quxiao_btn2x"

    aput-object v20, v10, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "quxiao_btn_hover"

    aput-object v20, v10, v19

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v19, "\u53d6\u6d88"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x9

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xf

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v19, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$3;-><init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v19, "\u8f6c\u64ad"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v19, 0x41c0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xd

    const/16 v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "sent_btn2x"

    aput-object v20, v10, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "sent_btn_hover"

    aput-object v20, v10, v19

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v19, "\u8f6c\u64ad"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xb

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xf

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v19, 0xa

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v19, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$4;-><init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, 0xf0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, 0x1b8

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v19, 0x32

    move/from16 v0, v19

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v19, "input_bg"

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_422

    const-string/jumbo v19, "140"

    :goto_21e
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "#999999"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, 0x4190

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xc

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xb

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setMinLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setScrollbarFadingEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x30

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity$5;-><init>(Lcom/tencent/weibo/sdk/android/component/ReAddActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->galleryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->galleryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v19, Landroid/widget/Gallery;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->gallery:Landroid/widget/Gallery;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, 0x12f

    const/16 v20, 0xcb

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xe

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xa

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0x32

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->gallery:Landroid/widget/Gallery;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/Gallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->gallery:Landroid/widget/Gallery;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pic_biankuang2x"

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Gallery;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->requestForGallery()Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->galleryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->gallery:Landroid/widget/Gallery;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->picPath:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_41b

    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->picPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_41b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_41b

    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_41b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->galleryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_41b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    return-object v19

    :cond_422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    rsub-int v0, v0, 0x8c

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_21e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/16 v6, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->requestWindowFeature(I)Z

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->setPix(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "ACCESS_TOKEN"

    invoke-static {v5, v6}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->accessToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->accessToken:Ljava/lang/String;

    if-eqz v5, :cond_5b

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->accessToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    :cond_5b
    const-string/jumbo v5, "\u8bf7\u5148\u6388\u6743"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->finish()V

    :goto_69
    return-void

    :cond_6a
    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_aa

    const-string/jumbo v5, "content"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    const-string/jumbo v5, "video_url"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoPath:Ljava/lang/String;

    const-string/jumbo v5, "pic_url"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->picPath:Ljava/lang/String;

    const-string/jumbo v5, "music_url"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicPath:Ljava/lang/String;

    const-string/jumbo v5, "music_title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicTitle:Ljava/lang/String;

    const-string/jumbo v5, "music_author"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicAuthor:Ljava/lang/String;

    :cond_aa
    new-instance v0, Lcom/tencent/weibo/sdk/android/model/AccountModel;

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->accessToken:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/tencent/weibo/sdk/android/model/AccountModel;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    invoke-direct {v5, v0}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    iput-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->api:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->initLayout()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->setContentView(Landroid/view/View;)V

    goto :goto_69
.end method

.method protected reAddWeibo()V
    .registers 12

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->api:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->contentStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->picPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->musicAuthor:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->reAddWeibo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    return-void
.end method

.method public requestForGallery()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->picPath:Ljava/lang/String;

    if-eqz v0, :cond_13

    new-instance v7, Lcom/tencent/weibo/sdk/android/model/ImageInfo;

    invoke-direct {v7}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;-><init>()V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->picPath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->setImagePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoPath:Ljava/lang/String;

    if-eqz v0, :cond_2b

    new-instance v6, Lcom/tencent/weibo/sdk/android/model/ImageInfo;

    invoke-direct {v6}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;-><init>()V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->api:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->videoCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->getVideoInfo(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    :cond_2b
    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ReAddActivity;->imageList:Ljava/util/ArrayList;

    return-object v0
.end method
