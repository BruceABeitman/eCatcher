.class public final Lcom/bbm/util/e/a;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/bbm/util/e/d;

.field public b:Lcom/bbm/util/e/b;

.field public final c:Lcom/google/zxing/client/android/a/e;

.field private final e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bbm/util/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/util/e/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/a/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/ui/activities/CaptureBarcodeActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/android/a/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/bbm/util/e/a;->e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    new-instance v0, Lcom/bbm/util/e/d;

    new-instance v1, Lcom/google/zxing/client/android/aa;

    iget-object v2, p1, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/aa;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/bbm/util/e/d;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/p;)V

    iput-object v0, p0, Lcom/bbm/util/e/a;->a:Lcom/bbm/util/e/d;

    iget-object v0, p0, Lcom/bbm/util/e/a;->a:Lcom/bbm/util/e/d;

    invoke-virtual {v0}, Lcom/bbm/util/e/d;->start()V

    sget-object v0, Lcom/bbm/util/e/b;->b:Lcom/bbm/util/e/b;

    iput-object v0, p0, Lcom/bbm/util/e/a;->b:Lcom/bbm/util/e/b;

    iput-object p4, p0, Lcom/bbm/util/e/a;->c:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {p4}, Lcom/google/zxing/client/android/a/e;->c()V

    invoke-direct {p0}, Lcom/bbm/util/e/a;->a()V

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/util/e/a;->b:Lcom/bbm/util/e/b;

    sget-object v1, Lcom/bbm/util/e/b;->b:Lcom/bbm/util/e/b;

    if-ne v0, v1, :cond_1f

    sget-object v0, Lcom/bbm/util/e/b;->a:Lcom/bbm/util/e/b;

    iput-object v0, p0, Lcom/bbm/util/e/a;->b:Lcom/bbm/util/e/b;

    iget-object v0, p0, Lcom/bbm/util/e/a;->c:Lcom/google/zxing/client/android/a/e;

    iget-object v1, p0, Lcom/bbm/util/e/a;->a:Lcom/bbm/util/e/d;

    invoke-virtual {v1}, Lcom/bbm/util/e/d;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/e;->a(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/bbm/util/e/a;->e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->a()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 15

    const/4 v1, 0x0

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    const v4, 0x7f0a0027

    if-ne v0, v4, :cond_16

    sget-object v0, Lcom/bbm/util/e/a;->d:Ljava/lang/String;

    const-string v1, "Got restart preview message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/bbm/util/e/a;->a()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const v4, 0x7f0a0020

    if-ne v0, v4, :cond_17f

    sget-object v0, Lcom/bbm/util/e/a;->d:Ljava/lang/String;

    const-string v4, "Got decode succeeded message"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bbm/util/e/b;->b:Lcom/bbm/util/e/b;

    iput-object v0, p0, Lcom/bbm/util/e/a;->b:Lcom/bbm/util/e/b;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9e

    :goto_2e
    iget-object v6, p0, Lcom/bbm/util/e/a;->e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/m;

    iget-object v4, v6, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->h:Lcom/google/zxing/client/android/n;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/n;->a()V

    iput-object v0, v6, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d:Lcom/google/zxing/m;

    invoke-static {v0}, Lcom/google/zxing/client/a/u;->c(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;

    move-result-object v5

    sget-object v4, Lcom/bbm/util/e/f;->a:[I

    iget-object v7, v5, Lcom/google/zxing/client/a/q;->o:Lcom/google/zxing/client/a/r;

    invoke-virtual {v7}, Lcom/google/zxing/client/a/r;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_23a

    new-instance v4, Lcom/google/zxing/client/android/d/p;

    invoke-direct {v4, v6, v5, v0}, Lcom/google/zxing/client/android/d/p;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    move-object v5, v4

    :goto_52
    if-eqz v1, :cond_f2

    move v4, v2

    :goto_55
    if-eqz v4, :cond_8a

    iget-object v7, v6, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->g:Lcom/google/zxing/client/android/c/c;

    invoke-virtual {v7, v0, v5}, Lcom/google/zxing/client/android/c/c;->a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;)V

    iget-object v7, v0, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;

    if-eqz v7, :cond_8a

    array-length v8, v7

    if-lez v8, :cond_8a

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09015b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    array-length v10, v7

    if-ne v10, v12, :cond_f5

    const/high16 v10, 0x4080

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    aget-object v10, v7, v3

    aget-object v2, v7, v2

    invoke-static {v8, v9, v10, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V

    :cond_8a
    :goto_8a
    sget-object v2, Lcom/bbm/ui/activities/bi;->a:[I

    iget-object v7, v6, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e:Lcom/google/zxing/client/android/q;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/q;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_252

    goto/16 :goto_15

    :pswitch_99
    invoke-virtual {v6, v0, v5, v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V

    goto/16 :goto_15

    :cond_9e
    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_2e

    :pswitch_a8
    new-instance v4, Lcom/google/zxing/client/android/d/a;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/a;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_52

    :pswitch_af
    new-instance v4, Lcom/google/zxing/client/android/d/c;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/c;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_52

    :pswitch_b6
    new-instance v4, Lcom/google/zxing/client/android/d/g;

    invoke-direct {v4, v6, v5, v0}, Lcom/google/zxing/client/android/d/g;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    move-object v5, v4

    goto :goto_52

    :pswitch_bd
    new-instance v4, Lcom/google/zxing/client/android/d/q;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/q;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_52

    :pswitch_c4
    new-instance v4, Lcom/bbm/util/e/g;

    invoke-direct {v4, v6, v5}, Lcom/bbm/util/e/g;-><init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_52

    :pswitch_cb
    new-instance v4, Lcom/google/zxing/client/android/d/d;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/d;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_52

    :pswitch_d2
    new-instance v4, Lcom/google/zxing/client/android/d/o;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/o;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto/16 :goto_52

    :pswitch_da
    new-instance v4, Lcom/google/zxing/client/android/d/n;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/n;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto/16 :goto_52

    :pswitch_e2
    new-instance v4, Lcom/google/zxing/client/android/d/b;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/b;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto/16 :goto_52

    :pswitch_ea
    new-instance v4, Lcom/google/zxing/client/android/d/e;

    invoke-direct {v4, v6, v5, v0}, Lcom/google/zxing/client/android/d/e;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    move-object v5, v4

    goto/16 :goto_52

    :cond_f2
    move v4, v3

    goto/16 :goto_55

    :cond_f5
    array-length v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_116

    iget-object v10, v0, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    sget-object v11, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    if-eq v10, v11, :cond_105

    iget-object v10, v0, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    sget-object v11, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    if-ne v10, v11, :cond_116

    :cond_105
    aget-object v10, v7, v3

    aget-object v2, v7, v2

    invoke-static {v8, v9, v10, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V

    aget-object v2, v7, v12

    const/4 v10, 0x3

    aget-object v7, v7, v10

    invoke-static {v8, v9, v2, v7}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V

    goto/16 :goto_8a

    :cond_116
    const/high16 v2, 0x4120

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    array-length v10, v7

    move v2, v3

    :goto_11d
    if-ge v2, v10, :cond_8a

    aget-object v11, v7, v2

    iget v12, v11, Lcom/google/zxing/o;->a:F

    iget v11, v11, Lcom/google/zxing/o;->b:F

    invoke-virtual {v8, v12, v11, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    :pswitch_12b
    iget-object v2, v6, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f:Ljava/lang/String;

    if-eqz v2, :cond_176

    invoke-virtual {v6, v0, v5, v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V

    goto/16 :goto_15

    :pswitch_134
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v4, :cond_176

    const-string v2, "preferences_bulk_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_176

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e04f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/zxing/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v3}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v6, v0, v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(J)V

    goto/16 :goto_15

    :cond_176
    iget-object v0, v6, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    goto/16 :goto_15

    :cond_17f
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x7f0a001f

    if-ne v0, v2, :cond_19a

    sget-object v0, Lcom/bbm/util/e/b;->a:Lcom/bbm/util/e/b;

    iput-object v0, p0, Lcom/bbm/util/e/a;->b:Lcom/bbm/util/e/b;

    iget-object v0, p0, Lcom/bbm/util/e/a;->c:Lcom/google/zxing/client/android/a/e;

    iget-object v1, p0, Lcom/bbm/util/e/a;->a:Lcom/bbm/util/e/d;

    invoke-virtual {v1}, Lcom/bbm/util/e/d;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/e;->a(Landroid/os/Handler;I)V

    goto/16 :goto_15

    :cond_19a
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x7f0a0028

    if-ne v0, v2, :cond_1b9

    sget-object v0, Lcom/bbm/util/e/a;->d:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbm/util/e/a;->e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/util/e/a;->e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->finish()V

    goto/16 :goto_15

    :cond_1b9
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x7f0a0024

    if-ne v0, v2, :cond_15

    sget-object v0, Lcom/bbm/util/e/a;->d:Ljava/lang/String;

    const-string v2, "Got product query message"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/util/e/a;->e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-virtual {v3}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_206

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/bbm/util/e/a;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Using browser in package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_206
    const-string v3, "com.android.browser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_21b
    :try_start_21b
    iget-object v1, p0, Lcom/bbm/util/e/a;->e:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_220
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21b .. :try_end_220} :catch_222

    goto/16 :goto_15

    :catch_222
    move-exception v1

    sget-object v1, Lcom/bbm/util/e/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find anything to handle VIEW of URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    nop

    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_af
        :pswitch_b6
        :pswitch_bd
        :pswitch_c4
        :pswitch_cb
        :pswitch_d2
        :pswitch_da
        :pswitch_e2
        :pswitch_ea
    .end packed-switch

    :pswitch_data_252
    .packed-switch 0x1
        :pswitch_99
        :pswitch_99
        :pswitch_12b
        :pswitch_134
    .end packed-switch
.end method
