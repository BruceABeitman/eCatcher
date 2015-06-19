.class public Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
.super Landroid/widget/ImageView;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/artist/view/f;
.implements Lcom/squareup/picasso/ai;
.field private a:Lcom/spotify/mobile/android/spotlets/artist/view/d;
.field private b:Ljava/util/List;
.field private c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
.field private d:Lcom/spotify/mobile/android/spotlets/artist/util/a;
.field private e:Ljava/lang/String;
.field private f:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
const-class v1, Lcom/spotify/mobile/android/spotlets/artist/util/a;
new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/util/a;
invoke-direct {v2}, Lcom/spotify/mobile/android/spotlets/artist/util/a;-><init>()V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b:Ljava/util/List;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
const-class v1, Lcom/spotify/mobile/android/spotlets/artist/util/a;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/util/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->d:Lcom/spotify/mobile/android/spotlets/artist/util/a;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b:Ljava/util/List;
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
const-class v1, Lcom/spotify/mobile/android/spotlets/artist/util/a;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/util/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->d:Lcom/spotify/mobile/android/spotlets/artist/util/a;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b:Ljava/util/List;
return-object v0
.end method
.method private a(Landroid/graphics/Bitmap;)V
.registers 3
sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setImageBitmap(Landroid/graphics/Bitmap;)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;->b:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->f:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
invoke-interface {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/g;->a(Ljava/lang/Object;)V
:cond_15
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;Landroid/graphics/Bitmap;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a(Landroid/graphics/Bitmap;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)Lcom/spotify/mobile/android/spotlets/artist/util/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->d:Lcom/spotify/mobile/android/spotlets/artist/util/a;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
return-object v0
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->d:Lcom/spotify/mobile/android/spotlets/artist/util/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/util/a;->a(Ljava/lang/String;)Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->d:Lcom/spotify/mobile/android/spotlets/artist/util/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/util/a;->a(Ljava/lang/String;)Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b:Ljava/util/List;
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a(Landroid/graphics/Bitmap;)V
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a:Lcom/spotify/mobile/android/spotlets/artist/view/d;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a:Lcom/spotify/mobile/android/spotlets/artist/view/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/d;->getStatus()Landroid/os/AsyncTask$Status;
move-result-object v0
sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
if-eq v0, v1, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a:Lcom/spotify/mobile/android/spotlets/artist/view/d;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/d;->cancel(Z)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a:Lcom/spotify/mobile/android/spotlets/artist/view/d;
:cond_3a
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/d;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
invoke-direct {v0, p0, v1, p1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/d;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;Ljava/lang/String;Landroid/graphics/Bitmap;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a:Lcom/spotify/mobile/android/spotlets/artist/view/d;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a:Lcom/spotify/mobile/android/spotlets/artist/view/d;
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_22
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->c:Lcom/spotify/mobile/android/spotlets/artist/view/g;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public final b()I
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->f:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;
sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;
if-ne v0, v1, :cond_d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getMeasuredHeight()I
move-result v0
div-int/lit8 v0, v0, 0x2
:goto_c
return v0
:cond_d
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-object v2, v0
:goto_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_42
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/FaceDetector$Face;
invoke-virtual {v2}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_3c
invoke-virtual {v0}, Landroid/media/FaceDetector$Face;->eyesDistance()F
move-result v4
invoke-virtual {v2}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/media/FaceDetector$Face;
invoke-virtual {v1}, Landroid/media/FaceDetector$Face;->eyesDistance()F
move-result v1
cmpl-float v1, v4, v1
if-lez v1, :cond_78
:cond_3c
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
:goto_40
move-object v2, v0
goto :goto_18
:cond_42
invoke-virtual {v2}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-nez v0, :cond_4f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getMeasuredHeight()I
move-result v0
div-int/lit8 v0, v0, 0x3
goto :goto_c
:cond_4f
invoke-virtual {v2}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/FaceDetector$Face;
new-instance v1, Landroid/graphics/PointF;
invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V
invoke-virtual {v0, v1}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getMeasuredWidth()I
move-result v2
int-to-float v2, v2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
int-to-float v0, v0
div-float v0, v2, v0
iget v1, v1, Landroid/graphics/PointF;->y:F
mul-float/2addr v0, v1
float-to-int v0, v0
goto :goto_c
:cond_78
move-object v0, v2
goto :goto_40
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)V
.registers 2
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
if-eqz p1, :cond_10
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_12
:cond_10
const/4 v0, 0x0
goto :goto_3
:cond_12
check-cast p1, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 3
sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_d
sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
:goto_9
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_d
sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
goto :goto_9
.end method
.method public setImageResource(I)V
.registers 3
sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->f:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection$Contents;
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
.end method