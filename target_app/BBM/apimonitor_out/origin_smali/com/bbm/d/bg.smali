.class public final Lcom/bbm/d/bg;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "contactInvitation"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/bbm/d/bg;
    .registers 5

    const-string v0, "categoryId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/bg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/bbm/d/bg;
    .registers 3

    const-string v0, "greeting"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/bbm/d/bg;
    .registers 3

    const-string v0, "nickname"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/bbm/d/bg;
    .registers 3

    const-string v0, "pin"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/bbm/d/bg;
    .registers 3

    const-string v0, "securityAnswer"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/bbm/d/bg;
    .registers 3

    const-string v0, "securityQuestion"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
