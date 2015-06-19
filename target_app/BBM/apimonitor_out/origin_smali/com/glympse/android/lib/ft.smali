.class Lcom/glympse/android/lib/ft;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private hL:Lcom/glympse/android/core/GLocation;

.field private qb:Lcom/glympse/android/lib/fr;

.field private qc:Z


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/fr;Lcom/glympse/android/core/GLocation;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ft;->qb:Lcom/glympse/android/lib/fr;

    iput-object p2, p0, Lcom/glympse/android/lib/ft;->hL:Lcom/glympse/android/core/GLocation;

    iput-boolean p3, p0, Lcom/glympse/android/lib/ft;->qc:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ft;->qb:Lcom/glympse/android/lib/fr;

    iget-object v1, p0, Lcom/glympse/android/lib/ft;->hL:Lcom/glympse/android/core/GLocation;

    iget-boolean v2, p0, Lcom/glympse/android/lib/ft;->qc:Z

    invoke-virtual {v0, v1, v2}, Lcom/glympse/android/lib/fr;->a(Lcom/glympse/android/core/GLocation;Z)V

    return-void
.end method
