.class public final Lcom/bbm/d/ad;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adSend"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "adId"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/d/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "to"

    invoke-virtual {p0, v0, p3}, Lcom/bbm/d/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method
