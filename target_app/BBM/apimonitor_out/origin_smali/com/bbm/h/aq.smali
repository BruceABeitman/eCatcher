.class public final Lcom/bbm/h/aq;
.super Ljava/lang/Object;
.source "InviteUtil.java"


# static fields
.field public static final b:Lcom/bbm/d;

.field private static e:Lcom/bbm/h/aq;


# instance fields
.field public final a:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private final f:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/gs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/h/aq;->e:Lcom/bbm/h/aq;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    sput-object v0, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->w()Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/h/aq;->f:Lcom/bbm/j/w;

    iput-object p1, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/bbm/h/aq;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bbm/h/aq;
    .registers 3

    sget-object v0, Lcom/bbm/h/aq;->e:Lcom/bbm/h/aq;

    if-nez v0, :cond_f

    new-instance v0, Lcom/bbm/h/aq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/h/aq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bbm/h/aq;->e:Lcom/bbm/h/aq;

    :cond_f
    sget-object v0, Lcom/bbm/h/aq;->e:Lcom/bbm/h/aq;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/h/aq;)Lcom/bbm/j/w;
    .registers 2

    iget-object v0, p0, Lcom/bbm/h/aq;->f:Lcom/bbm/j/w;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bbm/d/fn;)Ljava/lang/String;
    .registers 5

    iget-object v0, p1, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    sget-object v2, Lcom/bbm/d/fo;->c:Lcom/bbm/d/fo;

    if-ne v1, v2, :cond_15

    const v0, 0x7f0e04a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bbm/d/gp;Lcom/bbm/d/fn;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p2, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    sget-object v2, Lcom/bbm/d/fo;->c:Lcom/bbm/d/fo;

    if-ne v1, v2, :cond_17

    const v0, 0x7f0e04b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BARCODE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sparse-switch p1, :sswitch_data_32

    :goto_1b
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :sswitch_1f
    const-string v1, "user_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    :sswitch_25
    const-string v1, "channel_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    :sswitch_2b
    const-string v1, "groupUri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    nop

    :sswitch_data_32
    .sparse-switch
        0x3e8 -> :sswitch_1f
        0x3e9 -> :sswitch_25
        0x2726 -> :sswitch_2b
    .end sparse-switch
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Z)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FROM_GROUP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "groupUri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p3, :cond_25

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_25
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_user_pin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/h/az;)V
    .registers 4

    new-instance v0, Lcom/bbm/h/av;

    invoke-direct {v0, p1, p0, p2}, Lcom/bbm/h/av;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/bbm/h/az;)V

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_user_pin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "group_invite"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "group_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "group_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "group_member_count"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "group_max_member_count"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bbm/iceberg/j;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_20

    new-instance v1, Lcom/bbm/ui/b/aa;

    const v2, 0x7f0e049f

    const v3, 0x7f0202e9

    new-instance v4, Lcom/bbm/h/aw;

    invoke-direct {v4, p0, p1}, Lcom/bbm/h/aw;-><init>(Landroid/content/Context;Lcom/bbm/iceberg/j;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v1, p1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    new-instance v1, Lcom/bbm/ui/b/aa;

    const v2, 0x7f0e04a2

    const v3, 0x7f0202ec

    new-instance v4, Lcom/bbm/h/ax;

    invoke-direct {v4, p0, p1}, Lcom/bbm/h/ax;-><init>(Landroid/content/Context;Lcom/bbm/iceberg/j;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    invoke-static {p0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    invoke-static {p0, v0}, Lcom/bbm/h/aq;->b(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/h/aq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bbmpim://user/pin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bbm/g/an;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/bbm/h/aq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/g/cd;->b(Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/bbm/g/cd;->a(Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    invoke-static {p0}, Lcom/bbm/h/aq;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/bbm/util/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bbm/util/ac;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    const v0, 0x7f0e021b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_13
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    new-instance v1, Lcom/bbm/d/bg;

    invoke-direct {v1}, Lcom/bbm/d/bg;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bbm/d/bg;->c(Ljava/lang/String;)Lcom/bbm/d/bg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bbm/d/bg;->a(Ljava/lang/String;)Lcom/bbm/d/bg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "userUri"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    sget-object v4, Lcom/bbm/d/gt;->b:Lcom/bbm/d/gt;

    invoke-virtual {v4}, Lcom/bbm/d/gt;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "typeUri"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_3d} :catch_3e

    goto :goto_12

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_43
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    const-string v2, "userBlockedItem"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[0-9A-Fa-f]{8}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e048b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bbm/util/fb;->f()Z

    move-result v0

    if-eqz v0, :cond_7e

    :try_start_1c
    const-string v0, "android.provider.Telephony$Sms"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefaultSmsPackage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_72

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_72

    const-string v4, ";"

    invoke-static {p1, v4}, Lcom/bbm/util/dk;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sms:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_72
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_78} :catch_7d

    move-result v0

    if-eqz v0, :cond_7e

    move-object v0, v1

    :cond_7c
    :goto_7c
    return-object v0

    :catch_7d
    move-exception v0

    :cond_7e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_ae

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ae

    const-string v1, ";"

    invoke-static {p1, v1}, Lcom/bbm/util/dk;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sms:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_ae
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v0, "No valid sms intents could be created."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_7c
.end method

.method static synthetic b()Lcom/bbm/d;
    .registers 1

    sget-object v0, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/h/aq;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/h/aq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/h/az;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/h/az;)V
    .registers 4

    invoke-static {p1}, Lcom/bbm/util/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/ac;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bbm/h/az;->a()V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "group_invite"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "group_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "group_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/bbm/iceberg/j;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v1

    iget-object v0, p1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/h/aq;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/b/aa;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bbm/ui/b/w;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/ui/b/w;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/bbm/ui/b/w;->b:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/bbm/ui/b/y;

    iget-object v3, v0, Lcom/bbm/ui/b/w;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/bbm/ui/b/y;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v3, Lcom/bbm/ui/b/x;

    invoke-direct {v3, v0, p1}, Lcom/bbm/ui/b/x;-><init>(Lcom/bbm/ui/b/w;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/bbm/ui/b/w;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static b(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_20

    :cond_14
    const-string v1, "Unexpected QR content %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_1f
    return-void

    :cond_20
    invoke-static {v0}, Lcom/bbm/h/aq;->f(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/bbm/d/bg;

    invoke-direct {v3}, Lcom/bbm/d/bg;-><init>()V

    invoke-virtual {v3, v0}, Lcom/bbm/d/bg;->c(Ljava/lang/String;)Lcom/bbm/d/bg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bbm/d/bg;->a(Ljava/lang/String;)Lcom/bbm/d/bg;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bbm/d/bg;->a(J)Lcom/bbm/d/bg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/bg;

    if-eqz p4, :cond_45

    if-eqz p5, :cond_45

    invoke-virtual {v0, p5}, Lcom/bbm/d/bg;->d(Ljava/lang/String;)Lcom/bbm/d/bg;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/bbm/d/bg;->e(Ljava/lang/String;)Lcom/bbm/d/bg;

    :cond_45
    if-eqz p6, :cond_4a

    invoke-virtual {v0, p6}, Lcom/bbm/d/bg;->b(Ljava/lang/String;)Lcom/bbm/d/bg;

    :cond_4a
    sget-object v2, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_2e

    :cond_52
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[Cc][0-9A-Fa-f]{8}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/bbm/h/aq;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/h/aq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "channel_invite"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "channel_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "invite_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/bbm/iceberg/j;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bbm/d/ap;

    invoke-direct {v0, p0, p2}, Lcom/bbm/d/ap;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/bbm/d/ap;->b(Ljava/lang/String;)Lcom/bbm/d/ap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/ap;->a(Ljava/lang/String;)Lcom/bbm/d/ap;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/bbm/h/aq;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic d(Lcom/bbm/h/aq;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/TapToInviteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "[-_a-zA-Z0-9]{8,}[=]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static f(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    const-string v1, ""

    new-instance v2, Lcom/bbm/g/co;

    invoke-direct {v2, v1, p0}, Lcom/bbm/g/co;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    return-void
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "[Cc][0-9A-Fa-f]{8}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-object p0

    :cond_10
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    array-length v2, v1

    if-lez v2, :cond_2a

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object p0, v1, v2

    const-string v1, "[Cc][0-9A-Fa-f]{8}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object p0, v0

    goto :goto_f

    :cond_2a
    move-object p0, v0

    goto :goto_f
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bbm/h/aq;->a([Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bbm/h/at;

    invoke-direct {v0, p0, p1, p2}, Lcom/bbm/h/at;-><init>(Lcom/bbm/h/aq;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 3

    new-instance v0, Lcom/bbm/h/ar;

    invoke-direct {v0, p0, p1}, Lcom/bbm/h/ar;-><init>(Lcom/bbm/h/aq;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;Landroid/app/Activity;)V
    .registers 9

    const/16 v5, 0xc

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v1, p2}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_2d

    :cond_22
    const-string v1, "Unexpected QR content %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_2d
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e04a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public final a(Lcom/bbm/iceberg/j;)V
    .registers 8

    iget-object v0, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    const-wide/16 v3, -0x1

    iget-object v5, p1, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/bbm/h/aq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/cd;

    sget-object v2, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    invoke-virtual {v2, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Lcom/bbm/h/aq;->b(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/bbm/h/as;

    invoke-direct {v0, p0, p1}, Lcom/bbm/h/as;-><init>(Lcom/bbm/h/aq;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/g/cd;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bbmpim://user/pin/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bbm/g/an;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/bbm/h/aq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bbm/g/cd;->b(Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_34
    return-object v1
.end method

.method public final b(Landroid/content/Intent;Landroid/app/Activity;)V
    .registers 10

    const/16 v6, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bbm/h/aq;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0, p2}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2d

    :cond_22
    const-string v0, "Unexpected QR content %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_2d
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v0, "[0-9A-Fa-f]{8}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e04a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_invite"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const-string v1, "group_invite"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8f

    const-string v0, "group_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/bbm/h/au;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bbm/h/au;-><init>(Lcom/bbm/h/aq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    goto :goto_13

    :cond_8f
    invoke-direct {p0, v2, v0}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_93
    invoke-static {v5}, Lcom/bbm/h/aq;->f(Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e03f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
