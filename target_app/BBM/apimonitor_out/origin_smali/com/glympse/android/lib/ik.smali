.class Lcom/glympse/android/lib/ik;
.super Ljava/lang/Object;
.source "TicketLite.java"

# interfaces
.implements Lcom/glympse/android/lib/bv;


# instance fields
.field private jy:Lcom/glympse/android/api/GTicket;

.field private ti:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            "Lcom/glympse/android/lite/GInviteLite;",
            ">;"
        }
    .end annotation
.end field

.field private tj:Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GInviteLite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ik;->ti:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/glympse/android/api/GTicket;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ik;->ti:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public add15Minutes()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    const v1, 0xdbba0

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GTicket;->extend(I)Z

    return-void
.end method

.method public addInvite(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_20

    :cond_4
    :goto_4
    :pswitch_4
    return v0

    :pswitch_5
    invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_b
    :pswitch_b
    invoke-static {p1, p2, p3}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GTicket;->addInvite(Lcom/glympse/android/api/GInvite;)Z

    move-result v0

    goto :goto_4

    :pswitch_18
    invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_5
        :pswitch_18
        :pswitch_4
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method public c(Lcom/glympse/android/api/GInvite;)Lcom/glympse/android/lite/GInviteLite;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->ti:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lite/GInviteLite;

    if-nez v0, :cond_14

    new-instance v0, Lcom/glympse/android/lib/eq;

    invoke-direct {v0, p1}, Lcom/glympse/android/lib/eq;-><init>(Lcom/glympse/android/api/GInvite;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ik;->ti:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/glympse/android/api/GInvite;

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/ik;->c(Lcom/glympse/android/api/GInvite;)Lcom/glympse/android/lite/GInviteLite;

    move-result-object v0

    return-object v0
.end method

.method public expire()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/glympse/android/api/GTicket;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z

    return-void
.end method

.method public getDestination()Lcom/glympse/android/api/GPlace;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getDestination()Lcom/glympse/android/api/GPlace;

    move-result-object v0

    return-object v0
.end method

.method public getExpireTime()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getExpireTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInvites()Lcom/glympse/android/core/GArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GInviteLite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->tj:Lcom/glympse/android/core/GArray;

    if-nez v0, :cond_17

    new-instance v1, Lcom/glympse/android/lib/s;

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/bp;

    invoke-direct {v1, v2, v0}, Lcom/glympse/android/lib/s;-><init>(Lcom/glympse/android/core/GArray;Lcom/glympse/android/lib/bp;)V

    iput-object v1, p0, Lcom/glympse/android/lib/ik;->tj:Lcom/glympse/android/core/GArray;

    :cond_17
    iget-object v0, p0, Lcom/glympse/android/lib/ik;->tj:Lcom/glympse/android/core/GArray;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTicket()Lcom/glympse/android/api/GTicket;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    return-object v0
.end method

.method public modify(I)Z
    .registers 5

    const/4 v1, 0x0

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-interface {v2}, Lcom/glympse/android/api/GTicket;->getState()I

    move-result v2

    if-eq v0, v2, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1d
    move v0, v1

    goto :goto_c

    :cond_1f
    new-instance v1, Lcom/glympse/android/lib/gc;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lite/GTicketLite;

    invoke-direct {v1, v0, v2}, Lcom/glympse/android/lib/gc;-><init>(Lcom/glympse/android/lite/GTicketLite;Lcom/glympse/android/api/GGlympse;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ik;->jy:Lcom/glympse/android/api/GTicket;

    invoke-static {v2, v0, p1, v1}, Lcom/glympse/android/hal/ControlsFactory;->showModifyWizard(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;ILcom/glympse/android/hal/GUiControlListener;)Z

    move-result v0

    goto :goto_c
.end method
