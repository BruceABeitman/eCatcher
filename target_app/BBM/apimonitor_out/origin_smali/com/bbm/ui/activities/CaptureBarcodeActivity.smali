.class public final Lcom/bbm/ui/activities/CaptureBarcodeActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "CaptureBarcodeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final k:Ljava/lang/String;

.field private static final l:[Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/ImageView;

.field private G:Lcom/bbm/ui/ObservingImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Ljava/lang/String;

.field private final M:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final N:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final P:Lcom/bbm/j/u;

.field private final Q:Lcom/bbm/j/k;

.field private final R:Lcom/bbm/ui/cj;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Lcom/bbm/j/k;

.field public a:Lcom/google/zxing/client/android/a/e;

.field public b:Lcom/bbm/util/e/a;

.field public c:Lcom/google/zxing/client/android/ViewfinderView;

.field public d:Lcom/google/zxing/m;

.field public e:Lcom/google/zxing/client/android/q;

.field public f:Ljava/lang/String;

.field public g:Lcom/google/zxing/client/android/c/c;

.field public h:Lcom/google/zxing/client/android/n;

.field i:Ljava/lang/String;

.field protected final j:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/zxing/m;

.field private n:Landroid/view/View;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Z

.field private final u:Lcom/bbm/d/a;

.field private final v:Lcom/bbm/d;

.field private w:Lcom/bbm/ui/activities/bj;

.field private final x:Lcom/bbm/g/am;

.field private y:Lcom/bbm/ui/FooterActionBar;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->k:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://zxing.appspot.com/scan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zxing://scan/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->u:Lcom/bbm/d/a;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->v:Lcom/bbm/d;

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->x:Lcom/bbm/g/am;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->M:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->N:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->O:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/ui/activities/bb;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bb;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->j:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/activities/bc;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bc;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->P:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/bd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bd;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->Q:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/be;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/be;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->R:Lcom/bbm/ui/cj;

    const-string v0, "channelUri"

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->S:Ljava/lang/String;

    const-string v0, "timeRange"

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->T:Ljava/lang/String;

    const-string v0, "AllTime"

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->U:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/activities/bf;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bf;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->V:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/bbm/ui/activities/aka;)V

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 7

    const-string v1, ""

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_5
    const/4 v0, 0x4

    if-ge v2, v0, :cond_4d

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x406e

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4030

    add-double/2addr v0, v4

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

    rem-int/lit8 v4, v1, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    div-int/lit8 v1, v1, 0x10

    goto :goto_2f

    :cond_4d
    return-object v3
.end method

.method static synthetic a(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/Object;J)V
    .registers 8

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_12

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    invoke-virtual {v1, v0, p3, p4}, Lcom/bbm/util/e/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    invoke-virtual {v1, v0}, Lcom/bbm/util/e/a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V
    .registers 10

    iget v1, p2, Lcom/google/zxing/o;->a:F

    iget v2, p2, Lcom/google/zxing/o;->b:F

    iget v3, p3, Lcom/google/zxing/o;->a:F

    iget v4, p3, Lcom/google/zxing/o;->b:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->k:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/a/e;->a(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    if-nez v0, :cond_30

    new-instance v0, Lcom/bbm/util/e/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->r:Ljava/util/Collection;

    iget-object v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/util/e/a;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/a/e;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    :cond_30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/google/zxing/m;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_34} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_34} :catch_3f

    goto :goto_19

    :catch_35
    move-exception v0

    sget-object v1, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e()V

    goto :goto_19

    :catch_3f
    move-exception v0

    sget-object v1, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->k:Ljava/lang/String;

    const-string v2, "Unexpected error initializing camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e()V

    goto :goto_19
.end method

.method static synthetic a(Lcom/bbm/ui/activities/CaptureBarcodeActivity;Ljava/lang/String;)V
    .registers 12

    const/4 v4, 0x0

    :try_start_1
    new-instance v0, Lcom/google/zxing/g/b;

    invoke-direct {v0}, Lcom/google/zxing/g/b;-><init>()V

    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    const/16 v1, 0xc8

    const/16 v2, 0xc8

    invoke-static {p1, v0, v1, v2}, Lcom/google/zxing/g/b;->a(Ljava/lang/String;Lcom/google/zxing/a;II)Lcom/google/zxing/b/b;

    move-result-object v6

    iget v3, v6, Lcom/google/zxing/b/b;->a:I

    iget v7, v6, Lcom/google/zxing/b/b;->b:I

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move v5, v4

    :goto_19
    if-ge v5, v7, :cond_36

    mul-int v8, v5, v3

    move v2, v4

    :goto_1e
    if-ge v2, v3, :cond_32

    add-int v9, v8, v2

    invoke-virtual {v6, v2, v5}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_30

    const/high16 v0, -0x100

    :goto_2a
    aput v0, v1, v9

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1e

    :cond_30
    const/4 v0, -0x1

    goto :goto_2a

    :cond_32
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_19

    :cond_36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->u:Lcom/bbm/d/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->O:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/bbm/d/af;->a:Lcom/bbm/d/af;

    invoke-static {v0, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/af;)Lcom/bbm/d/ae;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_61
    .catch Lcom/google/zxing/q; {:try_start_1 .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    return-void

    :catch_62
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_61
.end method

.method private a(Lcom/google/zxing/m;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m:Lcom/google/zxing/m;

    :goto_6
    return-void

    :cond_7
    if-eqz p1, :cond_b

    iput-object p1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m:Lcom/google/zxing/m;

    :cond_b
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m:Lcom/google/zxing/m;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    const v1, 0x7f0a0020

    iget-object v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m:Lcom/google/zxing/m;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    invoke-virtual {v1, v0}, Lcom/bbm/util/e/a;->sendMessage(Landroid/os/Message;)Z

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->m:Lcom/google/zxing/m;

    goto :goto_6
.end method

.method static synthetic b(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->u:Lcom/bbm/d/a;

    return-object v0
.end method

.method private b()Z
    .registers 3

    iget v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->K:I

    const/16 v1, 0x2726

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic c(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->M:Lcom/bbm/util/cr;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, ""

    :try_start_7
    const-string v2, "channelUri"

    iget-object v3, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->L:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timeRange"

    const-string v3, "AllTime"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v1

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method private d()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->u:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->M:Lcom/bbm/util/cr;

    invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->u:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->M:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v1

    :goto_29
    invoke-virtual {v2, v1, v0}, Lcom/bbm/ui/FooterActionBar;->setActionHidden(IZ)V

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->M:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_40
    const/4 v0, 0x0

    goto :goto_29
.end method

.method static synthetic d(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z
    .registers 3

    iget v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->K:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private e()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e04fa

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0153

    new-instance v2, Lcom/google/zxing/client/android/j;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/j;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/google/zxing/client/android/j;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/j;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic e(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d()V

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d:Lcom/google/zxing/m;

    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z
    .registers 3

    iget v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->K:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic g(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->j:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->j:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_21
    return-void

    :cond_22
    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d()V

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->M:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method

.method static synthetic h(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->O:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->N:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->P:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->v:Lcom/bbm/d;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->G:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->H:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic r(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/g/am;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->x:Lcom/bbm/g/am;

    return-object v0
.end method

.method static synthetic s(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/ui/activities/bj;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->w:Lcom/bbm/ui/activities/bj;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1, p1, p2}, Lcom/bbm/util/e/a;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f()V

    return-void
.end method

.method public final a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V
    .registers 12

    const-wide/16 v0, 0x0

    const v6, 0x7f0a0024

    const/4 v4, 0x0

    if-eqz p3, :cond_d

    iget-object v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v2, p3}, Lcom/google/zxing/client/android/ViewfinderView;->a(Landroid/graphics/Bitmap;)V

    :cond_d
    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_ca

    move-wide v1, v0

    :goto_14
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    sget-object v3, Lcom/google/zxing/client/android/q;->a:Lcom/google/zxing/client/android/q;

    if-ne v0, v3, :cond_e8

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_d7

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d7

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :goto_38
    const/high16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p1}, Lcom/google/zxing/m;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SCAN_RESULT_FORMAT"

    iget-object v5, p1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    invoke-virtual {v5}, Lcom/google/zxing/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Lcom/google/zxing/m;->b:[B

    if-eqz v0, :cond_5d

    array-length v5, v0

    if-lez v5, :cond_5d

    const-string v5, "SCAN_RESULT_BYTES"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_5d
    iget-object v5, p1, Lcom/google/zxing/m;->e:Ljava/util/Map;

    if-eqz v5, :cond_e1

    sget-object v0, Lcom/google/zxing/n;->h:Lcom/google/zxing/n;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v6, Lcom/google/zxing/n;->h:Lcom/google/zxing/n;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_78
    sget-object v0, Lcom/google/zxing/n;->b:Lcom/google/zxing/n;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8b

    const-string v6, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8b
    sget-object v0, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9a

    const-string v6, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9a
    sget-object v0, Lcom/google/zxing/n;->c:Lcom/google/zxing/n;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    if-eqz v0, :cond_e1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a8

    :cond_ca
    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RESULT_DISPLAY_DURATION_MS"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v1, v0

    goto/16 :goto_14

    :cond_d7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_38

    :cond_e1
    const v0, 0x7f0a0028

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(ILjava/lang/Object;J)V

    :cond_e7
    :goto_e7
    return-void

    :cond_e8
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    sget-object v3, Lcom/google/zxing/client/android/q;->b:Lcom/google/zxing/client/android/q;

    if-ne v0, v3, :cond_121

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->p:Ljava/lang/String;

    const-string v3, "/scan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->p:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?q="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&source=zxing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(ILjava/lang/Object;J)V

    goto :goto_e7

    :cond_121
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    sget-object v3, Lcom/google/zxing/client/android/q;->c:Lcom/google/zxing/client/android/q;

    if-ne v0, v3, :cond_e7

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_e7

    iget-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->q:Z

    if-eqz v0, :cond_147

    iget-object v0, p1, Lcom/google/zxing/m;->a:Ljava/lang/String;

    :goto_131
    :try_start_131
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_131 .. :try_end_13a} :catch_14c

    move-result-object v0

    :goto_13b
    iget-object v3, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f:Ljava/lang/String;

    const-string v4, "{CODE}"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(ILjava/lang/Object;J)V

    goto :goto_e7

    :cond_147
    invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->b()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_131

    :catch_14c
    move-exception v3

    goto :goto_13b
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1b

    const v0, 0xbacc

    if-ne p1, v0, :cond_1b

    const-string v0, "ITEM_NUMBER"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->g:Lcom/google/zxing/client/android/c/c;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/c/c;->a(I)Lcom/google/zxing/client/android/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/zxing/client/android/c/b;->a:Lcom/google/zxing/m;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/google/zxing/m;)V

    :cond_1b
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 11

    const v8, 0x7f0a00db

    const/high16 v7, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v6}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->setContentView(I)V

    iput-boolean v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o:Z

    new-instance v0, Lcom/google/zxing/client/android/c/c;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/c/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->g:Lcom/google/zxing/client/android/c/c;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->g:Lcom/google/zxing/client/android/c/c;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/c/c;->a()V

    new-instance v0, Lcom/google/zxing/client/android/n;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->h:Lcom/google/zxing/client/android/n;

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->t:Z

    const v0, 0x7f050003

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->t:Z

    if-nez v0, :cond_57

    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a00cb

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_57
    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    if-ne v0, v7, :cond_161

    invoke-virtual {p0, v2, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->overridePendingTransition(II)V

    :goto_64
    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "BARCODE_TYPE"

    const/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->K:I

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setBackActionEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202b4

    const v5, 0x7f0e05cd

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    iget-object v3, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->R:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202bf

    const v5, 0x7f0e05e0

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->E:Landroid/widget/Button;

    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->z:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bbm/util/fb;->h()Z

    move-result v0

    if-nez v0, :cond_16b

    invoke-virtual {p0, v8}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->A:Landroid/widget/TextView;

    :goto_f3
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->C:Landroid/widget/TextView;

    const v3, 0x7f0e05da

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->G:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "channel_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_184

    const-string v0, "channel_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1, v1}, Lcom/bbm/ui/FooterActionBar;->setActionHidden(IZ)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    if-eqz p1, :cond_14d

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14d

    const-string v0, "channel_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->L:Ljava/lang/String;

    :cond_14d
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_180

    move v0, v1

    :goto_156
    const-string v4, "Channel uri can not be null or blank"

    invoke-static {p0, v0, v4}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_182

    :goto_15e
    if-nez v1, :cond_1c7

    :cond_160
    :goto_160
    return-void

    :cond_161
    const/high16 v0, 0x7f04

    const v3, 0x7f040016

    invoke-virtual {p0, v0, v3}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->overridePendingTransition(II)V

    goto/16 :goto_64

    :cond_16b
    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->A:Landroid/widget/TextView;

    goto/16 :goto_f3

    :cond_180
    move v0, v2

    goto :goto_156

    :cond_182
    move v1, v2

    goto :goto_15e

    :cond_184
    const-string v0, "user_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string v0, "user_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_229

    const-string v0, "user_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->J:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    if-eqz p1, :cond_1b4

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b4

    const-string v0, "user_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->J:Ljava/lang/String;

    :cond_1b4
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->J:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_225

    move v0, v1

    :goto_1bd
    const-string v4, "User uri can not be null or blank"

    invoke-static {p0, v0, v4}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_227

    :goto_1c5
    if-eqz v1, :cond_160

    :cond_1c7
    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1ee

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->v:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/g/an;->e(Ljava/lang/String;)Lcom/bbm/g/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    new-instance v0, Lcom/bbm/ui/activities/bj;

    invoke-direct {v0, p0, v2}, Lcom/bbm/ui/activities/bj;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;B)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->w:Lcom/bbm/ui/activities/bj;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->v:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->w:Lcom/bbm/ui/activities/bj;

    invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    :cond_1ee
    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1fe

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1fe
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    if-ne v0, v7, :cond_207

    invoke-virtual {p0, v2, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->overridePendingTransition(II)V

    :cond_207
    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_214

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/ui/activities/bg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/bg;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_160

    :cond_225
    move v0, v2

    goto :goto_1bd

    :cond_227
    move v1, v2

    goto :goto_1c5

    :cond_229
    move v1, v2

    goto :goto_1c5

    :cond_22b
    const-string v0, "groupUri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    invoke-static {p0, p1}, Lcom/bbm/ui/activities/kp;->a(Landroid/app/Activity;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/FooterActionBar;->setActionHidden(IZ)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->y:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1, v1}, Lcom/bbm/ui/FooterActionBar;->setActionHidden(IZ)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_258

    move v0, v1

    :goto_24c
    const-string v4, "No group URI specified in Intent"

    invoke-static {p0, v0, v4}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25a

    :goto_254
    if-nez v1, :cond_1c7

    goto/16 :goto_160

    :cond_258
    move v0, v2

    goto :goto_24c

    :cond_25a
    move v1, v2

    goto :goto_254
.end method

.method protected final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->h:Lcom/google/zxing/client/android/n;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/n;->d()V

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_3a

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/bbm/ui/activities/ajy;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_9
    :sswitch_9
    return v0

    :sswitch_a
    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    sget-object v2, Lcom/google/zxing/client/android/q;->a:Lcom/google/zxing/client/android/q;

    if-ne v1, v2, :cond_17

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->finish()V

    goto :goto_9

    :cond_17
    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    sget-object v2, Lcom/google/zxing/client/android/q;->d:Lcom/google/zxing/client/android/q;

    if-eq v1, v2, :cond_23

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    sget-object v2, Lcom/google/zxing/client/android/q;->c:Lcom/google/zxing/client/android/q;

    if-ne v1, v2, :cond_5

    :cond_23
    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d:Lcom/google/zxing/m;

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(J)V

    goto :goto_9

    :sswitch_2d
    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v1, v3}, Lcom/google/zxing/client/android/a/e;->a(Z)V

    goto :goto_9

    :sswitch_33
    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/a/e;->a(Z)V

    goto :goto_9

    nop

    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_a
        0x18 -> :sswitch_33
        0x19 -> :sswitch_2d
        0x1b -> :sswitch_9
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method protected final onPause()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->Q:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->V:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bbm/g/an;->a(Z)Lcom/bbm/g/cg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :try_start_16
    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->u:Lcom/bbm/d/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->O:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/bbm/d/af;->b:Lcom/bbm/d/af;

    invoke-static {v0, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/af;)Lcom/bbm/d/ae;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_29
    .catch Lcom/bbm/j/z; {:try_start_16 .. :try_end_29} :catch_86

    :goto_29
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    sget-object v1, Lcom/bbm/util/e/b;->c:Lcom/bbm/util/e/b;

    iput-object v1, v0, Lcom/bbm/util/e/a;->b:Lcom/bbm/util/e/b;

    iget-object v1, v0, Lcom/bbm/util/e/a;->c:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/a/e;->d()V

    iget-object v1, v0, Lcom/bbm/util/e/a;->a:Lcom/bbm/util/e/d;

    invoke-virtual {v1}, Lcom/bbm/util/e/d;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :try_start_48
    iget-object v1, v0, Lcom/bbm/util/e/a;->a:Lcom/bbm/util/e/d;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/bbm/util/e/d;->join(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4f} :catch_84

    :goto_4f
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Lcom/bbm/util/e/a;->removeMessages(I)V

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Lcom/bbm/util/e/a;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    :cond_5e
    iget-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->t:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/e;->b()V

    :cond_67
    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->h:Lcom/google/zxing/client/android/n;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/n;->b()V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o:Z

    if-nez v0, :cond_80

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_80
    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    return-void

    :catch_84
    move-exception v1

    goto :goto_4f

    :catch_86
    move-exception v0

    goto :goto_29
.end method

.method protected final onPostResume()V
    .registers 3

    const-string v0, "onPostResume"

    const-class v1, Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/activities/bh;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bh;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPostResume()V

    return-void
.end method

.method protected final onResume()V
    .registers 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->Q:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->V:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->h:Lcom/google/zxing/client/android/n;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/n;->c()V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->t:Z

    if-eqz v0, :cond_af

    new-instance v0, Lcom/google/zxing/client/android/a/e;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/zxing/client/android/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/ViewfinderView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v3, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v0, v3}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/a/e;)V

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->n:Landroid/view/View;

    iput-object v4, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b:Lcom/bbm/util/e/a;

    iput-object v4, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d:Lcom/google/zxing/m;

    invoke-direct {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f()V

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o:Z

    if-eqz v3, :cond_b0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Landroid/view/SurfaceHolder;)V

    :goto_5a
    invoke-virtual {p0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v0, Lcom/google/zxing/client/android/q;->d:Lcom/google/zxing/client/android/q;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    iput-object v4, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->r:Ljava/util/Collection;

    iput-object v4, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->s:Ljava/lang/String;

    if-eqz v3, :cond_af

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    sget-object v0, Lcom/google/zxing/client/android/q;->a:Lcom/google/zxing/client/android/q;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    invoke-static {v3}, Lcom/google/zxing/client/android/g;->a(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->r:Ljava/util/Collection;

    const-string v0, "SCAN_WIDTH"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "SCAN_HEIGHT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "SCAN_WIDTH"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SCAN_HEIGHT"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v0, :cond_a7

    if-lez v1, :cond_a7

    iget-object v2, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/client/android/a/e;->a(II)V

    :cond_a7
    :goto_a7
    const-string v0, "CHARACTER_SET"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->s:Ljava/lang/String;

    :cond_af
    return-void

    :cond_b0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_5a

    :cond_b8
    if-eqz v4, :cond_d5

    const-string v0, "http://www.google"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d5

    const-string v0, "/m/products/scan"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/google/zxing/client/android/q;->b:Lcom/google/zxing/client/android/q;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    iput-object v4, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->p:Ljava/lang/String;

    sget-object v0, Lcom/google/zxing/client/android/g;->a:Ljava/util/Collection;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->r:Ljava/util/Collection;

    goto :goto_a7

    :cond_d5
    if-eqz v4, :cond_111

    sget-object v5, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->l:[Ljava/lang/String;

    array-length v6, v5

    move v0, v2

    :goto_db
    if-ge v0, v6, :cond_111

    aget-object v7, v5, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10e

    move v0, v1

    :goto_e6
    if-eqz v0, :cond_a7

    sget-object v0, Lcom/google/zxing/client/android/q;->c:Lcom/google/zxing/client/android/q;

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    iput-object v4, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v0, "ret"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f:Ljava/lang/String;

    const-string v0, "raw"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_113

    move v0, v1

    :goto_105
    iput-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->q:Z

    invoke-static {v4}, Lcom/google/zxing/client/android/g;->a(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->r:Ljava/util/Collection;

    goto :goto_a7

    :cond_10e
    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    :cond_111
    move v0, v2

    goto :goto_e6

    :cond_113
    move v0, v2

    goto :goto_105
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_uri"

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel_uri"

    iget-object v1, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->L:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i:Ljava/lang/String;

    const-string v1, "groupUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    if-nez p1, :cond_9

    sget-object v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->k:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o:Z

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Landroid/view/SurfaceHolder;)V

    :cond_13
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->o:Z

    return-void
.end method
