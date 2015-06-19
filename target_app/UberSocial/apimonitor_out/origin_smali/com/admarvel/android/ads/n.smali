.class Lcom/admarvel/android/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m:Lcom/admarvel/android/ads/n;


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/hardware/SensorManager;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Ljava/lang/Boolean;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private n:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/n;->m:Lcom/admarvel/android/ads/n;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/admarvel/android/ads/n;->a:I

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/admarvel/android/ads/n;->b:F

    iput-boolean v2, p0, Lcom/admarvel/android/ads/n;->h:Z

    iput-object v1, p0, Lcom/admarvel/android/ads/n;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/admarvel/android/ads/n;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/admarvel/android/ads/n;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/admarvel/android/ads/n;->l:Z

    new-instance v0, Lcom/admarvel/android/ads/n$1;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/n$1;-><init>(Lcom/admarvel/android/ads/n;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->n:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/n;)I
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/n;->a:I

    return v0
.end method

.method public static a()Lcom/admarvel/android/ads/n;
    .registers 1

    sget-object v0, Lcom/admarvel/android/ads/n;->m:Lcom/admarvel/android/ads/n;

    if-nez v0, :cond_b

    new-instance v0, Lcom/admarvel/android/ads/n;

    invoke-direct {v0}, Lcom/admarvel/android/ads/n;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/n;->m:Lcom/admarvel/android/ads/n;

    :cond_b
    sget-object v0, Lcom/admarvel/android/ads/n;->m:Lcom/admarvel/android/ads/n;

    return-object v0
.end method

.method private a(F)V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/admarvel/android/ads/n;->i:Ljava/lang/String;

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private a(FFFFFFFFF)V
    .registers 13

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_86

    iget-object v1, p0, Lcom/admarvel/android/ads/n;->j:Ljava/lang/String;

    if-eqz v1, :cond_86

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/n;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_86
    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/n;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/n;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/n;FFFFFFFFF)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/admarvel/android/ads/n;->a(FFFFFFFFF)V

    return-void
.end method

.method static synthetic b(Lcom/admarvel/android/ads/n;)F
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/n;->b:F

    return v0
.end method

.method private b(F)V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/admarvel/android/ads/n;->k:Ljava/lang/String;

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/n;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method static synthetic b(Lcom/admarvel/android/ads/n;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/n;->a(F)V

    return-void
.end method

.method private d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .registers 7

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->f:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Lcom/admarvel/android/ads/n;->h:Z

    if-nez v0, :cond_34

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->c:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->d:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/admarvel/android/ads/n;->n:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/admarvel/android/ads/n;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/n;->h:Z

    :cond_34
    iget-boolean v0, p0, Lcom/admarvel/android/ads/n;->l:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/admarvel/android/ads/n;->n:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/admarvel/android/ads/n;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/n;->l:Z

    :cond_44
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/admarvel/android/ads/n;->i:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_d

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/admarvel/android/ads/n;->b:F

    :cond_d
    if-eqz p2, :cond_17

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/admarvel/android/ads/n;->a:I

    :cond_17
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_25

    if-eqz p1, :cond_2e

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    move v0, v1

    :goto_20
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_20

    :cond_2e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    goto :goto_25
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/admarvel/android/ads/n;->j:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/n;->h:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_25

    if-eqz p1, :cond_2e

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x1

    :goto_20
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_20

    :cond_2e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/admarvel/android/ads/n;->g:Ljava/lang/Boolean;

    goto :goto_25
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/n;->h:Z

    :try_start_3
    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->n:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/admarvel/android/ads/n;->e:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/admarvel/android/ads/n;->n:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_16

    :cond_12
    :goto_12
    invoke-direct {p0}, Lcom/admarvel/android/ads/n;->d()V

    return-void

    :catch_16
    move-exception v0

    goto :goto_12
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/n;->l:Z

    iput-object p1, p0, Lcom/admarvel/android/ads/n;->k:Ljava/lang/String;

    :cond_7
    return-void
.end method
