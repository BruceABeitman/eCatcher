.class public Lco/vine/android/UploadsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UploadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/UploadsAdapter$UploadViewHolder;
    }
.end annotation


# instance fields
.field protected final mAppController:Lco/vine/android/client/AppController;

.field private final mDividerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;I)V
    .registers 5

    const v0, 0x7f090094

    invoke-direct {p0, p1, p2, p3, v0}, Lco/vine/android/UploadsAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;II)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p2, p0, Lco/vine/android/UploadsAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/UploadsAdapter;->mDividerColor:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/UploadsAdapter$UploadViewHolder;

    iget-object v2, v0, Lco/vine/android/UploadsAdapter$UploadViewHolder;->status:Landroid/widget/TextView;

    const v3, 0x7f0e025a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lco/vine/android/UploadsAdapter$UploadViewHolder;->retry:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v0, Lco/vine/android/UploadsAdapter$UploadViewHolder;->retry:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_21
    const/4 v2, 0x6

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lco/vine/android/UploadsAdapter$UploadViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03009f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lco/vine/android/UploadsAdapter;->mDividerColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lco/vine/android/UploadsAdapter$UploadViewHolder;

    invoke-direct {v0, p0, v2}, Lco/vine/android/UploadsAdapter$UploadViewHolder;-><init>(Lco/vine/android/UploadsAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method
