.class public Lcom/b/a/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static c:Ljava/lang/ThreadLocal;
.field public a:Lcom/b/a/a/a/a/e;
.field public b:Lcom/b/a/a/a/a/d;
.field private d:[I
.field private e:Landroid/graphics/Bitmap;
.field private f:I
.field private g:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
sput-object v0, Lcom/b/a/a/a/a/c;->c:Ljava/lang/ThreadLocal;
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 10
const/4 v0, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lcom/b/a/a/a/a/e;
invoke-direct {v1, p0}, Lcom/b/a/a/a/a/e;-><init>(Lcom/b/a/a/a/a/c;)V
iput-object v1, p0, Lcom/b/a/a/a/a/c;->a:Lcom/b/a/a/a/a/e;
new-instance v1, Lcom/b/a/a/a/a/d;
invoke-direct {v1, p0}, Lcom/b/a/a/a/a/d;-><init>(Lcom/b/a/a/a/a/c;)V
iput-object v1, p0, Lcom/b/a/a/a/a/c;->b:Lcom/b/a/a/a/a/d;
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/b/a/a/a/a/c;->e:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/b/a/a/a/a/c;->e:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
iput v1, p0, Lcom/b/a/a/a/a/c;->f:I
iget-object v1, p0, Lcom/b/a/a/a/a/c;->e:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
iput v1, p0, Lcom/b/a/a/a/a/c;->g:I
iget v1, p0, Lcom/b/a/a/a/a/c;->f:I
if-lez v1, :cond_4f
iget v1, p0, Lcom/b/a/a/a/a/c;->g:I
if-lez v1, :cond_4f
:goto_33
invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V
iget v0, p0, Lcom/b/a/a/a/a/c;->f:I
iget v1, p0, Lcom/b/a/a/a/a/c;->g:I
mul-int/2addr v0, v1
new-array v0, v0, [I
iput-object v0, p0, Lcom/b/a/a/a/a/c;->d:[I
iget-object v0, p0, Lcom/b/a/a/a/a/c;->e:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/b/a/a/a/a/c;->d:[I
iget v3, p0, Lcom/b/a/a/a/a/c;->f:I
iget v6, p0, Lcom/b/a/a/a/a/c;->f:I
iget v7, p0, Lcom/b/a/a/a/a/c;->g:I
move v4, v2
move v5, v2
invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
return-void
:cond_4f
move v0, v2
goto :goto_33
.end method
.method public constructor <init>([III)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/b/a/a/a/a/e;
invoke-direct {v0, p0}, Lcom/b/a/a/a/a/e;-><init>(Lcom/b/a/a/a/a/c;)V
iput-object v0, p0, Lcom/b/a/a/a/a/c;->a:Lcom/b/a/a/a/a/e;
new-instance v0, Lcom/b/a/a/a/a/d;
invoke-direct {v0, p0}, Lcom/b/a/a/a/a/d;-><init>(Lcom/b/a/a/a/a/c;)V
iput-object v0, p0, Lcom/b/a/a/a/a/c;->b:Lcom/b/a/a/a/a/d;
iput p2, p0, Lcom/b/a/a/a/a/c;->f:I
iput p3, p0, Lcom/b/a/a/a/a/c;->g:I
array-length v0, p1
new-array v0, v0, [I
iput-object v0, p0, Lcom/b/a/a/a/a/c;->d:[I
iget-object v0, p0, Lcom/b/a/a/a/a/c;->d:[I
array-length v1, p1
invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Lcom/b/a/a/a/a/c;->d:[I
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/b/a/a/a/a/c;->e:Landroid/graphics/Bitmap;
return-void
.end method
.method public static a()Lcom/b/a/a/a/a/m;
.registers 2
sget-object v0, Lcom/b/a/a/a/a/c;->c:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/b/a/a/a/a/m;
if-nez v0, :cond_14
sget-object v1, Lcom/b/a/a/a/a/c;->c:Ljava/lang/ThreadLocal;
new-instance v0, Lcom/b/a/a/a/a/m;
invoke-direct {v0}, Lcom/b/a/a/a/a/m;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
:cond_14
return-object v0
.end method
.method static synthetic a(Lcom/b/a/a/a/a/c;)[I
.registers 2
iget-object v0, p0, Lcom/b/a/a/a/a/c;->d:[I
return-object v0
.end method
.method static synthetic a(Lcom/b/a/a/a/a/c;[I)[I
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/c;->d:[I
return-object p1
.end method
.method static synthetic b(Lcom/b/a/a/a/a/c;)I
.registers 2
iget v0, p0, Lcom/b/a/a/a/a/c;->g:I
return v0
.end method
.method static synthetic c(Lcom/b/a/a/a/a/c;)I
.registers 2
iget v0, p0, Lcom/b/a/a/a/a/c;->f:I
return v0
.end method
.method public a(D)I
.registers 6
const/16 v0, 0xff
const/4 v1, 0x0
double-to-int v2, p1
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method
.method public a(I)I
.registers 4
const/16 v0, 0xff
const/4 v1, 0x0
invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method
.method public b()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/b/a/a/a/a/c;->e:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public c()Lcom/b/a/a/a/a/c;
.registers 3
new-instance v0, Lcom/b/a/a/a/a/c;
iget-object v1, p0, Lcom/b/a/a/a/a/c;->e:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Lcom/b/a/a/a/a/c;-><init>(Landroid/graphics/Bitmap;)V
return-object v0
.end method
.method public d()[I
.registers 2
iget-object v0, p0, Lcom/b/a/a/a/a/c;->d:[I
return-object v0
.end method