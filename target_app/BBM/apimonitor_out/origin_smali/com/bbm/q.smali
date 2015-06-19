.class final Lcom/bbm/q;
.super Ljava/lang/Object;
.source "GlympseWrapper.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field final synthetic a:Lcom/bbm/o;


# direct methods
.method constructor <init>(Lcom/bbm/o;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/q;->a:Lcom/bbm/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 10

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1e

    packed-switch p3, :pswitch_data_4a

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/bbm/q;->a:Lcom/bbm/o;

    iget-object v1, p0, Lcom/bbm/q;->a:Lcom/bbm/o;

    invoke-static {v1}, Lcom/bbm/o;->c(Lcom/bbm/o;)Lcom/glympse/android/api/GEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/o;->b(Lcom/glympse/android/api/GEventListener;)V

    check-cast p4, Lcom/glympse/android/api/GTicket;

    iget-object v0, p0, Lcom/bbm/q;->a:Lcom/bbm/o;

    invoke-static {v0}, Lcom/bbm/o;->c(Lcom/bbm/o;)Lcom/glympse/android/api/GEventListener;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    goto :goto_6

    :cond_1e
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    packed-switch p3, :pswitch_data_50

    goto :goto_6

    :pswitch_25
    check-cast p4, Lcom/glympse/android/api/GTicket;

    invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->initiateClientSideSend()Z

    invoke-interface {v0, v4}, Lcom/glympse/android/api/GInvite;->completeClientSideSend(Z)Z

    goto :goto_2f

    nop

    :pswitch_data_4a
    .packed-switch 0x20000
        :pswitch_7
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1000
        :pswitch_25
    .end packed-switch
.end method
