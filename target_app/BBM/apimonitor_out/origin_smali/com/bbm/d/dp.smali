.class public final Lcom/bbm/d/dp;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "typingNotification"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "conversationUri"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typing"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/dp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method
