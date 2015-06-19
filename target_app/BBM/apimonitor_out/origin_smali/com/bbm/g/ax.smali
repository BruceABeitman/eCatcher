.class public final Lcom/bbm/g/ax;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "groupClearSplatGroupList"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "groupUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/ax;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
