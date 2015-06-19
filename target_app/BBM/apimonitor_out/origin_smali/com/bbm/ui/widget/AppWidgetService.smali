.class public Lcom/bbm/ui/widget/AppWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "AppWidgetService.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bbm/ui/widget/a;",
            "Lcom/bbm/ui/widget/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/b/c/q;

    invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V

    invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/widget/AppWidgetService;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/bbm/ui/widget/b;
    .registers 6

    sget-object v1, Lcom/bbm/ui/widget/AppWidgetService;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    new-instance v2, Lcom/bbm/ui/widget/a;

    invoke-direct {v2, p1, p0}, Lcom/bbm/ui/widget/a;-><init>(ILandroid/content/Context;)V

    sget-object v0, Lcom/bbm/ui/widget/AppWidgetService;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/widget/b;

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "WIDGET: Created new ChatRemoteViewsFactory for widget "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Lcom/bbm/ui/widget/b;

    invoke-direct {v0, p0, p1}, Lcom/bbm/ui/widget/b;-><init>(Landroid/content/Context;I)V

    sget-object v3, Lcom/bbm/ui/widget/AppWidgetService;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_33

    return-object v0

    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 4

    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/bbm/ui/widget/AppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bbm/ui/widget/AppWidgetService;->a(Landroid/content/Context;I)Lcom/bbm/ui/widget/b;

    move-result-object v0

    return-object v0
.end method
