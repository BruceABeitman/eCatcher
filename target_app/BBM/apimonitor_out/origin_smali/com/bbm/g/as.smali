.class public final Lcom/bbm/g/as;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "groupClearSplat"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/bbm/g/as;
    .registers 3

    const-string v0, "chats"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/bbm/g/as;
    .registers 3

    const-string v0, "events"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Lcom/bbm/g/as;
    .registers 3

    const-string v0, "invites"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d()Lcom/bbm/g/as;
    .registers 3

    const-string v0, "lists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e()Lcom/bbm/g/as;
    .registers 3

    const-string v0, "members"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f()Lcom/bbm/g/as;
    .registers 3

    const-string v0, "pictures"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
