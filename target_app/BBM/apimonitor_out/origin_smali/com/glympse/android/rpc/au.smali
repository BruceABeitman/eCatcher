.class Lcom/glympse/android/rpc/au;
.super Lcom/glympse/android/rpc/ai;
.source "MethodTicketInvite.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/rpc/ai;-><init>()V

    return-void
.end method

.method public static name()Ljava/lang/String;
    .registers 1

    const-string v0, "ticket_invite"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/glympse/android/lib/GTicketPrivate;Ljava/lang/String;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/glympse/android/lib/GTicketPrivate;->setCode(Ljava/lang/String;)V

    return-void
.end method

.method protected dm()I
    .registers 2

    const/16 v0, 0x1000

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/glympse/android/rpc/au;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected t(Lcom/glympse/android/lib/GTicketPrivate;)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
