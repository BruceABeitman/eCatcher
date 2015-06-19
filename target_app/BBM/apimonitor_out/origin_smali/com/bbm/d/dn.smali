.class public final Lcom/bbm/d/dn;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/d/do;)V
    .registers 6

    const-string v0, "textMessageWithContext"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "text"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "to"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "type"

    invoke-virtual {p3}, Lcom/bbm/d/do;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/d/dn;
    .registers 3

    const-string v0, "context"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/bbm/d/dn;
    .registers 3

    const-string v0, "partnerAppContent"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/bbm/d/dn;
    .registers 3

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/bbm/d/dn;
    .registers 3

    const-string v0, "realtimeLocation"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Lorg/json/JSONObject;)Lcom/bbm/d/dn;
    .registers 3

    const-string v0, "sharedChannelPost"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d(Lorg/json/JSONObject;)Lcom/bbm/d/dn;
    .registers 3

    const-string v0, "sharedUrl"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
