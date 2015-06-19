.class Lcom/millennialmedia/android/w;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "call"

.field private static final d:Ljava/lang/String; = "composeEmail"

.field private static final e:Ljava/lang/String; = "composeSms"

.field private static final f:Ljava/lang/String; = "enableHardwareAcceleration"

.field private static final g:Ljava/lang/String; = "getAvailableSchemes"

.field private static final h:Ljava/lang/String; = "getInfo"

.field private static final i:Ljava/lang/String; = "getLocation"

.field private static final j:Ljava/lang/String; = "getOrientation"

.field private static final k:Ljava/lang/String; = "isSchemeAvailable"

.field private static final l:Ljava/lang/String; = "openAppStore"

.field private static final m:Ljava/lang/String; = "openUrl"

.field private static final n:Ljava/lang/String; = "setMMDID"

.field private static final o:Ljava/lang/String; = "showMap"

.field private static final p:Ljava/lang/String; = "tweet"

.field private static final q:Ljava/lang/String; = "BridgeMMDevice"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_a8

    :try_start_6
    const-string v1, "sdkVersion"

    const-string v2, "5.3.0-c3980670.a"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "connection"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v1, :cond_28

    const-string v1, "version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_33
    const-string v1, "mmdid"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "density"

    new-instance v3, Ljava/lang/Float;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "width"

    new-instance v3, Ljava/lang/Integer;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_80

    const-string v2, "language"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "country"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    const-string v3, "MAC-ID"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "path"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    sget-object v3, Lcom/millennialmedia/android/co;->x:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "cookies"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a7
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_a7} :catch_b4

    :goto_a7
    return-object v0

    :catch_a8
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_ac
    const-string v2, "BridgeMMDevice"

    const-string v3, "Bridge getting deviceInfo json exception: "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a7

    :catch_b4
    move-exception v1

    goto :goto_ac
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "call"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->i(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    const-string v1, "composeEmail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->k(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_1b
    const-string v1, "composeSms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->j(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_28
    const-string v1, "enableHardwareAcceleration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_35
    const-string v1, "getAvailableSchemes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_42
    const-string v1, "getInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_4f
    const-string v1, "getLocation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_5c
    const-string v1, "getOrientation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_69
    const-string v1, "isSchemeAvailable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_76
    const-string v1, "openAppStore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->m(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_83
    const-string v1, "openUrl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->l(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto/16 :goto_d

    :cond_91
    const-string v1, "setMMDID"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto/16 :goto_d

    :cond_9f
    const-string v1, "showMap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto/16 :goto_d

    :cond_ad
    const-string v1, "tweet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/w;->n(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto/16 :goto_d
.end method

.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    const-string v0, "mmdid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_20

    invoke-static {v1}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/millennialmedia/android/as;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MMDID is set"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    const-string v0, "BridgeMMDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hardware accel call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/w;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/cq;

    if-eqz v1, :cond_3e

    if-eqz v1, :cond_3e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v1}, Lcom/millennialmedia/android/cq;->c()V

    :goto_35
    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    invoke-virtual {v1}, Lcom/millennialmedia/android/cq;->a()V

    goto :goto_35

    :cond_3e
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 6

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v2

    new-instance v1, Lcom/millennialmedia/android/cg;

    invoke-direct {v1}, Lcom/millennialmedia/android/cg;-><init>()V

    const/4 v3, 0x1

    iput v3, v1, Lcom/millennialmedia/android/cg;->c:I

    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/as;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;

    move-object v0, v1

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 7

    const-string v0, "scheme"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_24
    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v1, :cond_50

    if-eqz v0, :cond_50

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_50

    invoke-static {v1}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_4f
    return-object v0

    :cond_50
    invoke-static {v1}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_4f

    :cond_55
    move-object v1, v0

    goto :goto_24
.end method

.method public e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v1, :cond_3e

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    :goto_26
    new-instance v1, Lcom/millennialmedia/android/cg;

    invoke-direct {v1}, Lcom/millennialmedia/android/cg;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/cg;->c:I

    packed-switch v0, :pswitch_data_40

    const-string v0, "portrait"

    iput-object v0, v1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;

    :goto_35
    move-object v0, v1

    :goto_36
    return-object v0

    :pswitch_37
    const-string v0, "landscape"

    iput-object v0, v1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;

    goto :goto_35

    :cond_3c
    const/4 v0, 0x0

    goto :goto_36

    :cond_3e
    move v0, v1

    goto :goto_26

    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_37
    .end packed-switch
.end method

.method public f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1a

    new-instance v1, Lcom/millennialmedia/android/cg;

    invoke-direct {v1}, Lcom/millennialmedia/android/cg;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/cg;->c:I

    invoke-static {v0}, Lcom/millennialmedia/android/w;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;

    move-object v0, v1

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 7

    sget-object v0, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    if-eqz v0, :cond_ba

    const/4 v1, 0x0

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_ae

    :try_start_a
    const-string v1, "lat"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "long"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "ha"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "va"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4e
    sget-object v1, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "spd"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_65
    sget-object v1, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "brg"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7c
    sget-object v1, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_93

    const-string v1, "alt"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_93
    const-string v1, "tslr"

    sget-object v2, Lcom/millennialmedia/android/cn;->Y:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a2} :catch_c1

    :goto_a2
    new-instance v1, Lcom/millennialmedia/android/cg;

    invoke-direct {v1}, Lcom/millennialmedia/android/cg;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/cg;->c:I

    iput-object v0, v1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;

    move-object v0, v1

    :goto_ad
    return-object v0

    :catch_ae
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_b2
    const-string v2, "BridgeMMDevice"

    const-string v3, "Bridge getLocation json exception: "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a2

    :cond_ba
    const-string v0, "location object has not been set"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_ad

    :catch_c1
    move-exception v1

    goto :goto_b2
.end method

.method public h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 8

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "location"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_5e

    if-eqz v1, :cond_5e

    const-string v2, "BridgeMMDevice"

    const-string v3, "Launching Google Maps: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v2}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/w;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "geo"

    invoke-static {v0, v3, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "Map successfully opened"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_5d
    return-object v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method public i(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 8

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_93

    if-eqz v1, :cond_93

    const-string v2, "BridgeMMDevice"

    const-string v3, "Dialing Phone: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dial"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_73

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v2

    :goto_5a
    invoke-static {v0, v1}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/w;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "tel"

    invoke-static {v0, v3, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_72
    return-object v0

    :cond_73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v2

    goto :goto_5a

    :cond_93
    const/4 v0, 0x0

    goto :goto_72
.end method

.method public j(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 9

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_6d

    if-eqz v1, :cond_6d

    const-string v3, "BridgeMMDevice"

    const-string v4, "Creating sms: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v2, :cond_52

    const-string v1, "sms_body"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_52
    invoke-static {v0, v3}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/w;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "sms"

    invoke-static {v0, v3, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "SMS Sent"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_6c
    return-object v0

    :cond_6d
    const/4 v0, 0x0

    goto :goto_6c
.end method

.method public k(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 9

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "recipient"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "subject"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "message"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_69

    const-string v4, "BridgeMMDevice"

    const-string v5, "Creating email"

    invoke-static {v4, v5}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "plain/text"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_42

    const-string v5, "android.intent.extra.EMAIL"

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_42
    if-eqz v2, :cond_49

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_49
    if-eqz v3, :cond_50

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_50
    invoke-static {v0, v4}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/w;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "email"

    invoke-static {v0, v3, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_68
    return-object v0

    :cond_69
    const/4 v0, 0x0

    goto :goto_68
.end method

.method public l(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 8

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_63

    if-eqz v1, :cond_63

    const-string v2, "BridgeMMDevice"

    const-string v3, "Opening: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    :cond_48
    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/w;->b(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "browser"

    invoke-static {v0, v1, v3, v4}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_59
    invoke-static {v0, v2}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "Overlay opened"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_62
    return-object v0

    :cond_63
    const-string v0, "URL could not be opened"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_62
.end method

.method public m(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "appId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "referrer"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_9e

    if-eqz v1, :cond_9e

    const-string v3, "BridgeMMDevice"

    const-string v4, "Opening marketplace: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Amazon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    const-string v2, "amzn://apps/android?p=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_4f
    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/w;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-string v4, "market"

    invoke-static {v0, v4, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v0, v3}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_67
    return-object v0

    :cond_68
    if-eqz v2, :cond_83

    const-string v4, "market://details?id=%s&referrer=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4f

    :cond_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4f

    :cond_9e
    const/4 v0, 0x0

    goto :goto_67
.end method

.method public n(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
