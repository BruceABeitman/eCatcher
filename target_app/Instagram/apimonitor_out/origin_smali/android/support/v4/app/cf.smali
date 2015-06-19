.class final Landroid/support/v4/app/cf;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/cg;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/cf;->e:Ljava/util/Set;

    iput-object p1, p0, Landroid/support/v4/app/cf;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationManagerCompat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/cf;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/support/v4/app/cf;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/cf;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/app/cf;->c:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 9

    const/4 v7, 0x3

    iget-object v0, p0, Landroid/support/v4/app/cf;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/bx;->b(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/app/cf;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    return-void

    :cond_10
    iput-object v1, p0, Landroid/support/v4/app/cf;->e:Ljava/util/Set;

    iget-object v0, p0, Landroid/support/v4/app/cf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Permission present on component "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", not adding listener record."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_6b
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_6f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_73
    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "NotifManCompat"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_99

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding listener record for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_99
    iget-object v3, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    new-instance v4, Landroid/support/v4/app/cg;

    invoke-direct {v4, v0}, Landroid/support/v4/app/cg;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    :cond_a4
    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ae
    :goto_ae
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    const-string v3, "NotifManCompat"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_da

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing listener record for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_da
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/cg;

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->b(Landroid/support/v4/app/cg;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_ae
.end method

.method private a(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/cg;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->b(Landroid/support/v4/app/cg;)V

    :cond_d
    return-void
.end method

.method private a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/cg;

    if-eqz v0, :cond_16

    invoke-static {p2}, Landroid/support/v4/app/ai;->a(Landroid/os/IBinder;)Landroid/support/v4/app/ah;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/cg;->c:Landroid/support/v4/app/ah;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/app/cg;->e:I

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->d(Landroid/support/v4/app/cg;)V

    :cond_16
    return-void
.end method

.method private a(Landroid/support/v4/app/cg;)Z
    .registers 5

    iget-boolean v0, p1, Landroid/support/v4/app/cg;->b:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/cf;->a:Landroid/content/Context;

    invoke-static {}, Landroid/support/v4/app/bx;->a()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/cg;->b:Z

    iget-boolean v0, p1, Landroid/support/v4/app/cg;->b:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/app/cg;->e:I

    :goto_26
    iget-boolean v0, p1, Landroid/support/v4/app/cg;->b:Z

    goto :goto_5

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to bind to listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/app/cf;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_26
.end method

.method private b(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/cg;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->d(Landroid/support/v4/app/cg;)V

    :cond_d
    return-void
.end method

.method private b(Landroid/support/v4/app/cg;)V
    .registers 3

    iget-boolean v0, p1, Landroid/support/v4/app/cg;->b:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/cf;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/cg;->b:Z

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/cg;->c:Landroid/support/v4/app/ah;

    return-void
.end method

.method private b(Landroid/support/v4/app/ch;)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v4/app/cf;->a()V

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/cg;

    iget-object v2, v0, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->d(Landroid/support/v4/app/cg;)V

    goto :goto_d

    :cond_22
    return-void
.end method

.method private c(Landroid/support/v4/app/cg;)V
    .registers 7

    const/4 v3, 0x3

    iget-object v0, p0, Landroid/support/v4/app/cf;->c:Landroid/os/Handler;

    iget-object v1, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget v0, p1, Landroid/support/v4/app/cg;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/v4/app/cg;->e:I

    iget v0, p1, Landroid/support/v4/app/cg;->e:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Giving up on delivering "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/cg;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_b

    :cond_4b
    const/4 v0, 0x1

    iget v1, p1, Landroid/support/v4/app/cg;->e:I

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "NotifManCompat"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling retry for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v1, p0, Landroid/support/v4/app/cf;->c:Landroid/os/Handler;

    iget-object v2, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/cf;->c:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b
.end method

.method private d(Landroid/support/v4/app/cg;)V
    .registers 6

    const/4 v3, 0x3

    const-string v0, "NotifManCompat"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing component "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " queued tasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    iget-object v0, p1, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    :goto_33
    return-void

    :cond_34
    invoke-direct {p0, p1}, Landroid/support/v4/app/cf;->a(Landroid/support/v4/app/cg;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p1, Landroid/support/v4/app/cg;->c:Landroid/support/v4/app/ah;

    if-nez v0, :cond_42

    :cond_3e
    invoke-direct {p0, p1}, Landroid/support/v4/app/cf;->c(Landroid/support/v4/app/cg;)V

    goto :goto_33

    :cond_42
    :goto_42
    iget-object v0, p1, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ch;

    if-eqz v0, :cond_7f

    :try_start_4c
    const-string v1, "NotifManCompat"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p1, Landroid/support/v4/app/cg;->c:Landroid/support/v4/app/ah;

    invoke-interface {v0, v1}, Landroid/support/v4/app/ch;->a(Landroid/support/v4/app/ah;)V

    iget-object v0, p1, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_69
    .catch Landroid/os/DeadObjectException; {:try_start_4c .. :try_end_69} :catch_6a
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_69} :catch_8b

    goto :goto_42

    :catch_6a
    move-exception v0

    const-string v0, "NotifManCompat"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Remote service has died: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7f
    :goto_7f
    iget-object v0, p1, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0, p1}, Landroid/support/v4/app/cf;->c(Landroid/support/v4/app/cg;)V

    goto :goto_33

    :catch_8b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteException communicating with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7f
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/ch;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/cf;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    const/4 v0, 0x0

    :goto_7
    return v0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ch;

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->b(Landroid/support/v4/app/ch;)V

    move v0, v1

    goto :goto_7

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/ce;

    iget-object v2, v0, Landroid/support/v4/app/ce;->a:Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/support/v4/app/ce;->b:Landroid/os/IBinder;

    invoke-direct {p0, v2, v0}, Landroid/support/v4/app/cf;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    move v0, v1

    goto :goto_7

    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->a(Landroid/content/ComponentName;)V

    move v0, v1

    goto :goto_7

    :pswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Landroid/support/v4/app/cf;->b(Landroid/content/ComponentName;)V

    move v0, v1

    goto :goto_7

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8
        :pswitch_11
        :pswitch_1e
        :pswitch_27
    .end packed-switch
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connected to service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/cf;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Landroid/support/v4/app/ce;

    invoke-direct {v2, p1, p2}, Landroid/support/v4/app/ce;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disconnected from service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/cf;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
