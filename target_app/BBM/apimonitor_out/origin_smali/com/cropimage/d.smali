.class final Lcom/cropimage/d;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/cropimage/CropImage;


# direct methods
.method constructor <init>(Lcom/cropimage/CropImage;)V
    .registers 2

    iput-object p1, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "Rotate Right tapped"

    const-class v1, Lcom/cropimage/CropImage;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    invoke-virtual {v1}, Lcom/cropimage/CropImage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    iget-object v2, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    invoke-static {v2}, Lcom/cropimage/CropImage;->b(Lcom/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x42b4

    invoke-static {v2, v0, v3}, Lcom/cropimage/n;->a(Landroid/graphics/Bitmap;Landroid/graphics/Point;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cropimage/CropImage;->a(Lcom/cropimage/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    invoke-static {v0}, Lcom/cropimage/CropImage;->c(Lcom/cropimage/CropImage;)Lcom/cropimage/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    invoke-static {v1}, Lcom/cropimage/CropImage;->b(Lcom/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cropimage/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    invoke-static {v0}, Lcom/cropimage/CropImage;->c(Lcom/cropimage/CropImage;)Lcom/cropimage/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    iget-object v1, v1, Lcom/cropimage/CropImage;->b:Lcom/cropimage/g;

    invoke-virtual {v0, v1}, Lcom/cropimage/CropImageView;->a(Lcom/cropimage/g;)V

    iget-object v0, p0, Lcom/cropimage/d;->a:Lcom/cropimage/CropImage;

    invoke-static {v0}, Lcom/cropimage/CropImage;->d(Lcom/cropimage/CropImage;)V

    return-void
.end method
