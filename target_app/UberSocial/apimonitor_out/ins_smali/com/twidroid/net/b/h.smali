.class public Lcom/twidroid/net/b/h;
.super Lcom/twidroid/net/b/i;
.source "SourceFile"
.field private static final f:Ljava/lang/String; = "ImageResizer"
.field protected a:I
.field protected b:I
.method public constructor <init>(Landroid/content/Context;I)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/net/b/i;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, p2}, Lcom/twidroid/net/b/h;->a(I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;II)V
.registers 4
invoke-direct {p0, p1}, Lcom/twidroid/net/b/i;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, p2, p3}, Lcom/twidroid/net/b/h;->a(II)V
return-void
.end method
.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
.registers 7
iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
const/4 v0, 0x1
if-gt v1, p2, :cond_9
if-le v2, p1, :cond_2d
:cond_9
if-le v2, v1, :cond_25
int-to-float v0, v1
int-to-float v3, p2
div-float/2addr v0, v3
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
:goto_12
mul-int/2addr v1, v2
int-to-float v1, v1
mul-int v2, p1, p2
mul-int/lit8 v2, v2, 0x2
int-to-float v2, v2
:goto_19
mul-int v3, v0, v0
int-to-float v3, v3
div-float v3, v1, v3
cmpl-float v3, v3, v2
if-lez v3, :cond_2d
add-int/lit8 v0, v0, 0x1
goto :goto_19
:cond_25
int-to-float v0, v2
int-to-float v3, p1
div-float/2addr v0, v3
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_12
:cond_2d
return v0
.end method
.method public static a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
.registers 6
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-static {v0, p2, p3}, Lcom/twidroid/net/b/h;->a(Landroid/graphics/BitmapFactory$Options;II)I
move-result v1
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
.registers 6
const/4 v2, 0x0
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-static {v0, p1, p2}, Lcom/twidroid/net/b/h;->a(Landroid/graphics/BitmapFactory$Options;II)I
move-result v1
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 5
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-static {v0, p1, p2}, Lcom/twidroid/net/b/h;->a(Landroid/graphics/BitmapFactory$Options;II)I
move-result v1
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method private c(I)Landroid/graphics/Bitmap;
.registers 5
iget-object v0, p0, Lcom/twidroid/net/b/h;->e:Landroid/content/res/Resources;
iget v1, p0, Lcom/twidroid/net/b/h;->a:I
iget v2, p0, Lcom/twidroid/net/b/h;->b:I
invoke-static {v0, p1, v1, v2}, Lcom/twidroid/net/b/h;->a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.registers 3
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-direct {p0, v0}, Lcom/twidroid/net/b/h;->c(I)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public a(I)V
.registers 2
invoke-virtual {p0, p1, p1}, Lcom/twidroid/net/b/h;->a(II)V
return-void
.end method
.method public a(II)V
.registers 3
iput p1, p0, Lcom/twidroid/net/b/h;->a:I
iput p2, p0, Lcom/twidroid/net/b/h;->b:I
return-void
.end method
.method public a(Ljava/lang/Object;Landroid/widget/ImageView;)V
.registers 7
instance-of v0, p1, Lcom/twidroid/net/b/c;
if-eqz v0, :cond_60
const-string v1, "ImageResizer"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "requested image w= "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object v0, p1
check-cast v0, Lcom/twidroid/net/b/c;
invoke-virtual {v0}, Lcom/twidroid/net/b/c;->d()I
move-result v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " h="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object v0, p1
check-cast v0, Lcom/twidroid/net/b/c;
invoke-virtual {v0}, Lcom/twidroid/net/b/c;->c()I
move-result v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Lcom/twidroid/net/b/c;
invoke-virtual {v0}, Lcom/twidroid/net/b/c;->a()Z
move-result v0
if-eqz v0, :cond_55
const-string v0, "ImageResizer"
const-string v1, "Using default size because -1 was as size for image"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/net/b/c;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget v2, p0, Lcom/twidroid/net/b/h;->b:I
iget v3, p0, Lcom/twidroid/net/b/h;->a:I
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/b/c;-><init>(Ljava/lang/String;II)V
invoke-super {p0, v0, p2}, Lcom/twidroid/net/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
:goto_54
return-void
:cond_55
const-string v0, "ImageResizer"
const-string v1, "Params was good, proceeding"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Lcom/twidroid/net/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto :goto_54
:cond_60
const-string v0, "ImageResizer"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Using default size because param was not ImageParams for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/net/b/c;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget v2, p0, Lcom/twidroid/net/b/h;->b:I
iget v3, p0, Lcom/twidroid/net/b/h;->a:I
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/b/c;-><init>(Ljava/lang/String;II)V
invoke-super {p0, v0, p2}, Lcom/twidroid/net/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto :goto_54
.end method