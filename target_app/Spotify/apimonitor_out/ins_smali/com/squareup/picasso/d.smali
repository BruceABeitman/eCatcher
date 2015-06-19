.class abstract Lcom/squareup/picasso/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private static final o:Ljava/lang/Object;
.field private static final p:Ljava/lang/ThreadLocal;
.field final a:Lcom/squareup/picasso/Picasso;
.field final b:Lcom/squareup/picasso/j;
.field final c:Lcom/squareup/picasso/e;
.field final d:Lcom/squareup/picasso/af;
.field final e:Ljava/lang/String;
.field final f:Lcom/squareup/picasso/ab;
.field final g:Z
.field  h:Lcom/squareup/picasso/a;
.field  i:Ljava/util/List;
.field  j:Landroid/graphics/Bitmap;
.field  k:Ljava/util/concurrent/Future;
.field  l:Lcom/squareup/picasso/Picasso$LoadedFrom;
.field  m:Ljava/lang/Exception;
.field  n:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/squareup/picasso/d;->o:Ljava/lang/Object;
new-instance v0, Lcom/squareup/picasso/d$1;
invoke-direct {v0}, Lcom/squareup/picasso/d$1;-><init>()V
sput-object v0, Lcom/squareup/picasso/d;->p:Ljava/lang/ThreadLocal;
return-void
.end method
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;
iput-object p2, p0, Lcom/squareup/picasso/d;->b:Lcom/squareup/picasso/j;
iput-object p3, p0, Lcom/squareup/picasso/d;->c:Lcom/squareup/picasso/e;
iput-object p4, p0, Lcom/squareup/picasso/d;->d:Lcom/squareup/picasso/af;
iget-object v0, p5, Lcom/squareup/picasso/a;->h:Ljava/lang/String;
iput-object v0, p0, Lcom/squareup/picasso/d;->e:Ljava/lang/String;
iget-object v0, p5, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;
iput-object v0, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
iget-boolean v0, p5, Lcom/squareup/picasso/a;->d:Z
iput-boolean v0, p0, Lcom/squareup/picasso/d;->g:Z
iput-object p5, p0, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;
return-void
.end method
.method private static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 8
const/4 v1, 0x0
const/4 v0, 0x0
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v4
move v3, v0
move-object v2, p1
:goto_8
if-ge v3, v4, :cond_8d
invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/ak;
invoke-interface {v0, v2}, Lcom/squareup/picasso/ak;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object p1
if-nez p1, :cond_5f
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Transformation "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Lcom/squareup/picasso/ak;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " returned null after "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " previous transformation(s).\n\nTransformation list:\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_39
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/ak;
invoke-interface {v0}, Lcom/squareup/picasso/ak;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v4, 0xa
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_39
:cond_53
sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;
new-instance v3, Lcom/squareup/picasso/d$2;
invoke-direct {v3, v2}, Lcom/squareup/picasso/d$2;-><init>(Ljava/lang/StringBuilder;)V
invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
move-object v0, v1
:goto_5e
return-object v0
:cond_5f
if-ne p1, v2, :cond_73
invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v5
if-eqz v5, :cond_73
sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;
new-instance v3, Lcom/squareup/picasso/d$3;
invoke-direct {v3, v0}, Lcom/squareup/picasso/d$3;-><init>(Lcom/squareup/picasso/ak;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
move-object v0, v1
goto :goto_5e
:cond_73
if-eq p1, v2, :cond_87
invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v2
if-nez v2, :cond_87
sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;
new-instance v3, Lcom/squareup/picasso/d$4;
invoke-direct {v3, v0}, Lcom/squareup/picasso/d$4;-><init>(Lcom/squareup/picasso/ak;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
move-object v0, v1
goto :goto_5e
:cond_87
add-int/lit8 v0, v3, 0x1
move v3, v0
move-object v2, p1
goto/16 :goto_8
:cond_8d
move-object v0, v2
goto :goto_5e
.end method
.method static a(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/d;
.registers 14
iget-object v0, p5, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;
iget v0, v0, Lcom/squareup/picasso/ab;->d:I
if-eqz v0, :cond_12
new-instance v0, Lcom/squareup/picasso/ae;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/ae;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
:goto_11
return-object v0
:cond_12
iget-object v0, p5, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;
iget-object v0, v0, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "content"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6e
sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4a
invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v1
const-string v2, "photo"
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4a
new-instance v0, Lcom/squareup/picasso/g;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/g;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
goto :goto_11
:cond_4a
const-string v1, "media"
invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_62
new-instance v0, Lcom/squareup/picasso/MediaStoreBitmapHunter;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/MediaStoreBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
goto :goto_11
:cond_62
new-instance v0, Lcom/squareup/picasso/h;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/h;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
goto :goto_11
:cond_6e
const-string v2, "file"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ab
invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_9e
const-string v1, "android_asset"
invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v0
const/4 v2, 0x0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9e
new-instance v0, Lcom/squareup/picasso/c;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/c;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
goto/16 :goto_11
:cond_9e
new-instance v0, Lcom/squareup/picasso/p;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/p;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
goto/16 :goto_11
:cond_ab
const-string v0, "android.resource"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c0
new-instance v0, Lcom/squareup/picasso/ae;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/ae;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
goto/16 :goto_11
:cond_c0
new-instance v0, Lcom/squareup/picasso/t;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/t;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;Lcom/squareup/picasso/Downloader;)V
goto/16 :goto_11
.end method
.method static a(IIIILandroid/graphics/BitmapFactory$Options;)V
.registers 8
const/4 v0, 0x1
if-gt p3, p1, :cond_5
if-le p2, p0, :cond_19
:cond_5
int-to-float v0, p3
int-to-float v1, p1
div-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
double-to-int v0, v0
int-to-float v1, p2
int-to-float v2, p0
div-float/2addr v1, v2
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D
move-result-wide v1
double-to-int v1, v1
if-ge v0, v1, :cond_1f
:goto_19
:cond_19
iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v0, 0x0
iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
return-void
:cond_1f
move v0, v1
goto :goto_19
.end method
.method static a(IILandroid/graphics/BitmapFactory$Options;)V
.registers 5
iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-static {p0, p1, v0, v1, p2}, Lcom/squareup/picasso/d;->a(IIIILandroid/graphics/BitmapFactory$Options;)V
return-void
.end method
.method static a(Landroid/graphics/BitmapFactory$Options;)Z
.registers 2
if-eqz p0, :cond_8
iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method static b(Lcom/squareup/picasso/ab;)Landroid/graphics/BitmapFactory$Options;
.registers 4
invoke-virtual {p0}, Lcom/squareup/picasso/ab;->c()Z
move-result v2
iget-object v0, p0, Lcom/squareup/picasso/ab;->n:Landroid/graphics/Bitmap$Config;
if-eqz v0, :cond_1d
const/4 v0, 0x1
move v1, v0
:goto_a
const/4 v0, 0x0
if-nez v2, :cond_f
if-eqz v1, :cond_1c
:cond_f
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/squareup/picasso/ab;->n:Landroid/graphics/Bitmap$Config;
iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
:cond_1c
return-object v0
:cond_1d
const/4 v0, 0x0
move v1, v0
goto :goto_a
.end method
.method private d()Landroid/graphics/Bitmap;
.registers 15
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/squareup/picasso/d;->g:Z
if-nez v0, :cond_2f
iget-object v0, p0, Lcom/squareup/picasso/d;->c:Lcom/squareup/picasso/e;
iget-object v3, p0, Lcom/squareup/picasso/d;->e:Ljava/lang/String;
invoke-interface {v0, v3}, Lcom/squareup/picasso/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v1, p0, Lcom/squareup/picasso/d;->d:Lcom/squareup/picasso/af;
invoke-virtual {v1}, Lcom/squareup/picasso/af;->a()V
sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;
iput-object v1, p0, Lcom/squareup/picasso/d;->l:Lcom/squareup/picasso/Picasso$LoadedFrom;
iget-object v1, p0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;
iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v1, :cond_2e
const-string v1, "Hunter"
const-string v2, "decoded"
iget-object v3, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {v3}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;
move-result-object v3
const-string v4, "from cache"
invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_2e
:cond_2e
return-object v0
:cond_2f
iget-object v0, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {p0, v0}, Lcom/squareup/picasso/d;->a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v3, p0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;
iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v3, :cond_4a
const-string v3, "Hunter"
const-string v4, "decoded"
iget-object v5, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {v5}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v4, v5}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_4a
iget-object v3, p0, Lcom/squareup/picasso/d;->d:Lcom/squareup/picasso/af;
invoke-virtual {v3, v0}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;)V
iget-object v3, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {v3}, Lcom/squareup/picasso/ab;->d()Z
move-result v4
if-nez v4, :cond_5d
invoke-virtual {v3}, Lcom/squareup/picasso/ab;->e()Z
move-result v3
if-eqz v3, :cond_114
:goto_5d
:cond_5d
if-nez v1, :cond_63
iget v1, p0, Lcom/squareup/picasso/d;->n:I
if-eqz v1, :cond_2e
:cond_63
sget-object v7, Lcom/squareup/picasso/d;->o:Ljava/lang/Object;
monitor-enter v7
:try_start_66
iget-object v1, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {v1}, Lcom/squareup/picasso/ab;->d()Z
move-result v1
if-nez v1, :cond_72
iget v1, p0, Lcom/squareup/picasso/d;->n:I
if-eqz v1, :cond_e5
:cond_72
iget-object v1, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
iget v8, p0, Lcom/squareup/picasso/d;->n:I
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v1}, Lcom/squareup/picasso/ab;->d()Z
move-result v6
if-eqz v6, :cond_154
iget v6, v1, Lcom/squareup/picasso/ab;->f:I
iget v9, v1, Lcom/squareup/picasso/ab;->g:I
iget v10, v1, Lcom/squareup/picasso/ab;->j:F
const/4 v11, 0x0
cmpl-float v11, v10, v11
if-eqz v11, :cond_9f
iget-boolean v11, v1, Lcom/squareup/picasso/ab;->m:Z
if-eqz v11, :cond_117
iget v11, v1, Lcom/squareup/picasso/ab;->k:F
iget v12, v1, Lcom/squareup/picasso/ab;->l:F
invoke-virtual {v5, v10, v11, v12}, Landroid/graphics/Matrix;->setRotate(FFF)V
:goto_9f
:cond_9f
iget-boolean v10, v1, Lcom/squareup/picasso/ab;->h:Z
if-eqz v10, :cond_12e
int-to-float v1, v6
int-to-float v6, v3
div-float/2addr v1, v6
int-to-float v6, v9
int-to-float v9, v4
div-float/2addr v6, v9
cmpl-float v9, v1, v6
if-lez v9, :cond_11e
int-to-float v9, v4
div-float/2addr v6, v1
mul-float/2addr v6, v9
float-to-double v9, v6
invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D
move-result-wide v9
double-to-int v6, v9
sub-int/2addr v4, v6
div-int/lit8 v4, v4, 0x2
move v13, v1
move v1, v2
move v2, v4
move v4, v6
move v6, v13
:goto_be
invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z
:goto_c1
if-eqz v8, :cond_c7
int-to-float v6, v8
invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preRotate(F)Z
:cond_c7
const/4 v6, 0x1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v1
if-eq v1, v0, :cond_d2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
move-object v0, v1
:cond_d2
iget-object v1, p0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;
iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v1, :cond_e5
const-string v1, "Hunter"
const-string v2, "transformed"
iget-object v3, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {v3}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_e5
iget-object v1, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {v1}, Lcom/squareup/picasso/ab;->e()Z
move-result v1
if-eqz v1, :cond_10a
iget-object v1, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
iget-object v1, v1, Lcom/squareup/picasso/ab;->e:Ljava/util/List;
invoke-static {v1, v0}, Lcom/squareup/picasso/d;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;
iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v1, :cond_10a
const-string v1, "Hunter"
const-string v2, "transformed"
iget-object v3, p0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
invoke-virtual {v3}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;
move-result-object v3
const-string v4, "from custom transformations"
invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_10a
monitor-exit v7
:try_end_10b
.catchall {:try_start_66 .. :try_end_10b} :catchall_11b
if-eqz v0, :cond_2e
iget-object v1, p0, Lcom/squareup/picasso/d;->d:Lcom/squareup/picasso/af;
invoke-virtual {v1, v0}, Lcom/squareup/picasso/af;->b(Landroid/graphics/Bitmap;)V
goto/16 :goto_2e
:cond_114
move v1, v2
goto/16 :goto_5d
:try_start_117
:cond_117
invoke-virtual {v5, v10}, Landroid/graphics/Matrix;->setRotate(F)V
:try_end_11a
.catchall {:try_start_117 .. :try_end_11a} :catchall_11b
goto :goto_9f
:catchall_11b
move-exception v0
monitor-exit v7
throw v0
:cond_11e
int-to-float v9, v3
div-float/2addr v1, v6
mul-float/2addr v1, v9
float-to-double v9, v1
:try_start_122
invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D
move-result-wide v9
double-to-int v1, v9
sub-int/2addr v3, v1
div-int/lit8 v3, v3, 0x2
move v13, v1
move v1, v3
move v3, v13
goto :goto_be
:cond_12e
iget-boolean v1, v1, Lcom/squareup/picasso/ab;->i:Z
if-eqz v1, :cond_143
int-to-float v1, v6
int-to-float v6, v3
div-float/2addr v1, v6
int-to-float v6, v9
int-to-float v9, v4
div-float/2addr v6, v9
cmpg-float v9, v1, v6
if-gez v9, :cond_141
:goto_13c
invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z
move v1, v2
goto :goto_c1
:cond_141
move v1, v6
goto :goto_13c
:cond_143
if-eqz v6, :cond_154
if-eqz v9, :cond_154
if-ne v6, v3, :cond_14b
if-eq v9, v4, :cond_154
:cond_14b
int-to-float v1, v6
int-to-float v6, v3
div-float/2addr v1, v6
int-to-float v6, v9
int-to-float v9, v4
div-float/2addr v6, v9
invoke-virtual {v5, v1, v6}, Landroid/graphics/Matrix;->preScale(FF)Z
:try_end_154
.catchall {:try_start_122 .. :try_end_154} :catchall_11b
:cond_154
move v1, v2
goto/16 :goto_c1
.end method
.method abstract a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
.end method
.method  a()Lcom/squareup/picasso/Picasso$LoadedFrom;
.registers 2
iget-object v0, p0, Lcom/squareup/picasso/d;->l:Lcom/squareup/picasso/Picasso$LoadedFrom;
return-object v0
.end method
.method  a(Landroid/net/NetworkInfo;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method final b()Z
.registers 2
iget-object v0, p0, Lcom/squareup/picasso/d;->k:Ljava/util/concurrent/Future;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/squareup/picasso/d;->k:Ljava/util/concurrent/Future;
invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method  c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public run()V
.registers 29
:try_start_0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
iget-object v3, v2, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;
if-eqz v3, :cond_68
iget-object v2, v2, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;
invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v2
move-object v3, v2
:goto_f
sget-object v2, Lcom/squareup/picasso/d;->p:Ljava/lang/ThreadLocal;
invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
add-int/lit8 v4, v4, 0x8
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->ensureCapacity(I)V
const/16 v4, 0x8
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v5
invoke-virtual {v2, v4, v5, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v3
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;
iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v2, :cond_47
const-string v2, "Hunter"
const-string v3, "executing"
invoke-static/range {p0 .. p0}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;)Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_47
invoke-direct/range {p0 .. p0}, Lcom/squareup/picasso/d;->d()Landroid/graphics/Bitmap;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lcom/squareup/picasso/d;->j:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->j:Landroid/graphics/Bitmap;
if-nez v2, :cond_70
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->b:Lcom/squareup/picasso/j;
move-object/from16 v0, p0
invoke-virtual {v2, v0}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;)V
:goto_5e
:try_end_5e
.catchall {:try_start_0 .. :try_end_5e} :catchall_214
.catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_5e} :catch_83
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5e} :catch_9b
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_5e} :catch_be
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_1fb
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
const-string v3, "Picasso-Idle"
invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
:goto_67
return-void
:cond_68
:try_start_68
iget v2, v2, Lcom/squareup/picasso/ab;->d:I
invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
move-object v3, v2
goto :goto_f
:cond_70
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->b:Lcom/squareup/picasso/j;
iget-object v3, v2, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
iget-object v2, v2, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
const/4 v4, 0x4
move-object/from16 v0, p0
invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v2
invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_end_82
.catchall {:try_start_68 .. :try_end_82} :catchall_214
.catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_68 .. :try_end_82} :catch_83
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_82} :catch_9b
.catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_82} :catch_be
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_82} :catch_1fb
goto :goto_5e
:catch_83
move-exception v2
:try_start_84
move-object/from16 v0, p0
iput-object v2, v0, Lcom/squareup/picasso/d;->m:Ljava/lang/Exception;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->b:Lcom/squareup/picasso/j;
move-object/from16 v0, p0
invoke-virtual {v2, v0}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;)V
:try_end_91
.catchall {:try_start_84 .. :try_end_91} :catchall_214
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
const-string v3, "Picasso-Idle"
invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
goto :goto_67
:catch_9b
move-exception v2
:try_start_9c
move-object/from16 v0, p0
iput-object v2, v0, Lcom/squareup/picasso/d;->m:Ljava/lang/Exception;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->b:Lcom/squareup/picasso/j;
iget-object v3, v2, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
iget-object v2, v2, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
const/4 v4, 0x5
move-object/from16 v0, p0
invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v2
const-wide/16 v4, 0x1f4
invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:try_end_b4
.catchall {:try_start_9c .. :try_end_b4} :catchall_214
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
const-string v3, "Picasso-Idle"
invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
goto :goto_67
:catch_be
move-exception v2
move-object/from16 v26, v2
:try_start_c1
new-instance v27, Ljava/io/StringWriter;
invoke-direct/range {v27 .. v27}, Ljava/io/StringWriter;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/squareup/picasso/d;->d:Lcom/squareup/picasso/af;
move-object/from16 v23, v0
new-instance v2, Lcom/squareup/picasso/ah;
move-object/from16 v0, v23
iget-object v3, v0, Lcom/squareup/picasso/af;->b:Lcom/squareup/picasso/e;
invoke-interface {v3}, Lcom/squareup/picasso/e;->b()I
move-result v3
move-object/from16 v0, v23
iget-object v4, v0, Lcom/squareup/picasso/af;->b:Lcom/squareup/picasso/e;
invoke-interface {v4}, Lcom/squareup/picasso/e;->a()I
move-result v4
move-object/from16 v0, v23
iget-wide v5, v0, Lcom/squareup/picasso/af;->d:J
move-object/from16 v0, v23
iget-wide v7, v0, Lcom/squareup/picasso/af;->e:J
move-object/from16 v0, v23
iget-wide v9, v0, Lcom/squareup/picasso/af;->f:J
move-object/from16 v0, v23
iget-wide v11, v0, Lcom/squareup/picasso/af;->g:J
move-object/from16 v0, v23
iget-wide v13, v0, Lcom/squareup/picasso/af;->h:J
move-object/from16 v0, v23
iget-wide v15, v0, Lcom/squareup/picasso/af;->i:J
move-object/from16 v0, v23
iget-wide v0, v0, Lcom/squareup/picasso/af;->j:J
move-wide/from16 v17, v0
move-object/from16 v0, v23
iget-wide v0, v0, Lcom/squareup/picasso/af;->k:J
move-wide/from16 v19, v0
move-object/from16 v0, v23
iget v0, v0, Lcom/squareup/picasso/af;->l:I
move/from16 v21, v0
move-object/from16 v0, v23
iget v0, v0, Lcom/squareup/picasso/af;->m:I
move/from16 v22, v0
move-object/from16 v0, v23
iget v0, v0, Lcom/squareup/picasso/af;->n:I
move/from16 v23, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v24
invoke-direct/range {v2 .. v25}, Lcom/squareup/picasso/ah;-><init>(IIJJJJJJJJIIIJ)V
new-instance v3, Ljava/io/PrintWriter;
move-object/from16 v0, v27
invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v4, "===============BEGIN PICASSO STATS ==============="
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v4, "Memory Cache Stats"
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v4, "  Max Cache Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v4, v2, Lcom/squareup/picasso/ah;->a:I
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(I)V
const-string v4, "  Cache Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v4, v2, Lcom/squareup/picasso/ah;->b:I
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(I)V
const-string v4, "  Cache % Full: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v4, v2, Lcom/squareup/picasso/ah;->b:I
int-to-float v4, v4
iget v5, v2, Lcom/squareup/picasso/ah;->a:I
int-to-float v5, v5
div-float/2addr v4, v5
const/high16 v5, 0x42c8
mul-float/2addr v4, v5
float-to-double v4, v4
invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
move-result-wide v4
double-to-int v4, v4
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(I)V
const-string v4, "  Cache Hits: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->c:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v4, "  Cache Misses: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->d:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v4, "Network Stats"
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v4, "  Download Count: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v4, v2, Lcom/squareup/picasso/ah;->k:I
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(I)V
const-string v4, "  Total Download Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->e:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v4, "  Average Download Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->h:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v4, "Bitmap Stats"
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
const-string v4, "  Total Bitmaps Decoded: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v4, v2, Lcom/squareup/picasso/ah;->l:I
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(I)V
const-string v4, "  Total Bitmap Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->f:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v4, "  Total Transformed Bitmaps: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v4, v2, Lcom/squareup/picasso/ah;->m:I
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(I)V
const-string v4, "  Total Transformed Bitmap Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->g:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v4, "  Average Bitmap Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->i:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v4, "  Average Transformed Bitmap Size: "
invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-wide v4, v2, Lcom/squareup/picasso/ah;->j:J
invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->println(J)V
const-string v2, "===============END PICASSO STATS ==============="
invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
new-instance v2, Ljava/lang/RuntimeException;
invoke-virtual/range {v27 .. v27}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v26
invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/squareup/picasso/d;->m:Ljava/lang/Exception;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->b:Lcom/squareup/picasso/j;
move-object/from16 v0, p0
invoke-virtual {v2, v0}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;)V
:try_end_1f0
.catchall {:try_start_c1 .. :try_end_1f0} :catchall_214
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
const-string v3, "Picasso-Idle"
invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
goto/16 :goto_67
:catch_1fb
move-exception v2
:try_start_1fc
move-object/from16 v0, p0
iput-object v2, v0, Lcom/squareup/picasso/d;->m:Ljava/lang/Exception;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/squareup/picasso/d;->b:Lcom/squareup/picasso/j;
move-object/from16 v0, p0
invoke-virtual {v2, v0}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;)V
:try_end_209
.catchall {:try_start_1fc .. :try_end_209} :catchall_214
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
const-string v3, "Picasso-Idle"
invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
goto/16 :goto_67
:catchall_214
move-exception v2
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v3
const-string v4, "Picasso-Idle"
invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
throw v2
.end method