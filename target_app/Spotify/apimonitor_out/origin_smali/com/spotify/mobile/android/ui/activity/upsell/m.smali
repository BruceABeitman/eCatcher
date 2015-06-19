.class public final Lcom/spotify/mobile/android/ui/activity/upsell/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Lcom/a/a/a/a;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/net/Uri;

.field private h:Lcom/spotify/mobile/android/ui/activity/upsell/n;

.field private final i:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/m;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->i:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/os/Bundle;)I
    .registers 3

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x6

    goto :goto_12
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/m;Lcom/a/a/a/a;)Lcom/a/a/a/a;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v1

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method private a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "post"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%d"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "responseCode"

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4f

    :try_start_33
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "&%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "purchaseData"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    invoke-static {p3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    if-eqz p4, :cond_6d

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "&%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dataSignature"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    invoke-static {p4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_6d} :catch_7f

    :cond_6d
    :goto_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BASE64"

    invoke-static {v0, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void

    :catch_7f
    move-exception v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Exception;)V

    goto :goto_6d
.end method

.method public static a()Z
    .registers 3

    const/4 v2, 0x0

    const-string v0, "Google Play In-app Billing is disabled"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->e:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/ui/activity/upsell/p;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ITEM_ID_LIST"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :try_start_b
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_1e

    move-result-object v0

    const-string v1, "DETAILS_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_28

    move v0, v6

    :goto_1d
    return v0

    :catch_1e
    move-exception v0

    const-string v1, ""

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto :goto_1d

    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_38
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "price"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "title"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "description"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/p;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/activity/upsell/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_63} :catch_64

    goto :goto_2c

    :catch_64
    move-exception v0

    const-string v1, ""

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto :goto_1d

    :cond_6e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/ui/activity/upsell/o;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    if-nez v0, :cond_f

    const-string v0, "Disconnected from service"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b:Ljava/lang/String;

    invoke-interface {v1, v4, v5, p1, v0}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_24

    move-result-object v0

    if-nez v0, :cond_2e

    const-string v0, "getPurchases() returned null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_e

    :catch_24
    move-exception v0

    const-string v1, ""

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_e

    :cond_2e
    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_43

    const-string v0, "Response code %d when getting purchases"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_e

    :cond_43
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v1, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_59

    if-nez v7, :cond_5b

    :cond_59
    move v0, v2

    goto :goto_e

    :cond_5b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v5, v2

    :goto_68
    if-ge v5, v8, :cond_8a

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "orderId"

    invoke-static {v0, v9}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_86

    new-instance v10, Lcom/spotify/mobile/android/ui/activity/upsell/o;

    invoke-direct {v10, p1, v9, v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_86
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_68

    :cond_8a
    if-eqz v4, :cond_92

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_95

    :cond_92
    move v0, v3

    goto/16 :goto_e

    :cond_95
    move-object v0, v4

    goto/16 :goto_10
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Lcom/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Lcom/spotify/mobile/android/ui/activity/upsell/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->h:Lcom/spotify/mobile/android/ui/activity/upsell/n;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->f:Z

    if-eqz v1, :cond_14

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->e:Z

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_23

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_23
    const-string v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_33

    :goto_32
    return-object p1

    :cond_33
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gpiab"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gpiab_country"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_32
.end method

.method public final a(Landroid/webkit/WebView;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Landroid/os/Bundle;)I

    move-result v0

    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a:Landroid/content/Context;

    const-string v2, "com.spotify.mobile.android.service.action.googleiab.REGISTER_PURCHASES"

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/activity/upsell/n;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->h:Lcom/spotify/mobile/android/ui/activity/upsell/n;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .registers 15

    const/4 v6, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    move v0, v7

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/purchase/googleiap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v7

    goto :goto_d

    :cond_1c
    const-string v0, "true"

    const-string v1, "post"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v7

    goto :goto_d

    :cond_2c
    iput-object p3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->g:Landroid/net/Uri;

    const-string v0, "productId"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "type"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "orderId"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    if-nez v0, :cond_6b

    const-string v0, "Disconnected from service"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v9

    move v0, v6

    :goto_4d
    if-nez v0, :cond_9f

    if-nez v1, :cond_9f

    :goto_51
    if-nez v6, :cond_99

    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :try_start_58
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_69
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_58 .. :try_end_69} :catch_90

    :goto_69
    move v0, v8

    goto :goto_d

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Landroid/os/Bundle;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_77} :catch_84

    move-result v1

    :try_start_78
    const-string v2, "BUY_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_80} :catch_9d

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_4d

    :catch_84
    move-exception v0

    move v1, v6

    :goto_86
    const-string v2, ""

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    move-object v1, v9

    goto :goto_4d

    :catch_90
    move-exception v0

    const-string v1, ""

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_69

    :cond_99
    invoke-direct {p0, p2, v6, v9, v9}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :catch_9d
    move-exception v0

    goto :goto_86

    :cond_9f
    move v6, v0

    goto :goto_51
.end method

.method public final a(Lcom/spotify/mobile/android/ui/activity/upsell/o;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "inapp"

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/activity/upsell/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Only managed products can be consumed"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-object v2, p1, Lcom/spotify/mobile/android/ui/activity/upsell/o;->c:Ljava/lang/String;

    const-string v3, "purchaseToken"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    const-string v2, "Could not get token from data (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/activity/upsell/o;->c:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_24
    return v0

    :cond_25
    :try_start_25
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c:Lcom/a/a/a/a;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lcom/a/a/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4c

    const-string v1, "Failed to consume purchase %d (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_42} :catch_43

    goto :goto_24

    :catch_43
    move-exception v1

    const-string v2, ""

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24

    :cond_4c
    :try_start_4c
    const-string v2, "Successfully consumed purchase (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/spotify/mobile/android/ui/activity/upsell/o;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_59} :catch_43

    move v0, v1

    goto :goto_24
.end method

.method final a(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/ui/activity/upsell/o;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->f:Z

    if-eqz v2, :cond_f

    const-string v2, "inapp"

    invoke-direct {p0, v2, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    :cond_f
    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->e:Z

    if-eqz v2, :cond_1c

    const-string v2, "subs"

    invoke-direct {p0, v2, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1c

    move v0, v1

    :cond_1c
    return v0
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->d:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->d:Z

    :cond_12
    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->f:Z

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m;->h:Lcom/spotify/mobile/android/ui/activity/upsell/n;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 10

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "spotify.country.detection"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "inapp"

    invoke-direct {p0, v2, v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/p;

    const-string v2, "spotify.country.detection"

    iget-object v3, v0, Lcom/spotify/mobile/android/ui/activity/upsell/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/activity/upsell/p;->c:Ljava/lang/String;

    const-string v0, "^\\D*(\\d{2})\\D+(\\d{1,2})\\D*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_70
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    if-lt v2, v7, :cond_94

    if-gt v2, v8, :cond_94

    if-lt v0, v7, :cond_94

    if-gt v0, v8, :cond_94

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_93
    return-object v0

    :cond_94
    const-string v0, "Could not detect country from price: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "XX"

    goto :goto_93

    :cond_a0
    const/4 v0, 0x0

    goto :goto_93
.end method
