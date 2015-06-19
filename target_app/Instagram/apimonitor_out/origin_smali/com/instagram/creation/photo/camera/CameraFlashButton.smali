.class public Lcom/instagram/creation/photo/camera/CameraFlashButton;
.super Landroid/widget/ImageView;
.source "CameraFlashButton.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/instagram/creation/photo/camera/b;->b:I

    iput v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->d:I

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/instagram/creation/photo/camera/b;->b:I

    iput v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->d:I

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/instagram/creation/photo/camera/b;->b:I

    iput v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->d:I

    invoke-direct {p0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->camera_flash_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->camera_flash_auto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    sget-object v0, Lcom/instagram/creation/photo/camera/a;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a:Landroid/graphics/drawable/Drawable;

    :goto_b
    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    :pswitch_f
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->d:I

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->d:I

    goto :goto_4
.end method

.method public getCurrentMode$2508da22()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->d:I

    return v0
.end method

.method public performClick()Z
    .registers 3

    sget-object v0, Lcom/instagram/creation/photo/camera/a;->a:[I

    iget v1, p0, Lcom/instagram/creation/photo/camera/CameraFlashButton;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    sget v0, Lcom/instagram/creation/photo/camera/b;->b:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    :goto_10
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0

    :pswitch_15
    sget v0, Lcom/instagram/creation/photo/camera/b;->c:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto :goto_10

    :pswitch_1b
    sget v0, Lcom/instagram/creation/photo/camera/b;->a:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/camera/CameraFlashButton;->a(I)V

    goto :goto_10

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method
