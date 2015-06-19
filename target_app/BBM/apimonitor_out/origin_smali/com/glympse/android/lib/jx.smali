.class Lcom/glympse/android/lib/jx;
.super Ljava/lang/Object;
.source "UserTicket.java"

# interfaces
.implements Lcom/glympse/android/api/GUserTicket;


# instance fields
.field private jy:Lcom/glympse/android/api/GTicket;

.field private mC:Lcom/glympse/android/api/GInvite;

.field private mM:Lcom/glympse/android/api/GUser;


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/jx;->mM:Lcom/glympse/android/api/GUser;

    iput-object p2, p0, Lcom/glympse/android/lib/jx;->jy:Lcom/glympse/android/api/GTicket;

    iput-object p3, p0, Lcom/glympse/android/lib/jx;->mC:Lcom/glympse/android/api/GInvite;

    return-void
.end method


# virtual methods
.method public getInvite()Lcom/glympse/android/api/GInvite;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jx;->mC:Lcom/glympse/android/api/GInvite;

    return-object v0
.end method

.method public getTicket()Lcom/glympse/android/api/GTicket;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jx;->jy:Lcom/glympse/android/api/GTicket;

    return-object v0
.end method

.method public getUser()Lcom/glympse/android/api/GUser;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jx;->mM:Lcom/glympse/android/api/GUser;

    return-object v0
.end method
