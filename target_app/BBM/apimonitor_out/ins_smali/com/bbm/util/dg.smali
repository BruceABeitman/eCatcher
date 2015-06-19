.class public final Lcom/bbm/util/dg;
.super Ljava/lang/Object;
.source "ShareMyPinUtil.java"
.method static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 11
const/4 v4, 0x0
const-string v0, ""
move v2, v4
move-object v3, v0
:goto_5
const/4 v0, 0x4
if-ge v2, v0, :cond_4d
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v0
const-wide/high16 v5, 0x406e
mul-double/2addr v0, v5
const-wide/high16 v5, 0x4030
add-double/2addr v0, v5
double-to-int v1, v0
if-nez v1, :cond_2d
const-string v0, "0"
:cond_17
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
add-int/lit8 v0, v2, 0x1
move v2, v0
move-object v3, v1
goto :goto_5
:cond_2d
const-string v0, ""
:goto_2f
if-lez v1, :cond_17
rem-int/lit8 v5, v1, 0x10
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "0123456789ABCDEF"
invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
div-int/lit8 v1, v1, 0x10
goto :goto_2f
:cond_4d
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "bbm:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:try_start_64
new-instance v1, Lcom/google/zxing/g/b;
invoke-direct {v1}, Lcom/google/zxing/g/b;-><init>()V
sget-object v1, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;
const/16 v2, 0x19f
const/16 v3, 0x19f
invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/g/b;->a(Ljava/lang/String;Lcom/google/zxing/a;II)Lcom/google/zxing/b/b;
move-result-object v6
iget v3, v6, Lcom/google/zxing/b/b;->a:I
iget v7, v6, Lcom/google/zxing/b/b;->b:I
mul-int v0, v3, v7
new-array v1, v0, [I
move v5, v4
:goto_7c
if-ge v5, v7, :cond_99
mul-int v8, v5, v3
move v2, v4
:goto_81
if-ge v2, v3, :cond_95
add-int v9, v8, v2
invoke-virtual {v6, v2, v5}, Lcom/google/zxing/b/b;->a(II)Z
move-result v0
if-eqz v0, :cond_93
const/high16 v0, -0x100
:goto_8d
aput v0, v1, v9
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_81
:cond_93
const/4 v0, -0x1
goto :goto_8d
:cond_95
add-int/lit8 v0, v5, 0x1
move v5, v0
goto :goto_7c
:cond_99
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move v6, v3
invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
:try_end_a6
.catch Lcom/google/zxing/q; {:try_start_64 .. :try_end_a6} :catch_a7
:goto_a6
return-object v0
:catch_a7
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_a6
.end method
.method public static a(Landroid/app/Activity;)V
.registers 2
new-instance v0, Lcom/bbm/util/dh;
invoke-direct {v0, p0}, Lcom/bbm/util/dh;-><init>(Landroid/app/Activity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;)V
.registers 9
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.SEND"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "android.intent.extra.STREAM"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "android.intent.extra.TEXT"
invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0692
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "image/jpeg"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const v1, 0x7f0e0690
invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method