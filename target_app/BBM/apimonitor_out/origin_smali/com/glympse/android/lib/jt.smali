.class Lcom/glympse/android/lib/jt;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field private um:Lcom/glympse/android/lib/GTrackPrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GTrackPrivate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/jt;->um:Lcom/glympse/android/lib/GTrackPrivate;

    return-void
.end method


# virtual methods
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 6

    const v0, 0x10002

    if-ne v0, p2, :cond_12

    and-int/lit16 v0, p3, 0x2000

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/glympse/android/lib/jt;->um:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->clear()V

    :cond_12
    return-void
.end method
