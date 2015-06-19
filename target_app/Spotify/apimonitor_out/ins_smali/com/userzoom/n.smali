.class public final Lcom/userzoom/n;
.super Ljava/lang/Object;
.field private static E:Lcom/userzoom/n;
.field private static F:Z
.field public static c:Ljava/io/File;
.field public static d:F
.field public static e:I
.field public static g:I
.field private A:Z
.field private B:I
.field private C:Z
.field private D:Ljava/lang/String;
.field private G:Landroid/graphics/Matrix;
.field private H:Ljava/util/WeakHashMap;
.field private I:Z
.field private J:Landroid/os/Handler;
.field private K:Z
.field public a:Landroid/content/Context;
.field public b:Z
.field public f:Landroid/app/Activity;
.field protected h:Z
.field protected i:Landroid/view/View;
.field private j:I
.field private k:I
.field private l:I
.field private m:I
.field private n:Ljava/util/Timer;
.field private o:I
.field private p:D
.field private q:Ljava/util/ArrayList;
.field private r:Ljava/util/HashSet;
.field private s:Lorg/json/JSONObject;
.field private t:Lcom/userzoom/v;
.field private u:Landroid/graphics/Bitmap;
.field private v:Lcom/userzoom/u;
.field private w:Z
.field private x:Z
.field private y:I
.field private z:[I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/userzoom/n;->E:Lcom/userzoom/n;
const/4 v0, -0x1
sput v0, Lcom/userzoom/n;->e:I
const/4 v0, 0x0
sput-boolean v0, Lcom/userzoom/n;->F:Z
return-void
.end method
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/userzoom/n;->x:Z
iput v1, p0, Lcom/userzoom/n;->y:I
iput-boolean v1, p0, Lcom/userzoom/n;->C:Z
const-string v0, ""
iput-object v0, p0, Lcom/userzoom/n;->D:Ljava/lang/String;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Lcom/userzoom/n;->H:Ljava/util/WeakHashMap;
new-instance v0, Lcom/userzoom/r;
invoke-direct {v0, p0}, Lcom/userzoom/r;-><init>(Lcom/userzoom/n;)V
iput-object v0, p0, Lcom/userzoom/n;->J:Landroid/os/Handler;
iput-boolean v1, p0, Lcom/userzoom/n;->K:Z
const/4 v0, 0x2
iput v0, p0, Lcom/userzoom/n;->j:I
const/16 v0, 0xa
iput v0, p0, Lcom/userzoom/n;->k:I
const/4 v0, 0x5
iput v0, p0, Lcom/userzoom/n;->l:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/userzoom/n;->q:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/userzoom/n;->r:Ljava/util/HashSet;
return-void
.end method
.method static synthetic a(Lcom/userzoom/n;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/userzoom/n;->u:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic a(Lcom/userzoom/n;Landroid/app/Activity;)Landroid/graphics/Bitmap;
.registers 3
invoke-direct {p0, p1}, Lcom/userzoom/n;->b(Landroid/app/Activity;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/userzoom/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/userzoom/n;->u:Landroid/graphics/Bitmap;
return-object p1
.end method
.method public static a([B)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
:try_start_1
const-string v1, "MD5"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
array-length v3, v1
:goto_11
if-ge v0, v3, :cond_2b
aget-byte v4, v1, v0
const-string v5, "%02X"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v4
aput-object v4, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_2b
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_2e
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_2e} :catch_30
move-result-object v0
:goto_2f
return-object v0
:catch_30
move-exception v0
const-string v1, "VideoManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error getting md5 message digest"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
const-string v0, ""
goto :goto_2f
.end method
.method static synthetic a(Lcom/userzoom/n;Ljava/lang/String;)V
.registers 8
const/16 v5, 0x1f5
const/4 v4, 0x0
new-instance v1, Lcom/userzoom/m;
iget v0, p0, Lcom/userzoom/n;->o:I
iget-wide v2, p0, Lcom/userzoom/n;->p:D
invoke-direct {v1, p1}, Lcom/userzoom/m;-><init>(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/userzoom/n;->C:Z
iput-boolean v0, v1, Lcom/userzoom/m;->b:Z
iget-object v0, p0, Lcom/userzoom/n;->D:Ljava/lang/String;
iput-object v0, v1, Lcom/userzoom/m;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/userzoom/n;->z:[I
invoke-virtual {v0}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
iput-object v0, v1, Lcom/userzoom/m;->d:[I
iput-boolean v4, v1, Lcom/userzoom/m;->g:Z
iput-boolean v4, v1, Lcom/userzoom/m;->h:Z
iput-boolean v4, v1, Lcom/userzoom/m;->i:Z
iput v4, v1, Lcom/userzoom/m;->j:I
iget-boolean v0, p0, Lcom/userzoom/n;->A:Z
if-eqz v0, :cond_30
new-array v0, v4, [I
iput-object v0, p0, Lcom/userzoom/n;->z:[I
iput-boolean v4, p0, Lcom/userzoom/n;->A:Z
:cond_30
iput v4, v1, Lcom/userzoom/m;->e:I
iget v0, v1, Lcom/userzoom/m;->e:I
if-eq v0, v5, :cond_3c
iget v0, v1, Lcom/userzoom/m;->e:I
const/16 v2, 0x1f6
if-ne v0, v2, :cond_48
:cond_3c
iget v0, v1, Lcom/userzoom/m;->e:I
if-ne v0, v5, :cond_50
const-string v0, "from_address_bar"
:goto_42
iput-object v0, v1, Lcom/userzoom/m;->f:Ljava/lang/String;
const/16 v0, 0x32
iput v0, v1, Lcom/userzoom/m;->e:I
:cond_48
iput v4, p0, Lcom/userzoom/n;->y:I
iget-object v0, p0, Lcom/userzoom/n;->q:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
:cond_50
const-string v0, "forward_back"
goto :goto_42
.end method
.method public static a([BLjava/lang/String;)V
.registers 6
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/userzoom/n;->c:Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".jpeg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_1a
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2c
:goto_2b
return-void
:catch_2c
move-exception v0
const-string v1, "VideoManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error on captureImage "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2b
.end method
.method static synthetic a(Landroid/graphics/Bitmap;)[B
.registers 4
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v2, 0x1e
invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method private b(Landroid/app/Activity;)Landroid/graphics/Bitmap;
.registers 11
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v7
invoke-virtual {v7, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
invoke-virtual {v7}, Landroid/view/View;->destroyDrawingCache()V
invoke-virtual {v7, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_1a
:cond_19
:goto_19
return-object v0
:try_start_1a
:cond_1a
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
iget v1, v1, Landroid/graphics/Rect;->top:I
sput v1, Lcom/userzoom/n;->g:I
invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Display;->getWidth()I
move-result v3
invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Display;->getHeight()I
move-result v4
iget-object v1, p0, Lcom/userzoom/n;->G:Landroid/graphics/Matrix;
if-nez v1, :cond_5a
new-instance v1, Landroid/graphics/Matrix;
invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V
iput-object v1, p0, Lcom/userzoom/n;->G:Landroid/graphics/Matrix;
iget-object v1, p0, Lcom/userzoom/n;->G:Landroid/graphics/Matrix;
sget v2, Lcom/userzoom/n;->d:F
sget v5, Lcom/userzoom/n;->d:F
invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->postScale(FF)Z
:cond_5a
const/4 v1, 0x0
sget v2, Lcom/userzoom/n;->g:I
sget v5, Lcom/userzoom/n;->g:I
sub-int/2addr v4, v5
iget-object v5, p0, Lcom/userzoom/n;->G:Landroid/graphics/Matrix;
const/4 v6, 0x0
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v7, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
iget-object v1, p0, Lcom/userzoom/n;->i:Landroid/view/View;
if-eqz v1, :cond_19
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
new-instance v2, Landroid/graphics/Paint;
invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V
const v3, -0x777778
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V
const/4 v3, 0x2
new-array v3, v3, [I
const/4 v4, 0x1
aget v5, v3, v4
sget v6, Lcom/userzoom/n;->g:I
sub-int/2addr v5, v6
aput v5, v3, v4
iget-object v4, p0, Lcom/userzoom/n;->i:Landroid/view/View;
invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V
new-instance v4, Landroid/graphics/RectF;
const/4 v5, 0x0
aget v5, v3, v5
int-to-float v5, v5
sget v6, Lcom/userzoom/n;->d:F
mul-float/2addr v5, v6
const/4 v6, 0x1
aget v6, v3, v6
int-to-float v6, v6
sget v7, Lcom/userzoom/n;->d:F
mul-float/2addr v6, v7
const/4 v7, 0x0
aget v7, v3, v7
iget-object v8, p0, Lcom/userzoom/n;->i:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getWidth()I
move-result v8
add-int/2addr v7, v8
int-to-float v7, v7
sget v8, Lcom/userzoom/n;->d:F
mul-float/2addr v7, v8
const/4 v8, 0x1
aget v3, v3, v8
iget-object v8, p0, Lcom/userzoom/n;->i:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getHeight()I
move-result v8
add-int/2addr v3, v8
int-to-float v3, v3
sget v8, Lcom/userzoom/n;->d:F
mul-float/2addr v3, v8
invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V
iget v3, v4, Landroid/graphics/RectF;->top:F
const/high16 v5, 0x4170
sub-float/2addr v3, v5
iput v3, v4, Landroid/graphics/RectF;->top:F
invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
:try_end_c8
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_c8} :catch_ca
goto/16 :goto_19
:catch_ca
move-exception v0
const-string v1, "VideoManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Exception on takeScreenshoot "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto/16 :goto_19
.end method
.method public static b()Lcom/userzoom/n;
.registers 1
sget-object v0, Lcom/userzoom/n;->E:Lcom/userzoom/n;
if-nez v0, :cond_b
new-instance v0, Lcom/userzoom/n;
invoke-direct {v0}, Lcom/userzoom/n;-><init>()V
sput-object v0, Lcom/userzoom/n;->E:Lcom/userzoom/n;
:cond_b
sget-object v0, Lcom/userzoom/n;->E:Lcom/userzoom/n;
return-object v0
.end method
.method static synthetic b(Lcom/userzoom/n;)Ljava/util/HashSet;
.registers 2
iget-object v0, p0, Lcom/userzoom/n;->r:Ljava/util/HashSet;
return-object v0
.end method
.method static synthetic c(Lcom/userzoom/n;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/userzoom/n;->q:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic d(Lcom/userzoom/n;)I
.registers 2
iget v0, p0, Lcom/userzoom/n;->l:I
return v0
.end method
.method static synthetic e(Lcom/userzoom/n;)I
.registers 2
iget v0, p0, Lcom/userzoom/n;->k:I
return v0
.end method
.method static synthetic f(Lcom/userzoom/n;)Landroid/content/Context;
.registers 2
invoke-direct {p0}, Lcom/userzoom/n;->l()Z
move-result v0
if-eqz v0, :cond_d
sget-boolean v0, Lcom/userzoom/n;->F:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/userzoom/n;->a:Landroid/content/Context;
goto :goto_c
.end method
.method static synthetic g(Lcom/userzoom/n;)Lcom/userzoom/v;
.registers 2
iget-object v0, p0, Lcom/userzoom/n;->t:Lcom/userzoom/v;
return-object v0
.end method
.method static synthetic j()Z
.registers 1
sget-boolean v0, Lcom/userzoom/n;->F:Z
return v0
.end method
.method private k()V
.registers 3
iget-object v0, p0, Lcom/userzoom/n;->n:Ljava/util/Timer;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/userzoom/n;->n:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/userzoom/n;->n:Ljava/util/Timer;
iget-object v0, p0, Lcom/userzoom/n;->v:Lcom/userzoom/u;
invoke-virtual {v0}, Lcom/userzoom/u;->a()V
new-instance v0, Lcom/userzoom/q;
invoke-direct {v0, p0}, Lcom/userzoom/q;-><init>(Lcom/userzoom/n;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_1c
return-void
.end method
.method private l()Z
.registers 8
const/4 v1, 0x1
const/4 v6, -0x1
const/4 v2, 0x0
new-instance v3, Landroid/content/IntentFilter;
const-string v0, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/n;->a:Landroid/content/Context;
sget-boolean v4, Lcom/userzoom/n;->F:Z
if-eqz v4, :cond_12
iget-object v0, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
:cond_12
const/4 v4, 0x0
invoke-virtual {v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
move-result-object v0
const-string v3, "level"
invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
const-string v4, "scale"
invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v4
const-string v5, "status"
invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const/4 v5, 0x2
if-eq v0, v5, :cond_2f
const/4 v5, 0x5
if-ne v0, v5, :cond_41
:cond_2f
move v0, v1
:goto_30
int-to-float v3, v3
int-to-float v4, v4
div-float/2addr v3, v4
float-to-double v3, v3
const-wide v5, 0x3fd3333333333333L
cmpg-double v3, v3, v5
if-gez v3, :cond_43
if-nez v0, :cond_43
move v1, v2
:cond_40
:goto_40
return v1
:cond_41
move v0, v2
goto :goto_30
:cond_43
sget-boolean v0, Lcom/userzoom/n;->F:Z
if-eqz v0, :cond_40
:try_start_47
iget-object v0, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
const-string v3, "validAndroid"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
:try_end_4e
.catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4e} :catch_67
move-result-object v4
move v3, v2
move v0, v2
:try_start_51
:goto_51
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v5
if-ge v3, v5, :cond_69
invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v5
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
:try_end_61
.catch Lorg/json/JSONException; {:try_start_51 .. :try_end_61} :catch_6d
if-ne v5, v6, :cond_64
move v0, v1
:cond_64
add-int/lit8 v3, v3, 0x1
goto :goto_51
:catch_67
move-exception v0
move v0, v2
:cond_69
:goto_69
if-nez v0, :cond_40
move v1, v2
goto :goto_40
:catch_6d
move-exception v3
goto :goto_69
.end method
.method private m()Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
const-string v3, "cu"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6
:try_start_11
iget-object v0, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
const-string v2, "study"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
const-string v3, "cu"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "https://s.userzoom.com/init/updateParticipantStatus.ashx"
const-string v4, "t=0&s=%s&uc=%s&v=2"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v0, v5, v6
const/4 v0, 0x1
aput-object v2, v5, v0
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/net/URL;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "?"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_55
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_55} :catch_57
.catch Lorg/json/JSONException; {:try_start_11 .. :try_end_55} :catch_6d
:goto_55
move v0, v1
goto :goto_6
:catch_57
move-exception v0
const-string v2, "VideoManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "setParticipantVideo "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_55
:catch_6d
move-exception v0
const-string v2, "VideoManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "setParticipantVideo "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_55
.end method
.method public final a()Landroid/graphics/Bitmap;
.registers 9
const/high16 v7, 0x3f80
const/4 v2, 0x0
invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I
move-result v0
invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I
move-result v3
sget v4, Lcom/userzoom/n;->d:F
if-eqz v0, :cond_11
if-nez v3, :cond_13
:cond_11
move-object v0, v2
:goto_12
return-object v0
:cond_13
int-to-float v0, v0
mul-float/2addr v0, v4
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v1, v0
int-to-float v0, v3
mul-float/2addr v0, v4
float-to-double v5, v0
invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
move-result-wide v5
double-to-int v0, v5
iget v3, p0, Lcom/userzoom/n;->B:I
if-le v0, v3, :cond_40
if-le v0, v1, :cond_40
iget v3, p0, Lcom/userzoom/n;->B:I
if-lez v3, :cond_40
iget v0, p0, Lcom/userzoom/n;->B:I
invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I
move-result v1
int-to-float v1, v1
iget v3, p0, Lcom/userzoom/n;->B:I
int-to-float v3, v3
mul-float/2addr v3, v7
invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I
move-result v5
int-to-float v5, v5
div-float/2addr v3, v5
mul-float/2addr v1, v3
float-to-int v1, v1
:cond_40
iget v3, p0, Lcom/userzoom/n;->B:I
if-le v1, v3, :cond_5d
if-le v1, v0, :cond_5d
iget v3, p0, Lcom/userzoom/n;->B:I
if-lez v3, :cond_5d
iget v1, p0, Lcom/userzoom/n;->B:I
invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I
move-result v0
int-to-float v0, v0
iget v3, p0, Lcom/userzoom/n;->B:I
int-to-float v3, v3
mul-float/2addr v3, v7
invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I
move-result v5
int-to-float v5, v5
div-float/2addr v3, v5
mul-float/2addr v0, v3
float-to-int v0, v0
:cond_5d
sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I
move-result v3
invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I
move-result v5
invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V
neg-int v3, v3
int-to-float v3, v3
neg-int v4, v5
int-to-float v4, v4
invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {v2, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V
goto :goto_12
.end method
.method public final a(Landroid/app/Activity;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "Intercept"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_5a
sget-boolean v0, Lcom/userzoom/n;->F:Z
if-eqz v0, :cond_58
iget-object v0, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/userzoom/t;
invoke-direct {v2, p0}, Lcom/userzoom/t;-><init>(Lcom/userzoom/n;)V
invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
iget-object v1, p0, Lcom/userzoom/n;->H:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
if-eqz v1, :cond_58
iget-object v1, p0, Lcom/userzoom/n;->H:Ljava/util/WeakHashMap;
invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_58
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lcom/userzoom/n;->H:Ljava/util/WeakHashMap;
iget-object v2, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
:cond_58
iput-object p1, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
:cond_5a
return-void
.end method
.method public final a(Landroid/app/Activity;Landroid/view/MotionEvent;)V
.registers 11
const/4 v7, 0x1
iget-object v0, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
if-eq p1, v0, :cond_6
:goto_5
return-void
:cond_6
const/4 v0, -0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-eq v1, v7, :cond_14
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_1e
:cond_14
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const v1, 0xff00
and-int/2addr v0, v1
shr-int/lit8 v0, v0, 0x8
:cond_1e
invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v1
if-ltz v0, :cond_26
add-int/lit8 v1, v1, -0x1
:cond_26
mul-int/lit8 v2, v1, 0x2
new-array v3, v2, [I
const/4 v2, 0x0
:goto_2b
if-ge v2, v1, :cond_51
if-eq v2, v0, :cond_4e
mul-int/lit8 v4, v2, 0x2
add-int/lit8 v4, v4, 0x0
invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F
move-result v5
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v5
aput v5, v3, v4
mul-int/lit8 v4, v2, 0x2
add-int/lit8 v4, v4, 0x1
invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F
move-result v5
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v5
sget v6, Lcom/userzoom/n;->g:I
sub-int/2addr v5, v6
aput v5, v3, v4
:cond_4e
add-int/lit8 v2, v2, 0x1
goto :goto_2b
:cond_51
array-length v0, v3
if-nez v0, :cond_57
iput-boolean v7, p0, Lcom/userzoom/n;->A:Z
goto :goto_5
:cond_57
iput-object v3, p0, Lcom/userzoom/n;->z:[I
const-string v0, "VideoManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "fingers: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
const-string v1, "cu"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1c
:try_start_e
iget-object v0, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
const-string v1, "cu"
invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_15
.catch Lorg/json/JSONException; {:try_start_e .. :try_end_15} :catch_1d
:goto_15
iget-boolean v0, p0, Lcom/userzoom/n;->K:Z
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/userzoom/n;->h()V
:cond_1c
return-void
:catch_1d
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_15
.end method
.method public final c()V
.registers 5
const/4 v1, 0x0
iget v0, p0, Lcom/userzoom/n;->o:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/userzoom/n;->o:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
long-to-double v2, v2
iput-wide v2, p0, Lcom/userzoom/n;->p:D
sget-boolean v0, Lcom/userzoom/n;->F:Z
if-nez v0, :cond_13
:cond_12
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/userzoom/n;->f:Landroid/app/Activity;
if-nez v0, :cond_1b
sget-boolean v0, Lcom/userzoom/n;->F:Z
if-nez v0, :cond_12
:cond_1b
iget-boolean v0, p0, Lcom/userzoom/n;->w:Z
if-eqz v0, :cond_12
iget-boolean v0, p0, Lcom/userzoom/n;->I:Z
if-nez v0, :cond_12
iget v0, p0, Lcom/userzoom/n;->k:I
iget v2, p0, Lcom/userzoom/n;->j:I
div-int/2addr v0, v2
iget v2, p0, Lcom/userzoom/n;->o:I
rem-int v0, v2, v0
if-nez v0, :cond_46
iget-boolean v0, p0, Lcom/userzoom/n;->x:Z
if-nez v0, :cond_36
sget-boolean v0, Lcom/userzoom/n;->F:Z
if-eqz v0, :cond_5e
:cond_36
const/4 v0, 0x1
:goto_37
if-eqz v0, :cond_46
iget-boolean v0, p0, Lcom/userzoom/n;->C:Z
if-nez v0, :cond_46
iput-boolean v1, p0, Lcom/userzoom/n;->x:Z
iget-object v0, p0, Lcom/userzoom/n;->J:Landroid/os/Handler;
iget v1, p0, Lcom/userzoom/n;->o:I
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_46
iget-object v0, p0, Lcom/userzoom/n;->v:Lcom/userzoom/u;
iget v1, p0, Lcom/userzoom/n;->o:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/userzoom/u;->a(Ljava/lang/Integer;)V
iget v0, p0, Lcom/userzoom/n;->o:I
iget v1, p0, Lcom/userzoom/n;->k:I
iget v2, p0, Lcom/userzoom/n;->m:I
mul-int/2addr v1, v2
if-le v0, v1, :cond_12
invoke-direct {p0}, Lcom/userzoom/n;->k()V
goto :goto_12
:cond_5e
move v0, v1
goto :goto_37
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/userzoom/n;->j:I
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/userzoom/n;->k:I
return v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/userzoom/n;->l:I
return v0
.end method
.method public final g()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
return-object v0
.end method
.method public final h()V
.registers 7
const/4 v1, 0x1
const/4 v3, 0x0
sput-boolean v1, Lcom/userzoom/n;->F:Z
invoke-direct {p0}, Lcom/userzoom/n;->m()Z
move-result v0
if-nez v0, :cond_d
iput-boolean v1, p0, Lcom/userzoom/n;->K:Z
:cond_c
:goto_c
return-void
:cond_d
sget v0, Lcom/userzoom/n;->e:I
if-ne v0, v1, :cond_c
iget-object v0, p0, Lcom/userzoom/n;->n:Ljava/util/Timer;
if-eqz v0, :cond_18
invoke-direct {p0}, Lcom/userzoom/n;->k()V
:cond_18
invoke-direct {p0}, Lcom/userzoom/n;->l()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/userzoom/n;->s:Lorg/json/JSONObject;
const-string v1, "ft_video"
const-string v2, "0"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "1"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/userzoom/n;->I:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/userzoom/n;->q:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/userzoom/n;->r:Ljava/util/HashSet;
new-array v0, v3, [I
iput-object v0, p0, Lcom/userzoom/n;->z:[I
iput v3, p0, Lcom/userzoom/n;->y:I
iput v3, p0, Lcom/userzoom/n;->o:I
new-instance v0, Lcom/userzoom/u;
invoke-direct {v0, p0}, Lcom/userzoom/u;-><init>(Lcom/userzoom/n;)V
iput-object v0, p0, Lcom/userzoom/n;->v:Lcom/userzoom/u;
iget-object v0, p0, Lcom/userzoom/n;->v:Lcom/userzoom/u;
invoke-virtual {v0}, Lcom/userzoom/u;->start()V
new-instance v0, Ljava/util/Timer;
invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V
iput-object v0, p0, Lcom/userzoom/n;->n:Ljava/util/Timer;
iget-object v0, p0, Lcom/userzoom/n;->n:Ljava/util/Timer;
new-instance v1, Lcom/userzoom/p;
invoke-direct {v1, p0}, Lcom/userzoom/p;-><init>(Lcom/userzoom/n;)V
const-wide/16 v2, 0x0
const/16 v4, 0x3e8
iget v5, p0, Lcom/userzoom/n;->k:I
div-int/2addr v4, v5
int-to-long v4, v4
invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
new-instance v0, Lcom/userzoom/v;
invoke-direct {v0}, Lcom/userzoom/v;-><init>()V
iput-object v0, p0, Lcom/userzoom/n;->t:Lcom/userzoom/v;
goto :goto_c
.end method
.method public final i()V
.registers 1
invoke-direct {p0}, Lcom/userzoom/n;->k()V
return-void
.end method