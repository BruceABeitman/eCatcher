.class public Lco/vine/android/recorder/PictureConverter$ScaleStep;
.super Ljava/lang/Object;
.source "PictureConverter.java"
.field private final mPreScaleBitmap:Landroid/graphics/Bitmap;
.field private final mPreScaleCanvas:Landroid/graphics/Canvas;
.field private final mPreScaleMatrix:Landroid/graphics/Matrix;
.field private final scaledH:I
.field private final scaledW:I
.field final synthetic this$0:Lco/vine/android/recorder/PictureConverter;
.method private constructor <init>(Lco/vine/android/recorder/PictureConverter;F)V
.registers 6
iput-object p1, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->this$0:Lco/vine/android/recorder/PictureConverter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleMatrix:Landroid/graphics/Matrix;
#getter for: Lco/vine/android/recorder/PictureConverter;->lastH:I
invoke-static {p1}, Lco/vine/android/recorder/PictureConverter;->access$000(Lco/vine/android/recorder/PictureConverter;)I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, p2
float-to-int v0, v0
iput v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledW:I
#getter for: Lco/vine/android/recorder/PictureConverter;->lastH:I
invoke-static {p1}, Lco/vine/android/recorder/PictureConverter;->access$000(Lco/vine/android/recorder/PictureConverter;)I
move-result v0
iput v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledH:I
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleMatrix:Landroid/graphics/Matrix;
iget v1, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledW:I
int-to-float v1, v1
#getter for: Lco/vine/android/recorder/PictureConverter;->lastW:I
invoke-static {p1}, Lco/vine/android/recorder/PictureConverter;->access$100(Lco/vine/android/recorder/PictureConverter;)I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
const/high16 v2, 0x3f80
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
iget v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledW:I
iget v1, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledH:I
sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleBitmap:Landroid/graphics/Bitmap;
new-instance v0, Landroid/graphics/Canvas;
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleBitmap:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleCanvas:Landroid/graphics/Canvas;
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/recorder/PictureConverter;FLco/vine/android/recorder/PictureConverter$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lco/vine/android/recorder/PictureConverter$ScaleStep;-><init>(Lco/vine/android/recorder/PictureConverter;F)V
return-void
.end method
.method static synthetic access$400(Lco/vine/android/recorder/PictureConverter$ScaleStep;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scale()V
return-void
.end method
.method static synthetic access$500(Lco/vine/android/recorder/PictureConverter$ScaleStep;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/recorder/PictureConverter$ScaleStep;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledW:I
return v0
.end method
.method static synthetic access$800(Lco/vine/android/recorder/PictureConverter$ScaleStep;)I
.registers 2
iget v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->scaledH:I
return v0
.end method
.method private scale()V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleCanvas:Landroid/graphics/Canvas;
iget-object v1, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->this$0:Lco/vine/android/recorder/PictureConverter;
#getter for: Lco/vine/android/recorder/PictureConverter;->srcBmp:Landroid/graphics/Bitmap;
invoke-static {v1}, Lco/vine/android/recorder/PictureConverter;->access$200(Lco/vine/android/recorder/PictureConverter;)Landroid/graphics/Bitmap;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->mPreScaleMatrix:Landroid/graphics/Matrix;
iget-object v3, p0, Lco/vine/android/recorder/PictureConverter$ScaleStep;->this$0:Lco/vine/android/recorder/PictureConverter;
#getter for: Lco/vine/android/recorder/PictureConverter;->mPaint:Landroid/graphics/Paint;
invoke-static {v3}, Lco/vine/android/recorder/PictureConverter;->access$300(Lco/vine/android/recorder/PictureConverter;)Landroid/graphics/Paint;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
return-void
.end method