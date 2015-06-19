.class public final Lcom/bbm/g/cd;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "groupMemberInvite"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "groupUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "invitee"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/g/cd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/g/cd;
    .registers 3

    const-string v0, "autoAcceptHash"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/bbm/g/cd;
    .registers 3

    const-string v0, "message"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/bbm/g/cd;
    .registers 3

    const-string v0, "securityAnswer"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/bbm/g/cd;
    .registers 3

    const-string v0, "securityQuestion"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
