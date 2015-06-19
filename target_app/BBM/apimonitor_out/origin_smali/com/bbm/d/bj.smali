.class public final Lcom/bbm/d/bj;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "contactRemove"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/bbm/d/bj;
    .registers 4

    const-string v0, "ignore"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method
