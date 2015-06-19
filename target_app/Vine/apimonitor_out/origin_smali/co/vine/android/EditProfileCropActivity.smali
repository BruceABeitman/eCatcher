.class public Lco/vine/android/EditProfileCropActivity;
.super Lco/vine/android/CropActivity;
.source "EditProfileCropActivity.java"


# instance fields
.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/CropActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBitmapProcessingDone(Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/CropActivity;->onBitmapProcessingDone(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lco/vine/android/EditProfileCropActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    const v6, 0x7f0a00c9

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f030032

    invoke-super {p0, p1, v0}, Lco/vine/android/CropActivity;->onCreate(Landroid/os/Bundle;I)V

    invoke-virtual {p0, v6}, Lco/vine/android/EditProfileCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lco/vine/android/EditProfileCropActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lco/vine/android/EditProfileCropActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lco/vine/android/EditProfileCropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    invoke-virtual {v0, v3}, Lco/vine/android/widget/CroppableImageView;->setCropType(I)V

    const v1, 0x3f8ccccd

    const/high16 v2, 0x4140

    new-array v3, v3, [Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lco/vine/android/EditProfileCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lco/vine/android/EditProfileCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v5

    invoke-static {p0, v1, v2, v3}, Lco/vine/android/util/ViewUtil;->reduceTextSizeViaFontScaleIfNeeded(Landroid/content/Context;FF[Landroid/widget/TextView;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0e00a5

    invoke-virtual {p0, v7, v0, v1, v7}, Lco/vine/android/EditProfileCropActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    return-void
.end method
