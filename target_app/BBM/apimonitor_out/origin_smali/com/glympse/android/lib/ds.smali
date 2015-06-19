.class Lcom/glympse/android/lib/ds;
.super Ljava/lang/Object;
.source "HistoryListener.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field private na:Lcom/glympse/android/lite/GGlympseLite;

.field private nb:Lcom/glympse/android/lib/bv;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lite/GGlympseLite;Lcom/glympse/android/lite/GTicketLite;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    check-cast p2, Lcom/glympse/android/lib/bv;

    iput-object p2, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    return-void
.end method


# virtual methods
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 13

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v3, p2, :cond_13

    check-cast p4, Lcom/glympse/android/api/GTicket;

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v1, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v2, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    invoke-interface {v0, v1, v3, v2, v4}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    and-int/lit16 v0, p3, 0x2000

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v1, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    const/16 v2, 0x40

    iget-object v3, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_24
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v1, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_35
    and-int/lit16 v0, p3, 0x1000

    if-eqz v0, :cond_74

    invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_43
    if-ge v1, v3, :cond_13

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    const/4 v4, 0x6

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v5

    if-eq v4, v5, :cond_59

    const/4 v4, 0x3

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getState()I

    move-result v5

    if-ne v4, v5, :cond_70

    :cond_59
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/glympse/android/api/GInvite;->completeClientSideSend(Z)Z

    iget-object v4, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    invoke-interface {v4, v0}, Lcom/glympse/android/lib/bv;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lite/GInviteLite;

    iget-object v4, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v5, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    const/16 v6, 0x80

    iget-object v7, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    invoke-interface {v4, v5, v6, v7, v0}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    :cond_74
    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v1, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    const/16 v2, 0x200

    iget-object v3, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_84
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    iget-object v1, p0, Lcom/glympse/android/lib/ds;->na:Lcom/glympse/android/lite/GGlympseLite;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/glympse/android/lib/ds;->nb:Lcom/glympse/android/lib/bv;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13
.end method
