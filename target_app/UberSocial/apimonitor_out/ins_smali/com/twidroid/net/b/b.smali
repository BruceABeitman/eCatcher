.class public Lcom/twidroid/net/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field public a:I
.field public b:I
.field public c:Ljava/io/File;
.field public d:Landroid/graphics/Bitmap$CompressFormat;
.field public e:I
.field public f:Z
.field public g:Z
.field public h:Z
.field public i:Z
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x50
iput v0, p0, Lcom/twidroid/net/b/b;->a:I
const/high16 v0, 0xa0
iput v0, p0, Lcom/twidroid/net/b/b;->b:I
invoke-static {}, Lcom/twidroid/net/b/a;->h()Landroid/graphics/Bitmap$CompressFormat;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/b/b;->d:Landroid/graphics/Bitmap$CompressFormat;
const/16 v0, 0x64
iput v0, p0, Lcom/twidroid/net/b/b;->e:I
iput-boolean v2, p0, Lcom/twidroid/net/b/b;->f:Z
iput-boolean v2, p0, Lcom/twidroid/net/b/b;->g:Z
iput-boolean v1, p0, Lcom/twidroid/net/b/b;->h:Z
iput-boolean v1, p0, Lcom/twidroid/net/b/b;->i:Z
invoke-static {p1, p2}, Lcom/twidroid/net/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/b/b;->c:Ljava/io/File;
return-void
.end method
.method public constructor <init>(Ljava/io/File;)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x50
iput v0, p0, Lcom/twidroid/net/b/b;->a:I
const/high16 v0, 0xa0
iput v0, p0, Lcom/twidroid/net/b/b;->b:I
invoke-static {}, Lcom/twidroid/net/b/a;->h()Landroid/graphics/Bitmap$CompressFormat;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/b/b;->d:Landroid/graphics/Bitmap$CompressFormat;
const/16 v0, 0x64
iput v0, p0, Lcom/twidroid/net/b/b;->e:I
iput-boolean v2, p0, Lcom/twidroid/net/b/b;->f:Z
iput-boolean v2, p0, Lcom/twidroid/net/b/b;->g:Z
iput-boolean v1, p0, Lcom/twidroid/net/b/b;->h:Z
iput-boolean v1, p0, Lcom/twidroid/net/b/b;->i:Z
iput-object p1, p0, Lcom/twidroid/net/b/b;->c:Ljava/io/File;
return-void
.end method
.method private static a(Landroid/content/Context;)I
.registers 2
const-string v0, "activity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I
move-result v0
return v0
.end method
.method public a(Landroid/content/Context;F)V
.registers 5
const/high16 v1, 0x4480
const v0, 0x3d4ccccd
cmpg-float v0, p2, v0
if-ltz v0, :cond_10
const v0, 0x3f4ccccd
cmpl-float v0, p2, v0
if-lez v0, :cond_18
:cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
invoke-static {p1}, Lcom/twidroid/net/b/b;->a(Landroid/content/Context;)I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, p2
mul-float/2addr v0, v1
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/twidroid/net/b/b;->a:I
return-void
.end method