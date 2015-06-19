.class Lcom/glympse/android/lib/df;
.super Ljava/lang/Object;
.source "GroupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cI:Lcom/glympse/android/api/GGlympse;

.field private kA:Lcom/glympse/android/lib/GEvent;

.field private mL:Lcom/glympse/android/lib/de;


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/lib/de;Lcom/glympse/android/lib/GEvent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/df;->cI:Lcom/glympse/android/api/GGlympse;

    iput-object p3, p0, Lcom/glympse/android/lib/df;->kA:Lcom/glympse/android/lib/GEvent;

    iput-object p2, p0, Lcom/glympse/android/lib/df;->mL:Lcom/glympse/android/lib/de;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/df;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/lib/df;->mL:Lcom/glympse/android/lib/de;

    invoke-virtual {v0}, Lcom/glympse/android/lib/de;->bO()V

    iget-object v0, p0, Lcom/glympse/android/lib/df;->kA:Lcom/glympse/android/lib/GEvent;

    iget-object v1, p0, Lcom/glympse/android/lib/df;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GEvent;->send(Lcom/glympse/android/api/GGlympse;)V

    :cond_14
    return-void
.end method
