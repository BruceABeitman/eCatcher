.class public Lcom/pinguo/album/activities/PGAlbumGuideActivity;
.super Landroid/app/Activity;
.source "PGAlbumGuideActivity.java"


# instance fields
.field private mStart:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    packed-switch p2, :pswitch_data_16

    :goto_3
    return-void

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/pinguo/album/activities/PGAlbumActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->finish()V

    goto :goto_3

    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->requestWindowFeature(I)Z

    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->setContentView(I)V

    const v7, 0x7f0a0047

    invoke-virtual {p0, v7}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/pinguo/album/activities/PGAlbumGuideActivity$1;

    invoke-direct {v8, p0}, Lcom/pinguo/album/activities/PGAlbumGuideActivity$1;-><init>(Lcom/pinguo/album/activities/PGAlbumGuideActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a0049

    invoke-virtual {p0, v7}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->mStart:Landroid/widget/Button;

    iget-object v7, p0, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->mStart:Landroid/widget/Button;

    new-instance v8, Lcom/pinguo/album/activities/PGAlbumGuideActivity$2;

    invoke-direct {v8, p0}, Lcom/pinguo/album/activities/PGAlbumGuideActivity$2;-><init>(Lcom/pinguo/album/activities/PGAlbumGuideActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v3

    const v8, 0x3e2e147b

    mul-float v1, v7, v8

    iget-object v7, p0, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->mStart:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v7, v1

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v7, v3

    const v8, 0x3dd4fdf4

    mul-float v5, v7, v8

    const v7, 0x7f0a0048

    invoke-virtual {p0, v7}, Lcom/pinguo/album/activities/PGAlbumGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v7, v5

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method
