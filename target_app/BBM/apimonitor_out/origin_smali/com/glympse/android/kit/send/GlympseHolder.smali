.class public Lcom/glympse/android/kit/send/GlympseHolder;
.super Ljava/lang/Object;
.source "GlympseHolder.java"


# static fields
.field private static gE:Lcom/glympse/android/kit/send/GlympseHolder;


# instance fields
.field private gB:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/lite/GGlympseLite;",
            ">;"
        }
    .end annotation
.end field

.field private gC:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/api/GGlympse;",
            ">;"
        }
    .end annotation
.end field

.field private gD:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/api/GTicket;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/hal/GUiControlListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/kit/send/GlympseHolder;->gE:Lcom/glympse/android/kit/send/GlympseHolder;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gB:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gC:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gD:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->z:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gB:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gC:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gD:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->z:Ljava/util/Hashtable;

    return-void
.end method

.method public static declared-synchronized instance()Lcom/glympse/android/kit/send/GlympseHolder;
    .registers 2

    const-class v1, Lcom/glympse/android/kit/send/GlympseHolder;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/glympse/android/kit/send/GlympseHolder;->gE:Lcom/glympse/android/kit/send/GlympseHolder;

    if-nez v0, :cond_e

    new-instance v0, Lcom/glympse/android/kit/send/GlympseHolder;

    invoke-direct {v0}, Lcom/glympse/android/kit/send/GlympseHolder;-><init>()V

    sput-object v0, Lcom/glympse/android/kit/send/GlympseHolder;->gE:Lcom/glympse/android/kit/send/GlympseHolder;

    :cond_e
    sget-object v0, Lcom/glympse/android/kit/send/GlympseHolder;->gE:Lcom/glympse/android/kit/send/GlympseHolder;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearControlListener(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearGlympse(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gC:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearGlympseLite(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gB:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearTicket(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gD:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method g(Ljava/lang/String;)Lcom/glympse/android/lite/GGlympseLite;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gB:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lite/GGlympseLite;

    return-object v0
.end method

.method h(Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gC:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GGlympse;

    return-object v0
.end method

.method i(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gD:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    return-object v0
.end method

.method j(Ljava/lang/String;)Lcom/glympse/android/hal/GUiControlListener;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GUiControlListener;

    return-object v0
.end method

.method public setControlListener(Ljava/lang/String;Lcom/glympse/android/hal/GUiControlListener;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGlympse(Ljava/lang/String;Lcom/glympse/android/api/GGlympse;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gC:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGlympseLite(Ljava/lang/String;Lcom/glympse/android/lite/GGlympseLite;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gB:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTicket(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/kit/send/GlympseHolder;->gD:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
