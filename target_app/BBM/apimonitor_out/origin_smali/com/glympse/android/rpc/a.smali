.class Lcom/glympse/android/rpc/a;
.super Ljava/lang/Object;
.source "CalendarEventListener.java"

# interfaces
.implements Lcom/glympse/android/hal/GCalendarListener;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private vj:Lcom/glympse/android/rpc/GMessageGateway;

.field private vk:Lcom/glympse/android/rpc/GConnection;

.field private vl:Lcom/glympse/android/hal/GCalendarProvider;


# direct methods
.method private constructor <init>(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/hal/GCalendarProvider;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/rpc/a;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iput-object p2, p0, Lcom/glympse/android/rpc/a;->vk:Lcom/glympse/android/rpc/GConnection;

    iput-object p3, p0, Lcom/glympse/android/rpc/a;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p4, p0, Lcom/glympse/android/rpc/a;->vl:Lcom/glympse/android/hal/GCalendarProvider;

    return-void
.end method

.method public static a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 6

    invoke-interface {p2}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createCalendarProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GCalendarProvider;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/rpc/a;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/glympse/android/rpc/a;-><init>(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/hal/GCalendarProvider;)V

    invoke-interface {p2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/hal/GCalendarProvider;->start(Lcom/glympse/android/hal/GCalendarListener;Lcom/glympse/android/core/GHandler;)V

    invoke-interface {v0}, Lcom/glympse/android/hal/GCalendarProvider;->refresh()V

    return-void
.end method


# virtual methods
.method public calendarChanged(Lcom/glympse/android/hal/GCalendarProvider;)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/rpc/a;->vl:Lcom/glympse/android/hal/GCalendarProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GCalendarProvider;->getEvents()Lcom/glympse/android/hal/GVector;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/rpc/a;->vl:Lcom/glympse/android/hal/GCalendarProvider;

    invoke-interface {v1}, Lcom/glympse/android/hal/GCalendarProvider;->stop()V

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v1, Lcom/glympse/android/rpc/f;

    invoke-direct {v1}, Lcom/glympse/android/rpc/f;-><init>()V

    iget-object v2, p0, Lcom/glympse/android/rpc/a;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iget-object v3, p0, Lcom/glympse/android/rpc/a;->vk:Lcom/glympse/android/rpc/GConnection;

    iget-object v4, p0, Lcom/glympse/android/rpc/a;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {v4, v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/glympse/android/rpc/f;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V

    goto :goto_13
.end method

.method public getSnapshotDuration()J
    .registers 3

    const-wide/32 v0, 0x36ee800

    return-wide v0
.end method

.method public getSnapshotLookback()J
    .registers 3

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method
