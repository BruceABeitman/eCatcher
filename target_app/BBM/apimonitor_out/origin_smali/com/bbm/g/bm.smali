.class public final Lcom/bbm/g/bm;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bbm/g/bn;)V
    .registers 5

    const-string v0, "groupInvitationResponse"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "invitationId"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "responseType"

    invoke-virtual {p2}, Lcom/bbm/g/bn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/bm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/g/bm;
    .registers 3

    const-string v0, "securityResponse"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
