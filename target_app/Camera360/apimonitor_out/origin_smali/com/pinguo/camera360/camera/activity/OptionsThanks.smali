.class public Lcom/pinguo/camera360/camera/activity/OptionsThanks;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "OptionsThanks.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/activity/OptionsThanks$Author;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private author:[Ljava/lang/String;

.field private image:[I

.field private layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;

.field private mOptionsThanks:Lcom/pinguo/camera360/ui/TitleView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/16 v3, 0xc

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "@jojo nicdao"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "@paul bica"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "@Salim Photography"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "@F. Montino"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "@Sander vander Wel"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "@saturn ?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "@Stuck in Customs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "@Tregoning"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "@anieto2k"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "@mohammadali"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "@\u042fick-Harris"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "@MorBCN"

    aput-object v2, v0, v1

    const-string/jumbo v1, "@Nicki-Varkevisser"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->author:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_68

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->image:[I

    return-void

    nop

    :array_68
    .array-data 0x4
        0x97t 0x2t 0x2t 0x7ft
        0x9bt 0x2t 0x2t 0x7ft
        0x9ct 0x2t 0x2t 0x7ft
        0x9dt 0x2t 0x2t 0x7ft
        0x9et 0x2t 0x2t 0x7ft
        0x9ft 0x2t 0x2t 0x7ft
        0xa0t 0x2t 0x2t 0x7ft
        0xa1t 0x2t 0x2t 0x7ft
        0xa2t 0x2t 0x2t 0x7ft
        0x98t 0x2t 0x2t 0x7ft
        0x99t 0x2t 0x2t 0x7ft
        0x9at 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private initData()V
    .registers 11

    const/4 v9, 0x2

    const/4 v5, 0x0

    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_19
    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->image:[I

    array-length v1, v1

    if-lt v7, v1, :cond_3d

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f0300d7

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v1, "ItemImage"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string/jumbo v5, "ItemText"

    aput-object v5, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_60

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_3d
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "ItemImage"

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->image:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ItemText"

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->author:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :array_60
    .array-data 0x4
        0xd3t 0x4t 0xat 0x7ft
        0xd4t 0x4t 0xat 0x7ft
    .end array-data
.end method

.method private initView()V
    .registers 6

    const v3, 0x7f0a04d1

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->mOptionsThanks:Lcom/pinguo/camera360/ui/TitleView;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->mOptionsThanks:Lcom/pinguo/camera360/ui/TitleView;

    const v4, 0x7f08025a

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->mOptionsThanks:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v3, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v3, 0x7f0a04d0

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->layOptionMain:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    const v3, 0x7f0a0484

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {p0}, Lcom/pinguo/lib/UIContants;->getDisplay(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300d6

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->initView()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->initData()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsThanks;->finish()V

    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .registers 3

    return-void
.end method
