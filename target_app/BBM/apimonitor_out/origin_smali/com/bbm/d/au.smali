.class public final Lcom/bbm/d/au;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    const-string v0, "channelMarkPostAsHyped"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "channelUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/au;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "hype"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/au;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "postId"

    invoke-virtual {p0, v0, p3}, Lcom/bbm/d/au;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method
