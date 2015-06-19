.class public final Lcom/bbm/d/dd;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "requestNewestTextMessages"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "contextType"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "conversationUri"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/d/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cookie"

    invoke-virtual {p0, v0, p3}, Lcom/bbm/d/dd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method
