.class final Lcom/instagram/android/nux/m;
.super Ljava/lang/Object;
.source "LandingBackgroundView.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/instagram/android/nux/m;->a:I

    iput p2, p0, Lcom/instagram/android/nux/m;->b:I

    iput p3, p0, Lcom/instagram/android/nux/m;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    :cond_c
    return-void
.end method

.method public final a(Landroid/content/res/Resources;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/instagram/android/nux/m;->a:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    :cond_c
    return-void
.end method
