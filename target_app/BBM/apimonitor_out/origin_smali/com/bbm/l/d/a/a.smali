.class public final Lcom/bbm/l/d/a/a;
.super Ljava/lang/Object;
.source "CarrierBillingMethod.java"

# interfaces
.implements Lcom/bbm/l/d/a;


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Lcom/bbm/l/d/a/a;

.field private static h:Z

.field private static final i:Lcom/bbm/d/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bbm/l/d/b;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "https://payment.bango.net/bango/"

    sput-object v0, Lcom/bbm/l/d/a/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bbm/l/d/a/a;->h:Z

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    sput-object v0, Lcom/bbm/l/d/a/a;->i:Lcom/bbm/d/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/l/d/a/a;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/l/d/a/a;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bbm/l/d/a/a;
    .registers 2

    sget-object v0, Lcom/bbm/l/d/a/a;->g:Lcom/bbm/l/d/a/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbm/l/d/a/a;

    invoke-direct {v0, p0}, Lcom/bbm/l/d/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bbm/l/d/a/a;->g:Lcom/bbm/l/d/a/a;

    :cond_b
    sget-object v0, Lcom/bbm/l/d/a/a;->g:Lcom/bbm/l/d/a/a;

    return-object v0
.end method

.method private a(Lcom/bbm/l/d/a/b;Lcom/bbm/l/d/a/c;)V
    .registers 10

    const/4 v6, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/bbm/l/d/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p2, Lcom/bbm/l/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    :try_start_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "transacationid"

    iget-object v3, p1, Lcom/bbm/l/d/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bangocontentid"

    iget-object v3, p1, Lcom/bbm/l/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bangouserid"

    iget-object v3, p1, Lcom/bbm/l/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errormessage"

    iget-object v3, p2, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sku"

    iget-object v3, p1, Lcom/bbm/l/d/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bbm/l/d/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bbm/util/ct;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    const-string v3, "homemcc"

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "homemnc"

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_67
    iget-object v2, p0, Lcom/bbm/l/d/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bbm/util/ct;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_93

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    const-string v3, "currentmcc"

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "currentmnc"

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_93
    const-string v2, "devicename"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "devicemodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bbmversion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "price"

    iget-object v3, p1, Lcom/bbm/l/d/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "transacationtype"

    iget-object v3, p1, Lcom/bbm/l/d/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errorcode"

    const-string v3, "null"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "country"

    const-string v3, "null"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "currency"

    const-string v3, "null"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "failedpurchasetrans"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d7
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_d7} :catch_fb

    :goto_d7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed transaction: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bbm/l/d/a/a;->i:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bbm/d/bk;

    invoke-direct {v2, v1}, Lcom/bbm/d/bk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto/16 :goto_12

    :catch_fb
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d7
.end method

.method public static a(Lcom/bbm/l/b/c;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/bbm/l/d/a/a;->h:Z

    if-eqz v2, :cond_7

    :goto_6
    return v0

    :cond_7
    if-eqz p0, :cond_1d

    iget-boolean v2, p0, Lcom/bbm/l/b/c;->c:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/bbm/l/b/c;->b:Ljava/lang/String;

    sput-object v2, Lcom/bbm/l/d/a/a;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/bbm/l/b/c;->a:Z

    if-eqz v2, :cond_1d

    const-string v2, "Carrier billing is enabled for this carrier."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_1d
    move v0, v1

    goto :goto_6
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bbm/l/d/a/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bbm/l/d/c;Lcom/bbm/l/e;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Landroid/app/Activity;ZLcom/bbm/l/a;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/bbm/l/d;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/bbm/l/e;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/l/d/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/bbm/l/d/b/t;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/bbm/l/d/b/x;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(IILandroid/content/Intent;)Z
    .registers 11

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/l/d/a/a;->b:Lcom/bbm/l/d/b;

    if-eqz v0, :cond_61

    :try_start_6
    new-instance v2, Lcom/bbm/l/d/a/b;

    const-string v0, ""

    const-string v3, "{}"

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/bbm/l/d/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_11} :catch_63

    :goto_11
    if-eqz p3, :cond_6d

    const-string v0, "bangoResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_6d

    const-string v0, "bangoResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/d/a/c;

    iget-object v3, v0, Lcom/bbm/l/d/a/c;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/bbm/l/d/a/c;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/bbm/l/d/a/c;->c:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iput-object v3, v2, Lcom/bbm/l/d/a/b;->b:Ljava/lang/String;

    :cond_2d
    if-eqz v4, :cond_31

    iput-object v4, v2, Lcom/bbm/l/d/a/b;->c:Ljava/lang/String;

    :cond_31
    if-eqz v5, :cond_35

    iput-object v5, v2, Lcom/bbm/l/d/a/b;->a:Ljava/lang/String;

    :cond_35
    const-string v3, "carrierbill"

    iput-object v3, v2, Lcom/bbm/l/d/a/b;->d:Ljava/lang/String;

    const-string v3, "PAID-BBMCB"

    iput-object v3, v2, Lcom/bbm/l/d/a/b;->f:Ljava/lang/String;

    :goto_3d
    iget-object v3, p0, Lcom/bbm/l/d/a/a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/bbm/l/d/a/b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/l/d/a/a;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/bbm/l/d/a/b;->g:Ljava/lang/String;

    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_73

    const-string v3, "User choose to purchase with the primary store."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/bbm/l/d/a/c;->b()Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/bbm/l/d/a/a;->b:Lcom/bbm/l/d/b;

    invoke-interface {v3, v6, v1}, Lcom/bbm/l/d/b;->a(ZLcom/bbm/l/d/b/x;)V

    invoke-direct {p0, v2, v0}, Lcom/bbm/l/d/a/a;->a(Lcom/bbm/l/d/a/b;Lcom/bbm/l/d/a/c;)V

    :cond_5e
    invoke-static {}, Lcom/bbm/l/a;->a()Z

    :cond_61
    :goto_61
    const/4 v0, 0x1

    return v0

    :catch_63
    move-exception v0

    const-string v0, "Parsing CarrierBillingPurchase failed."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_11

    :cond_6d
    new-instance v0, Lcom/bbm/l/d/a/c;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/bbm/l/d/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_73
    iget-object v3, p0, Lcom/bbm/l/d/a/a;->b:Lcom/bbm/l/d/b;

    invoke-virtual {v0}, Lcom/bbm/l/d/a/c;->a()Z

    move-result v4

    invoke-virtual {v0}, Lcom/bbm/l/d/a/c;->a()Z

    move-result v5

    if-eqz v5, :cond_80

    move-object v1, v2

    :cond_80
    invoke-interface {v3, v4, v1}, Lcom/bbm/l/d/b;->a(ZLcom/bbm/l/d/b/x;)V

    invoke-virtual {v0}, Lcom/bbm/l/d/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "Sticker purchase did not succeed with carrier billing."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-direct {p0, v2, v0}, Lcom/bbm/l/d/a/a;->a(Lcom/bbm/l/d/a/b;Lcom/bbm/l/d/a/c;)V

    goto :goto_61
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;ILcom/bbm/l/d/b;Ljava/lang/String;)Z
    .registers 9

    iput-object p4, p0, Lcom/bbm/l/d/a/a;->b:Lcom/bbm/l/d/b;

    iput-object p5, p0, Lcom/bbm/l/d/a/a;->d:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/l/d/a/a;->a:Landroid/content/Context;

    const-class v2, Lcom/bbm/ui/activities/PaymentSwitcherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bangoContentID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final d()Lcom/bbm/util/bh;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final e()Lcom/bbm/l/d;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final f()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bbm/l/d/b/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final g()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/l/d/a/a;->g:Lcom/bbm/l/d/a/a;

    return-void
.end method
