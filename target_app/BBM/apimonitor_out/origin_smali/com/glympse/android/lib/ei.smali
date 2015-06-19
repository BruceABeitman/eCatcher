.class Lcom/glympse/android/lib/ei;
.super Ljava/lang/Object;
.source "IntroLiteListener.java"

# interfaces
.implements Lcom/glympse/android/hal/GUiControlListener;


# instance fields
.field private nT:Lcom/glympse/android/lite/GTicketLite;

.field private nU:I

.field private na:Lcom/glympse/android/lite/GGlympseLite;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lite/GGlympseLite;Lcom/glympse/android/lite/GTicketLite;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ei;->na:Lcom/glympse/android/lite/GGlympseLite;

    iput-object p2, p0, Lcom/glympse/android/lib/ei;->nT:Lcom/glympse/android/lite/GTicketLite;

    iput p3, p0, Lcom/glympse/android/lib/ei;->nU:I

    return-void
.end method

.method private cb()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ei;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v1, p0, Lcom/glympse/android/lib/ei;->nT:Lcom/glympse/android/lite/GTicketLite;

    iget v2, p0, Lcom/glympse/android/lib/ei;->nU:I

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lite/GGlympseLite;->sendTicket(Lcom/glympse/android/lite/GTicketLite;I)Z

    return-void
.end method

.method public static d(Lcom/glympse/android/lib/GGlympsePrivate;)Z
    .registers 5

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {}, Lcom/glympse/android/lib/fi;->cm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static e(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 6

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/lib/fi;->cm()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->save()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/ei;->cb()V

    return-void
.end method

.method public onCompleted()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/ei;->cb()V

    return-void
.end method
