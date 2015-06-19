.class public Lcom/spotify/mobile/android/util/tracking/TrackingService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/tracking/f;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/spotify/mobile/android/util/tracking/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/util/tracking/TrackingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_ARGS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/spotify/mobile/android/util/tracking/j;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/tracking/j;-><init>(Lcom/spotify/mobile/android/util/tracking/TrackingService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->b:Lcom/spotify/mobile/android/util/tracking/j;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/tracking/m;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/tracking/m;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/tracking/c;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/tracking/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/tracking/d;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/tracking/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/tracking/a;

    invoke-direct {v1}, Lcom/spotify/mobile/android/util/tracking/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/tracking/f;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/tracking/f;->a()V

    goto :goto_9

    :cond_19
    const-string v0, "Successfully stopped service."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_42

    const-string v0, "EXTRA_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "EXTRA_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "EXTRA_ARGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "Tracked view id must not be null"

    invoke-static {v2, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Received %s event of type %s. Args: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    aput-object v0, v4, v7

    invoke-static {v1, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/tracking/f;

    invoke-interface {v1, v2, v3, v0}, Lcom/spotify/mobile/android/util/tracking/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_32

    :cond_42
    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->b:Lcom/spotify/mobile/android/util/tracking/j;

    invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/util/tracking/j;->removeMessages(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/TrackingService;->b:Lcom/spotify/mobile/android/util/tracking/j;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v6, v1, v2}, Lcom/spotify/mobile/android/util/tracking/j;->sendEmptyMessageDelayed(IJ)Z

    return v7
.end method
