.class public Lcom/tencent/weibo/sdk/android/component/PublishActivity;
.super Landroid/app/Activity;
.source "PublishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private button_camera:Landroid/widget/ImageButton;

.field private button_conversation:Landroid/widget/ImageButton;

.field private button_esc:Landroid/widget/Button;

.field private button_friend:Landroid/widget/ImageButton;

.field private button_location:Landroid/widget/ImageButton;

.field private button_send:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field private editText_text:Landroid/widget/EditText;

.field private edstring:Ljava/lang/String;

.field private frameLayout_big:Landroid/widget/FrameLayout;

.field private frameLayout_icon:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private imageView_big:Landroid/widget/ImageView;

.field private imageView_bound:Landroid/widget/ImageView;

.field private imageView_delete:Landroid/widget/ImageView;

.field private imageView_icon:Landroid/widget/ImageView;

.field private layout_big_delete:Landroid/widget/LinearLayout;

.field private layout_imagebound:Landroid/widget/LinearLayout;

.field private layout_set:Landroid/widget/LinearLayout;

.field private location:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lyout:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mLocation:Landroid/location/Location;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private textView_num:Landroid/widget/TextView;

.field private viewroot:Landroid/widget/LinearLayout;

.field private weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/weibo/sdk/android/component/PublishActivity;Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/weibo/sdk/android/component/PublishActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method private getarea([I)[I
    .registers 10

    const/high16 v7, 0x4396

    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [I

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    aget v2, p1, v4

    aget v3, p1, v5

    if-le v2, v3, :cond_48

    aget v2, p1, v4

    if-lt v2, v6, :cond_48

    aput v6, v0, v4

    aget v2, p1, v5

    int-to-float v2, v2

    aget v3, p1, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    mul-float v2, v1, v7

    float-to-int v2, v2

    aput v2, v0, v5

    :cond_25
    :goto_25
    const-string/jumbo v2, "myarea"

    new-instance v3, Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "....."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_48
    aget v2, p1, v4

    aget v3, p1, v5

    if-le v2, v3, :cond_5b

    aget v2, p1, v4

    if-ge v2, v6, :cond_5b

    aget v2, p1, v4

    aput v2, v0, v4

    aget v2, p1, v5

    aput v2, v0, v5

    goto :goto_25

    :cond_5b
    aget v2, p1, v4

    aget v3, p1, v5

    if-ge v2, v3, :cond_75

    aget v2, p1, v5

    if-lt v2, v6, :cond_75

    aget v2, p1, v4

    int-to-float v2, v2

    aget v3, p1, v5

    int-to-float v3, v3

    div-float v1, v2, v3

    mul-float v2, v1, v7

    float-to-int v2, v2

    aput v2, v0, v4

    aput v6, v0, v5

    goto :goto_25

    :cond_75
    aget v2, p1, v4

    aget v3, p1, v5

    if-ge v2, v3, :cond_88

    aget v2, p1, v4

    if-ge v2, v6, :cond_88

    aget v2, p1, v4

    aput v2, v0, v4

    aget v2, p1, v5

    aput v2, v0, v5

    goto :goto_25

    :cond_88
    aget v2, p1, v4

    aget v3, p1, v5

    if-ne v2, v3, :cond_97

    aget v2, p1, v4

    if-lt v2, v6, :cond_97

    aput v6, v0, v4

    aput v6, v0, v5

    goto :goto_25

    :cond_97
    aget v2, p1, v4

    aget v3, p1, v5

    if-ne v2, v3, :cond_25

    aget v2, p1, v4

    if-ge v2, v6, :cond_25

    aget v2, p1, v4

    aput v2, v0, v4

    aget v2, p1, v5

    aput v2, v0, v5

    goto/16 :goto_25
.end method

.method private initview()Landroid/view/View;
    .registers 36

    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v7, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v30, "up_bg2x"

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getApplication()Landroid/app/Application;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v30, Landroid/widget/Button;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    const/16 v30, 0x9

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v30, 0xf

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v30, 0xa

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v30, 0xa

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v30, 0xa

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    move-object/from16 v30, v0

    const-string/jumbo v31, "\u53d6\u6d88"

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x1389

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setId(I)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "quxiao_btn2x"

    aput-object v31, v25, v30

    const/16 v30, 0x1

    const-string/jumbo v31, "quxiao_btn_hover"

    aput-object v31, v25, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v30, Landroid/widget/Button;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    new-instance v29, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    invoke-direct/range {v29 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v30, 0xb

    const/16 v31, -0x1

    invoke-virtual/range {v29 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v30, 0xf

    const/16 v31, -0x1

    invoke-virtual/range {v29 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v30, 0xa

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v30, 0xa

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v30, 0xa

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    const/high16 v32, 0x3f80

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    move-object/from16 v30, v0

    const-string/jumbo v31, "\u53d1\u9001"

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x138a

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setId(I)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "sent_btn_22x"

    aput-object v31, v27, v30

    const/16 v30, 0x1

    const-string/jumbo v31, "sent_btn_hover"

    aput-object v31, v27, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v30, -0x1

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->requestFocus()Z

    new-instance v30, Landroid/widget/EditText;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setMinLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setMinEms(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setMaxEms(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setScrollbarFadingEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x30

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x138b

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setId(I)V

    new-instance v30, Landroid/widget/FrameLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v30, 0x15

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, 0x36

    const/16 v32, 0x2d

    invoke-direct/range {v30 .. v32}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x2

    const/16 v33, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v30, Landroid/widget/ImageView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_icon:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x138c

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setId(I)V

    new-instance v30, Landroid/widget/ImageView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_bound:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_bound:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x138d

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_bound:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, 0x36

    const/16 v33, 0x2d

    invoke-direct/range {v31 .. v33}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_icon:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, 0x21

    const/16 v33, 0x21

    invoke-direct/range {v31 .. v33}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_bound:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const-string/jumbo v31, "composeimageframe"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_icon:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_bound:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "icon_bg2x"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x10

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0xa

    const/16 v32, 0x0

    const/16 v33, 0x1e

    const/16 v34, 0x0

    invoke-virtual/range {v30 .. v34}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v30, Landroid/widget/ImageButton;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_friend:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_friend:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_friend:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const/16 v31, 0x138e

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v30, Landroid/widget/ImageButton;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_conversation:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_conversation:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_conversation:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const/16 v31, 0x138f

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v30, Landroid/widget/ImageButton;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_camera:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_camera:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_camera:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const/16 v31, 0x1390

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v30, Landroid/widget/ImageButton;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const/16 v31, 0x1391

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_friend:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    const-string/jumbo v31, "haoyou_icon2x"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "huati_icon2x"

    aput-object v31, v24, v30

    const/16 v30, 0x1

    const-string/jumbo v31, "huati_icon_hover2x"

    aput-object v31, v24, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_conversation:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "pic_icon2x"

    aput-object v31, v23, v30

    const/16 v30, 0x1

    const-string/jumbo v31, "pic_icon_hover2x"

    aput-object v31, v23, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_camera:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "dingwei_icon2x"

    aput-object v31, v26, v30

    const/16 v30, 0x1

    const-string/jumbo v31, "dingwei_icon_hover2x"

    aput-object v31, v26, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_friend:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_conversation:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_camera:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const-string/jumbo v31, "140"

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const-string/jumbo v31, "#999999"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x5

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x1392

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x28

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v30, 0x15

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x2

    const/high16 v32, 0x3f80

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v30, 0x11

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string/jumbo v30, "bg"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v30, Landroid/widget/FrameLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    const/16 v31, 0xa

    const/16 v32, 0xa

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v30 .. v34}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    const/16 v32, 0x2

    const/16 v33, 0x2

    const/16 v34, 0x2

    invoke-virtual/range {v30 .. v34}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pic_biankuang2x"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_big_delete:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getarea([I)[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    add-int/lit8 v30, v30, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getarea([I)[I

    move-result-object v31

    const/16 v32, 0x1

    aget v31, v31, v32

    add-int/lit8 v31, v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_big_delete:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x11

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x1393

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getarea([I)[I

    move-result-object v32

    const/16 v33, 0x0

    aget v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getarea([I)[I

    move-result-object v33

    const/16 v34, 0x1

    aget v33, v33, v34

    invoke-direct/range {v31 .. v33}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v30, Landroid/widget/ImageView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_big:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_big:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x1394

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_big:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v30, Landroid/widget/ImageView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_delete:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_delete:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x1395

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_delete:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x2

    const/16 v33, -0x2

    invoke-direct/range {v31 .. v33}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_delete:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const-string/jumbo v31, "close"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_big_delete:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_delete:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_imagebound:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_big_delete:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->viewroot:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    return-object v30
.end method

.method private setonclick()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_esc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity$4;

    invoke-direct {v1, p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$4;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_bound:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_delete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_friend:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_conversation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_camera:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showView()Landroid/view/View;
    .registers 16

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v11, "bg"

    invoke-static {v11, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x32

    const/16 v12, 0x32

    const/16 v13, 0x32

    const/16 v14, 0x32

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/16 v14, 0x1e

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v0, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x1396

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v11, "\u62cd\u7167"

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x2

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "btn1_"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "btn1_hover_"

    aput-object v12, v4, v11

    invoke-static {v4, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x1397

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v11, "\u76f8\u518c"

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x1398

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v11, "\u53d6\u6d88"

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "btn2_"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "btn1_hover_"

    aput-object v12, v7, v11

    invoke-static {v7, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 22

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x3e8

    move/from16 v0, p1

    if-ne v0, v1, :cond_f5

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_f5

    if-eqz p3, :cond_f5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v1, "path"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v14, v1, [I

    :try_start_4c
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x6

    iput v1, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    invoke-static {v13, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v8, v1, v4, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    aput v5, v1, v4

    invoke-direct/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->initview()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->setContentView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->setonclick()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_icon:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_big:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_bd
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_bd} :catch_eb
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_bd} :catch_f0

    :goto_bd
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_ea

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_ea

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance v17, Ljava/util/Timer;

    invoke-direct/range {v17 .. v17}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/tencent/weibo/sdk/android/component/PublishActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$8;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V

    const-wide/16 v4, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_ea
    :goto_ea
    return-void

    :catch_eb
    move-exception v12

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_bd

    :catch_f0
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bd

    :cond_f5
    const/16 v1, 0x7d0

    move/from16 v0, p1

    if-ne v0, v1, :cond_1a7

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1a7

    if-eqz p3, :cond_1a7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_119

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_119

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_119
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v1, "data"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_MOUNTED"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v8, v1, v4, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    aput v5, v1, v4

    invoke-direct/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->initview()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->setContentView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->setonclick()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_icon:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->imageView_big:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_ea

    :cond_1a7
    const/16 v1, 0x138f

    move/from16 v0, p1

    if-ne v0, v1, :cond_1f2

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1f2

    if-eqz p3, :cond_1f2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "conversation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_ea

    :cond_1f2
    const/16 v1, 0x138e

    move/from16 v0, p1

    if-ne v0, v1, :cond_ea

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_ea

    if-eqz p3, :cond_ea

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "firend"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_ea
.end method

.method public onClick(Landroid/view/View;)V
    .registers 24

    const-string/jumbo v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_238

    :cond_12
    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->finish()V

    goto :goto_12

    :pswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_54

    const-string/jumbo v2, "\u65e0\u5185\u5bb9\u53d1\u9001"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_12

    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    :cond_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8b

    const-string/jumbo v2, "\u8bf7\u91cd\u65b0\u8f93\u5165\u5c11\u4e8e140\u4e2a\u5b57\u7684\u5185\u5bb9"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_12

    :cond_8b
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_a5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    :cond_a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    if-nez v2, :cond_c5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->context:Landroid/content/Context;

    const-string/jumbo v5, "json"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object/from16 v12, p0

    invoke-virtual/range {v2 .. v14}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->addWeibo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDIILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_12

    :cond_c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->context:Landroid/content/Context;

    const-string/jumbo v5, "json"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v13, p0

    invoke-virtual/range {v2 .. v15}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;->addPic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DDLandroid/graphics/Bitmap;IILcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;I)V

    goto/16 :goto_12

    :pswitch_e9
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_12

    :pswitch_f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/weibo/sdk/android/component/FriendActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v2, 0x138e

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_12

    :pswitch_119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v2, 0x138f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_12

    :pswitch_140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_166

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_166

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_12

    :cond_166
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->showView()Landroid/view/View;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v10, -0x1

    invoke-direct {v2, v3, v5, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    new-instance v21, Ljava/util/Timer;

    invoke-direct/range {v21 .. v21}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$5;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V

    const-wide/16 v10, 0x1f4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_12

    :pswitch_192
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$6;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_12

    :pswitch_1a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_12

    :pswitch_1b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_12

    :pswitch_1db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;

    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_12

    :pswitch_202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v21, Ljava/util/Timer;

    invoke-direct/range {v21 .. v21}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$7;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v10, 0x64

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_12

    nop

    :pswitch_data_238
    .packed-switch 0x1389
        :pswitch_13
        :pswitch_25
        :pswitch_12
        :pswitch_12
        :pswitch_e9
        :pswitch_f2
        :pswitch_119
        :pswitch_140
        :pswitch_192
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1a3
        :pswitch_1b6
        :pswitch_1db
        :pswitch_202
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ACCESS_TOKEN"

    invoke-static {v3, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->accessToken:Ljava/lang/String;

    if-eqz v3, :cond_24

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->accessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_24
    const-string/jumbo v3, "\u8bf7\u5148\u6388\u6743"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->finish()V

    :goto_31
    return-void

    :cond_32
    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->context:Landroid/content/Context;

    new-instance v0, Lcom/tencent/weibo/sdk/android/model/AccountModel;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->accessToken:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/tencent/weibo/sdk/android/model/AccountModel;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    invoke-direct {v3, v0}, Lcom/tencent/weibo/sdk/android/api/WeiboAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    iput-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->weiboAPI:Lcom/tencent/weibo/sdk/android/api/WeiboAPI;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    const-string/jumbo v4, "test2x"

    invoke-static {v4, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    aput v4, v3, v5

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->lyout:[I

    const-string/jumbo v4, "test2x"

    invoke-static {v4, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    aput v4, v3, v6

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->initview()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    const-string/jumbo v4, "\u6b63\u5728\u53d1\u9001\u8bf7\u7a0d\u540e......"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->setonclick()V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/tencent/weibo/sdk/android/component/PublishActivity$2;

    invoke-direct {v3, p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$2;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_31
.end method

.method public onResult(Ljava/lang/Object;)V
    .registers 5

    const/16 v2, 0xfa0

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_13
    if-eqz p1, :cond_2a

    move-object v0, p1

    check-cast v0, Lcom/tencent/weibo/sdk/android/model/ModelResult;

    invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isExpires()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getError_message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string/jumbo v1, "\u53d1\u9001\u6210\u529f"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "\u53d1\u9001\u6210\u529f"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->finish()V

    goto :goto_2a

    :cond_49
    check-cast p1, Lcom/tencent/weibo/sdk/android/model/ModelResult;

    invoke-virtual {p1}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getError_message()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2a
.end method

.method protected onResume()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "mkl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_39
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->location:Ljava/util/Map;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    const-string/jumbo v3, "dingwei_icon_hover2x"

    invoke-static {v3, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_49
    return-void

    :cond_4a
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/tencent/weibo/sdk/android/component/PublishActivity$3;-><init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_39

    :cond_5a
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;

    const-string/jumbo v3, "dingwei_icon2x"

    invoke-static {v3, p0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_49
.end method

.method public zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .registers 20

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v13, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v10, v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-wide/from16 v0, p2

    double-to-float v2, v0

    div-float v12, v2, v13

    move-wide/from16 v0, p4

    double-to-float v2, v0

    div-float v11, v2, v10

    invoke-virtual {v7, v12, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v13

    float-to-int v6, v10

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9
.end method
