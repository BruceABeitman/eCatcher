.class public Lcom/pinguo/share/theme/ShareThemeDetailsActivity;
.super Landroid/app/Activity;
.source "ShareThemeDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnThemeDetailsUse:Landroid/widget/Button;

.field private intent:Landroid/content/Intent;

.field private ivThemeDetails:Landroid/widget/ImageView;

.field private ivThemeDetailsBack:Landroid/widget/ImageView;

.field private mDetails:Ljava/lang/String;

.field private mDetailsPicturePath:Ljava/lang/String;

.field private tvThemeDetails:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetailsBack:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->btnThemeDetailsUse:Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetails:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->tvThemeDetails:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetailsPicturePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetails:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->intent:Landroid/content/Intent;

    return-void
.end method

.method private initData()V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "big_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetailsPicturePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetailsPicturePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetailsPicturePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetailsPicturePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetailsPicturePath:Ljava/lang/String;

    :cond_31
    iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "push"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetails:Ljava/lang/String;

    return-void
.end method

.method private initListener()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetailsBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetails:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->btnThemeDetailsUse:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetailsBack:Landroid/widget/ImageView;

    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->btnThemeDetailsUse:Landroid/widget/Button;

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetails:Landroid/widget/ImageView;

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->tvThemeDetails:Landroid/widget/TextView;

    return-void
.end method

.method private updateView()V
    .registers 15

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetails:Ljava/lang/String;

    if-eqz v11, :cond_44

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->tvThemeDetails:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetails:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->tvThemeDetails:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->tvThemeDetails:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    instance-of v11, v8, Landroid/text/Spannable;

    if-eqz v11, :cond_44

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->tvThemeDetails:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    const/4 v11, 0x0

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v6, v11, v4, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->tvThemeDetails:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->mDetailsPicturePath:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetails:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetails:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v11, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v12, 0x4120

    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    sub-int v9, v11, v12

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    mul-int v11, v0, v9

    div-int/2addr v11, v2

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v11, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->ivThemeDetails:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8a
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->finish()V

    goto :goto_7

    :pswitch_c
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->finish()V

    iget-object v1, p0, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/ShareAccess;->statShareThemeTemplateSelected(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    const-class v1, Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "share theme Details "

    invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->setSelect(I)V

    goto :goto_7

    :pswitch_37
    invoke-virtual {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->finish()V

    goto :goto_7

    nop

    :pswitch_data_3c
    .packed-switch 0x7f0a00b6
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_37
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->initData()V

    invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->initView()V

    invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->initListener()V

    invoke-direct {p0}, Lcom/pinguo/share/theme/ShareThemeDetailsActivity;->updateView()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnResume(Landroid/app/Activity;)V

    return-void
.end method
