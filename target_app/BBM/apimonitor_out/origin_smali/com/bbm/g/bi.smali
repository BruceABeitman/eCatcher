.class public final Lcom/bbm/g/bi;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "groupConversationStart"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "groupUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bi;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/g/bi;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/g/bi;
    .registers 3

    const-string v0, "cookie"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bi;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
