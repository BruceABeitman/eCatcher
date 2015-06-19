.class public final Lcom/bbm/y;
.super Ljava/lang/Object;
.source "LocationSynchronizer.java"


# instance fields
.field a:J

.field b:Landroid/location/Location;

.field c:Ljava/util/Timer;

.field d:Ljava/lang/String;

.field e:Lcom/bbm/d/a;

.field f:Landroid/content/Context;

.field g:Landroid/os/Handler;

.field public final h:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>(Lcom/bbm/d/a;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/y;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/y;->b:Landroid/location/Location;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/bbm/y;->c:Ljava/util/Timer;

    new-instance v0, Lcom/bbm/z;

    invoke-direct {v0, p0}, Lcom/bbm/z;-><init>(Lcom/bbm/y;)V

    iput-object v0, p0, Lcom/bbm/y;->h:Lcom/bbm/j/k;

    iput-object p1, p0, Lcom/bbm/y;->e:Lcom/bbm/d/a;

    iput-object p2, p0, Lcom/bbm/y;->f:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bbm/y;->g:Landroid/os/Handler;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Location;
    .registers 6

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    :try_start_12
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v2, "Can\'t get Last Known Location from Location Manager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_16
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/y;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/bbm/y;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/y;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/y;->b:Landroid/location/Location;

    return-void
.end method
