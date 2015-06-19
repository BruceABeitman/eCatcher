.class Lcom/glympse/android/lib/fs;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/lib/fr$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/lib/fs;-><init>()V

    return-void
.end method


# virtual methods
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 6

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_9

    check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->startStopLocation()V

    :cond_9
    return-void
.end method
