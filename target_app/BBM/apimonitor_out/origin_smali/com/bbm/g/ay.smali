.class public final Lcom/bbm/g/ay;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "groupClearSplatInvitation"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/g/ay;
    .registers 3

    const-string v0, "invitationId"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/ay;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
