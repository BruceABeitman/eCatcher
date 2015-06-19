.class Lcom/glympse/android/lib/ae;
.super Ljava/lang/Object;
.source "CommonSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cI:Lcom/glympse/android/api/GGlympse;

.field private iA:I

.field private iB:Ljava/lang/Object;

.field private iy:Lcom/glympse/android/api/GEventSink;

.field private iz:I


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ae;->iy:Lcom/glympse/android/api/GEventSink;

    iput-object p2, p0, Lcom/glympse/android/lib/ae;->cI:Lcom/glympse/android/api/GGlympse;

    iput p3, p0, Lcom/glympse/android/lib/ae;->iz:I

    iput p4, p0, Lcom/glympse/android/lib/ae;->iA:I

    iput-object p5, p0, Lcom/glympse/android/lib/ae;->iB:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/ae;->iy:Lcom/glympse/android/api/GEventSink;

    iget-object v1, p0, Lcom/glympse/android/lib/ae;->cI:Lcom/glympse/android/api/GGlympse;

    iget v2, p0, Lcom/glympse/android/lib/ae;->iz:I

    iget v3, p0, Lcom/glympse/android/lib/ae;->iA:I

    iget-object v4, p0, Lcom/glympse/android/lib/ae;->iB:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method
