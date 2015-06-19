.class public final Lcom/bbm/d/cq;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "refreshStickerPacks"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "stickerPacks"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/cq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/bbm/d/cq;
    .registers 4

    const-string v0, "refresh"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/cq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method
