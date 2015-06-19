.class public final Lcom/bbm/ui/cl;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"
.field protected a:Lcom/bbm/util/b/b;
.field protected b:Landroid/graphics/Bitmap;
.field protected c:I
.field protected d:J
.field protected e:J
.method private constructor <init>(Lcom/bbm/util/b/b;)V
.registers 5
const-wide/16 v0, 0x0
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput-wide v0, p0, Lcom/bbm/ui/cl;->d:J
iput-wide v0, p0, Lcom/bbm/ui/cl;->e:J
iput-object p1, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
const/4 v0, 0x0
:goto_c
iget-object v1, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v1}, Lcom/bbm/util/b/b;->c()I
move-result v1
if-ge v0, v1, :cond_20
iget v1, p0, Lcom/bbm/ui/cl;->c:I
invoke-direct {p0, v0}, Lcom/bbm/ui/cl;->a(I)I
move-result v2
add-int/2addr v1, v2
iput v1, p0, Lcom/bbm/ui/cl;->c:I
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_20
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0}, Lcom/bbm/util/b/b;->c()I
move-result v0
if-eqz v0, :cond_2b
invoke-virtual {p0}, Lcom/bbm/ui/cl;->b()V
:cond_2b
return-void
.end method
.method private a(I)I
.registers 4
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0, p1}, Lcom/bbm/util/b/b;->a(I)I
move-result v0
const/16 v1, 0x14
if-ge v0, v1, :cond_c
const/16 v0, 0x64
:cond_c
return v0
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/ui/cl;
.registers 2
invoke-static {p0}, Lcom/bbm/util/bj;->f(Ljava/lang/String;)[B
move-result-object v0
invoke-static {v0}, Lcom/bbm/ui/cl;->a([B)Lcom/bbm/ui/cl;
move-result-object v0
return-object v0
.end method
.method public static a([B)Lcom/bbm/ui/cl;
.registers 5
const/4 v0, 0x0
:try_start_1
new-instance v2, Lcom/bbm/util/b/b;
invoke-direct {v2}, Lcom/bbm/util/b/b;-><init>()V
invoke-virtual {v2, p0}, Lcom/bbm/util/b/b;->a([B)I
move-result v1
if-eqz v1, :cond_d
:cond_c
:goto_c
return-object v0
:cond_d
invoke-virtual {v2}, Lcom/bbm/util/b/b;->c()I
move-result v1
const/4 v3, 0x1
if-le v1, v3, :cond_c
new-instance v1, Lcom/bbm/ui/cl;
invoke-direct {v1, v2}, Lcom/bbm/ui/cl;-><init>(Lcom/bbm/util/b/b;)V
iget v2, v1, Lcom/bbm/ui/cl;->c:I
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1f
.catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1b} :catch_24
if-lez v2, :cond_c
move-object v0, v1
goto :goto_c
:catch_1f
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_c
:catch_24
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_c
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/bbm/ui/cl;->d:J
return-void
.end method
.method public final a()[B
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0}, Lcom/bbm/util/b/b;->f()[B
move-result-object v0
return-object v0
.end method
.method public final b()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0}, Lcom/bbm/util/b/b;->c()I
move-result v0
if-lt v2, v0, :cond_e
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0}, Lcom/bbm/util/b/b;->b()V
:cond_e
const/4 v0, 0x0
:goto_f
if-gt v0, v2, :cond_21
iget-object v1, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v1}, Lcom/bbm/util/b/b;->a()V
iget-object v1, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v1}, Lcom/bbm/util/b/b;->e()Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_21
return-void
.end method
.method public final b(J)V
.registers 3
iput-wide p1, p0, Lcom/bbm/ui/cl;->e:J
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0}, Lcom/bbm/util/b/b;->a()V
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0}, Lcom/bbm/util/b/b;->e()Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
return-void
.end method
.method public final d()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
const/4 v1, 0x0
invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
:cond_b
return-void
.end method
.method public final e()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cl;->a:Lcom/bbm/util/b/b;
invoke-virtual {v0}, Lcom/bbm/util/b/b;->d()I
move-result v0
invoke-direct {p0, v0}, Lcom/bbm/ui/cl;->a(I)I
move-result v0
return v0
.end method
.method public final f()J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/cl;->d:J
return-wide v0
.end method
.method public final g()J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/cl;->e:J
return-wide v0
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
goto :goto_5
.end method
.method public final getIntrinsicWidth()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/bbm/ui/cl;->b:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
goto :goto_5
.end method
.method public final getOpacity()I
.registers 2
const/4 v0, -0x3
return v0
.end method
.method public final setAlpha(I)V
.registers 2
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method