.class Lcom/glympse/android/hal/g;
.super Ljava/lang/Object;
.source "ActivityProvider.java"

# interfaces
.implements Lcom/glympse/android/hal/GActivityProvider;
.implements Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# static fields
.field private static final A:Ljava/lang/String; = "com.glympse.android.hal.activity.CHANGED"


# instance fields
.field private e:Landroid/content/Context;

.field private t:Z

.field private u:Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Landroid/content/Intent;

.field private y:Lcom/glympse/android/hal/h;

.field private z:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/glympse/android/hal/GActivityListener;",
            "Lcom/glympse/android/hal/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/g;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/glympse/android/hal/g;->isSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/hal/g;->t:Z

    iget-boolean v0, p0, Lcom/glympse/android/hal/g;->t:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/g;->v:Z

    new-instance v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;

    invoke-direct {v0, p1, p0, p0}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;-><init>(Landroid/content/Context;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/glympse/android/hal/g;->u:Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-direct {p0}, Lcom/glympse/android/hal/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/g;->w:Ljava/lang/String;

    invoke-direct {p0}, Lcom/glympse/android/hal/g;->e()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/g;->x:Landroid/content/Intent;

    :cond_2c
    return-void
.end method

.method private a(I)I
    .registers 3

    packed-switch p1, :pswitch_data_10

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method static synthetic a(Lcom/glympse/android/hal/g;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/g;->a(I)I

    move-result v0

    return v0
.end method

.method private a(J)Landroid/app/PendingIntent;
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/g;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/g;->x:Landroid/content/Intent;

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/g;->u:Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;

    invoke-virtual {v1, p1, p2, v0}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->requestActivityUpdates(JLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method static synthetic a(Lcom/glympse/android/hal/g;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.glympse.android.hal.activity.CHANGED_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/hal/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/glympse/android/hal/g;->w:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/hal/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const v1, 0x3d0900

    invoke-static {p0, v1}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isVersionSupported(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/glympse/android/hal/gms/common/Permission;->ACTIVITY_RECOGNITION:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_21

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :catch_21
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public isSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/hal/g;->t:Z

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/hal/g;->v:Z

    iget-object v0, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/i;

    iget-object v2, v0, Lcom/glympse/android/hal/i;->D:Landroid/app/PendingIntent;

    if-nez v2, :cond_d

    iget-wide v2, v0, Lcom/glympse/android/hal/i;->C:J

    invoke-direct {p0, v2, v3}, Lcom/glympse/android/hal/g;->a(J)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/glympse/android/hal/i;->D:Landroid/app/PendingIntent;

    goto :goto_d

    :cond_2c
    return-void
.end method

.method public onConnectionFailed(Lcom/glympse/android/hal/gms/common/ConnectionResult;)V
    .registers 2

    return-void
.end method

.method public onDisconnected()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/g;->v:Z

    iget-object v0, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/i;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/glympse/android/hal/i;->D:Landroid/app/PendingIntent;

    goto :goto_d

    :cond_23
    return-void
.end method

.method public registerUpdates(Lcom/glympse/android/hal/GActivityListener;J)V
    .registers 9

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/hal/g;->t:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/glympse/android/hal/i;

    invoke-direct {v0, p0, v3}, Lcom/glympse/android/hal/i;-><init>(Lcom/glympse/android/hal/g;Lcom/glympse/android/hal/g$1;)V

    iput-wide p2, v0, Lcom/glympse/android/hal/i;->C:J

    iget-object v1, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v1, v2, :cond_3d

    iget-object v1, p0, Lcom/glympse/android/hal/g;->u:Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;

    invoke-virtual {v1}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->connect()V

    new-instance v1, Lcom/glympse/android/hal/h;

    invoke-direct {v1, p0, v3}, Lcom/glympse/android/hal/h;-><init>(Lcom/glympse/android/hal/g;Lcom/glympse/android/hal/g$1;)V

    iput-object v1, p0, Lcom/glympse/android/hal/g;->y:Lcom/glympse/android/hal/h;

    iget-object v1, p0, Lcom/glympse/android/hal/g;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/glympse/android/hal/g;->y:Lcom/glympse/android/hal/h;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/glympse/android/hal/g;->w:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3d
    iget-boolean v1, p0, Lcom/glympse/android/hal/g;->v:Z

    if-eqz v1, :cond_d

    invoke-direct {p0, p2, p3}, Lcom/glympse/android/hal/g;->a(J)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/hal/i;->D:Landroid/app/PendingIntent;

    goto :goto_d
.end method

.method public removeUpdates(Lcom/glympse/android/hal/GActivityListener;)V
    .registers 4

    iget-boolean v0, p0, Lcom/glympse/android/hal/g;->t:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/i;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/glympse/android/hal/g;->v:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/glympse/android/hal/i;->D:Landroid/app/PendingIntent;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/glympse/android/hal/g;->u:Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;

    iget-object v0, v0, Lcom/glympse/android/hal/i;->D:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    :cond_23
    iget-object v0, p0, Lcom/glympse/android/hal/g;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/glympse/android/hal/g;->u:Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;

    invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->disconnect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/g;->v:Z

    iget-object v0, p0, Lcom/glympse/android/hal/g;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/g;->y:Lcom/glympse/android/hal/h;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/g;->y:Lcom/glympse/android/hal/h;

    goto :goto_4
.end method
