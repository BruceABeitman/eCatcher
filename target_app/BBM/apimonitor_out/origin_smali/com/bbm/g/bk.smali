.class public final Lcom/bbm/g/bk;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .registers 5

    const-string v0, "groupCreateNew"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "allowNonAdminToInvite"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/bk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/g/bk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/bbm/g/bk;
    .registers 5

    const-string v0, "icon"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/bk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/bbm/g/bk;
    .registers 3

    const-string v0, "cookie"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/bbm/g/bk;
    .registers 3

    const-string v0, "customIcon"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/bbm/g/bk;
    .registers 3

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/bbm/g/bk;
    .registers 3

    const-string v0, "localizedGeneralDiscussionConversationName"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
