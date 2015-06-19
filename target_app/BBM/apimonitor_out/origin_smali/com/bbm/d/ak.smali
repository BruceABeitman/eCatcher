.class public final Lcom/bbm/d/ak;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 11

    const-string v0, "channelCreate"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "categoryId"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "chatEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "commentsEnabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "displayName"

    invoke-virtual {p0, v0, p4}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "imagePath"

    invoke-virtual {p0, v0, p5}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isPrivate"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "searchable"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "showMap"

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/d/ak;
    .registers 3

    const-string v0, "contactEmailAddress"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/bbm/d/ak;
    .registers 3

    const-string v0, "location"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/bbm/d/ak;
    .registers 3

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/bbm/d/ak;
    .registers 3

    const-string v0, "phoneNumber"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/bbm/d/ak;
    .registers 3

    const-string v0, "webAddress"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
