.class public Lus/pinguo/androidsdk/pgedit/PGEditImageView;
.super Landroid/widget/ImageView;
.source "PGEditImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEffectBitmap:Landroid/graphics/Bitmap;

.field private mOrgBitmap:Landroid/graphics/Bitmap;

.field private mOrgText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getEffectBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOrgBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    :cond_7
    :goto_7
    const/4 v0, 0x1

    return v0

    :pswitch_9
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgText:Landroid/view/View;

    invoke-static {p0, v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->measureAndChangeViewLayout(Landroid/view/View;IILandroid/util/DisplayMetrics;Landroid/view/View;)V

    goto :goto_7

    :pswitch_2c
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgText:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgText:Landroid/view/View;

    invoke-static {p0, v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->measureAndChangeViewLayout(Landroid/view/View;IILandroid/util/DisplayMetrics;Landroid/view/View;)V

    goto :goto_7

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2c
    .end packed-switch
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public setEffectBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mEffectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOrgBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOrgText(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->mOrgText:Landroid/view/View;

    return-void
.end method
