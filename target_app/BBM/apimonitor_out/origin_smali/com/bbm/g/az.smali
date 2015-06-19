.class public final Lcom/bbm/g/az;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "groupClearSplatList"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "listUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
