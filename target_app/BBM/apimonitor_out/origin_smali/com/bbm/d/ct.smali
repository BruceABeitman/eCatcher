.class public final Lcom/bbm/d/ct;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "requestAvatar"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "streamId"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userUri"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/d/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method