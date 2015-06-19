.class public final Lcom/google/zxing/client/android/d;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field final a:Lcom/google/zxing/client/android/i;

.field b:Lcom/google/zxing/client/android/e;

.field final c:Lcom/google/zxing/client/android/a/e;

.field private final e:Lcom/google/zxing/client/android/CaptureActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/zxing/client/android/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/d;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/a/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
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

    iput-object p1, p0, Lcom/google/zxing/client/android/d;->e:Lcom/google/zxing/client/android/CaptureActivity;

    new-instance v0, Lcom/google/zxing/client/android/i;

    new-instance v1, Lcom/google/zxing/client/android/aa;

    iget-object v2, p1, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/aa;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/zxing/client/android/i;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/p;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/i;

    iget-object v0, p0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/i;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/i;->start()V

    sget-object v0, Lcom/google/zxing/client/android/e;->b:Lcom/google/zxing/client/android/e;

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->b:Lcom/google/zxing/client/android/e;

    iput-object p4, p0, Lcom/google/zxing/client/android/d;->c:Lcom/google/zxing/client/android/a/e;

    invoke-virtual {p4}, Lcom/google/zxing/client/android/a/e;->c()V

    invoke-direct {p0}, Lcom/google/zxing/client/android/d;->a()V

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/client/android/d;->b:Lcom/google/zxing/client/android/e;

    sget-object v1, Lcom/google/zxing/client/android/e;->b:Lcom/google/zxing/client/android/e;

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/google/zxing/client/android/e;->a:Lcom/google/zxing/client/android/e;

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->b:Lcom/google/zxing/client/android/e;

    iget-object v0, p0, Lcom/google/zxing/client/android/d;->c:Lcom/google/zxing/client/android/a/e;

    iget-object v1, p0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/i;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/i;->a()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/w;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/e;->a(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/google/zxing/client/android/d;->e:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->c:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->a()V

    :cond_1e
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

    sget v4, Lcom/google/zxing/client/android/w;->restart_preview:I

    if-ne v0, v4, :cond_15

    sget-object v0, Lcom/google/zxing/client/android/d;->d:Ljava/lang/String;

    const-string v1, "Got restart preview message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/zxing/client/android/d;->a()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    sget v4, Lcom/google/zxing/client/android/w;->decode_succeeded:I

    if-ne v0, v4, :cond_17a

    sget-object v0, Lcom/google/zxing/client/android/d;->d:Ljava/lang/String;

    const-string v4, "Got decode succeeded message"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/zxing/client/android/e;->b:Lcom/google/zxing/client/android/e;

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->b:Lcom/google/zxing/client/android/e;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9a

    :goto_2c
    iget-object v6, p0, Lcom/google/zxing/client/android/d;->e:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/m;

    iget-object v4, v6, Lcom/google/zxing/client/android/CaptureActivity;->h:Lcom/google/zxing/client/android/n;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/n;->a()V

    iput-object v0, v6, Lcom/google/zxing/client/android/CaptureActivity;->d:Lcom/google/zxing/m;

    invoke-static {v0}, Lcom/google/zxing/client/a/u;->c(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;

    move-result-object v5

    sget-object v4, Lcom/google/zxing/client/android/d/m;->a:[I

    iget-object v7, v5, Lcom/google/zxing/client/a/q;->o:Lcom/google/zxing/client/a/r;

    invoke-virtual {v7}, Lcom/google/zxing/client/a/r;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_230

    new-instance v4, Lcom/google/zxing/client/android/d/p;

    invoke-direct {v4, v6, v5, v0}, Lcom/google/zxing/client/android/d/p;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    move-object v5, v4

    :goto_50
    if-eqz v1, :cond_ee

    move v4, v2

    :goto_53
    if-eqz v4, :cond_87

    iget-object v7, v6, Lcom/google/zxing/client/android/CaptureActivity;->g:Lcom/google/zxing/client/android/c/c;

    invoke-virtual {v7, v0, v5}, Lcom/google/zxing/client/android/c/c;->a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;)V

    iget-object v7, v0, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;

    if-eqz v7, :cond_87

    array-length v8, v7

    if-lez v8, :cond_87

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/google/zxing/client/android/u;->result_points:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    array-length v10, v7

    if-ne v10, v12, :cond_f1

    const/high16 v10, 0x4080

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    aget-object v10, v7, v3

    aget-object v2, v7, v2

    invoke-static {v8, v9, v10, v2}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V

    :cond_87
    :goto_87
    sget-object v2, Lcom/google/zxing/client/android/c;->a:[I

    iget-object v7, v6, Lcom/google/zxing/client/android/CaptureActivity;->e:Lcom/google/zxing/client/android/q;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/q;->ordinal()I

    move-result v7

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_248

    goto :goto_14

    :pswitch_95
    invoke-virtual {v6, v0, v5, v1}, Lcom/google/zxing/client/android/CaptureActivity;->b(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V

    goto/16 :goto_14

    :cond_9a
    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_2c

    :pswitch_a4
    new-instance v4, Lcom/google/zxing/client/android/d/a;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/a;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_50

    :pswitch_ab
    new-instance v4, Lcom/google/zxing/client/android/d/c;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/c;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_50

    :pswitch_b2
    new-instance v4, Lcom/google/zxing/client/android/d/g;

    invoke-direct {v4, v6, v5, v0}, Lcom/google/zxing/client/android/d/g;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    move-object v5, v4

    goto :goto_50

    :pswitch_b9
    new-instance v4, Lcom/google/zxing/client/android/d/q;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/q;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_50

    :pswitch_c0
    new-instance v4, Lcom/google/zxing/client/android/d/r;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/r;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_50

    :pswitch_c7
    new-instance v4, Lcom/google/zxing/client/android/d/d;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/d;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto :goto_50

    :pswitch_ce
    new-instance v4, Lcom/google/zxing/client/android/d/o;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/o;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto/16 :goto_50

    :pswitch_d6
    new-instance v4, Lcom/google/zxing/client/android/d/n;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/n;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto/16 :goto_50

    :pswitch_de
    new-instance v4, Lcom/google/zxing/client/android/d/b;

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/client/android/d/b;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    move-object v5, v4

    goto/16 :goto_50

    :pswitch_e6
    new-instance v4, Lcom/google/zxing/client/android/d/e;

    invoke-direct {v4, v6, v5, v0}, Lcom/google/zxing/client/android/d/e;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    move-object v5, v4

    goto/16 :goto_50

    :cond_ee
    move v4, v3

    goto/16 :goto_53

    :cond_f1
    array-length v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_112

    iget-object v10, v0, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    sget-object v11, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    if-eq v10, v11, :cond_101

    iget-object v10, v0, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    sget-object v11, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    if-ne v10, v11, :cond_112

    :cond_101
    aget-object v10, v7, v3

    aget-object v2, v7, v2

    invoke-static {v8, v9, v10, v2}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V

    aget-object v2, v7, v12

    const/4 v10, 0x3

    aget-object v7, v7, v10

    invoke-static {v8, v9, v2, v7}, Lcom/google/zxing/client/android/CaptureActivity;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/o;Lcom/google/zxing/o;)V

    goto/16 :goto_87

    :cond_112
    const/high16 v2, 0x4120

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    array-length v10, v7

    move v2, v3

    :goto_119
    if-ge v2, v10, :cond_87

    aget-object v11, v7, v2

    iget v12, v11, Lcom/google/zxing/o;->a:F

    iget v11, v11, Lcom/google/zxing/o;->b:F

    invoke-virtual {v8, v12, v11, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_119

    :pswitch_127
    iget-object v2, v6, Lcom/google/zxing/client/android/CaptureActivity;->f:Ljava/lang/String;

    if-eqz v2, :cond_175

    invoke-virtual {v6, v0, v5, v1}, Lcom/google/zxing/client/android/CaptureActivity;->b(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V

    goto/16 :goto_14

    :pswitch_130
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v4, :cond_175

    const-string v4, "preferences_bulk_mode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_175

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/zxing/client/android/y;->msg_bulk_mode_scanned:I

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

    invoke-static {v6, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v6, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->a(J)V

    goto/16 :goto_14

    :cond_175
    invoke-virtual {v6, v0, v5, v1}, Lcom/google/zxing/client/android/CaptureActivity;->a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;Landroid/graphics/Bitmap;)V

    goto/16 :goto_14

    :cond_17a
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/google/zxing/client/android/w;->decode_failed:I

    if-ne v0, v2, :cond_193

    sget-object v0, Lcom/google/zxing/client/android/e;->a:Lcom/google/zxing/client/android/e;

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->b:Lcom/google/zxing/client/android/e;

    iget-object v0, p0, Lcom/google/zxing/client/android/d;->c:Lcom/google/zxing/client/android/a/e;

    iget-object v1, p0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/i;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/i;->a()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/w;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/e;->a(Landroid/os/Handler;I)V

    goto/16 :goto_14

    :cond_193
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/google/zxing/client/android/w;->return_scan_result:I

    if-ne v0, v2, :cond_1b1

    sget-object v0, Lcom/google/zxing/client/android/d;->d:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/zxing/client/android/d;->e:Lcom/google/zxing/client/android/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/zxing/client/android/d;->e:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto/16 :goto_14

    :cond_1b1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/google/zxing/client/android/w;->launch_product_query:I

    if-ne v0, v2, :cond_14

    sget-object v0, Lcom/google/zxing/client/android/d;->d:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/google/zxing/client/android/d;->e:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1fd

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/google/zxing/client/android/d;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Using browser in package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fd
    const-string v3, "com.android.browser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_212

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_212
    :try_start_212
    iget-object v1, p0, Lcom/google/zxing/client/android/d;->e:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_217
    .catch Landroid/content/ActivityNotFoundException; {:try_start_212 .. :try_end_217} :catch_219

    goto/16 :goto_14

    :catch_219
    move-exception v1

    sget-object v1, Lcom/google/zxing/client/android/d;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find anything to handle VIEW of URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :pswitch_data_230
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_ab
        :pswitch_b2
        :pswitch_b9
        :pswitch_c0
        :pswitch_c7
        :pswitch_ce
        :pswitch_d6
        :pswitch_de
        :pswitch_e6
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_95
        :pswitch_95
        :pswitch_127
        :pswitch_130
    .end packed-switch
.end method
