.class public final Lcom/bbm/g/bw;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "groupListItemEdit"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "groupListUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "itemId"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/bbm/g/bw;
    .registers 5

    const-string v0, "dueDate"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/bbm/g/bx;)Lcom/bbm/g/bw;
    .registers 4

    const-string v0, "priority"

    invoke-virtual {p1}, Lcom/bbm/g/bx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;
    .registers 4

    const-string v0, "status"

    invoke-virtual {p1}, Lcom/bbm/g/by;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/bbm/g/bw;
    .registers 3

    const-string v0, "assignedToContactUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/bbm/g/bw;
    .registers 3

    const-string v0, "assignedToString"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/bbm/g/bw;
    .registers 3

    const-string v0, "category"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/bbm/g/bw;
    .registers 3

    const-string v0, "itemName"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
