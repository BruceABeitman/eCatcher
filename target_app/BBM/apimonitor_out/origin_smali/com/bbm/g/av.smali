.class public final Lcom/bbm/g/av;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bbm/g/aw;)V
    .registers 5

    const-string v0, "groupClearSplatGroup"

    invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V

    const-string v0, "groupUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/g/av;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "splat"

    invoke-virtual {p2}, Lcom/bbm/g/aw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/g/av;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
