.class public final Lcom/bbm/d/cr;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    const-string v0, "reportLocation"

    invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V

    const-string v0, "accuracy"

    invoke-virtual {p0, v0, p1}, Lcom/bbm/d/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "latitude"

    invoke-virtual {p0, v0, p2}, Lcom/bbm/d/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "longitude"

    invoke-virtual {p0, v0, p3}, Lcom/bbm/d/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timeOfFix"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/d/cs;)Lcom/bbm/d/cr;
    .registers 4

    const-string v0, "fixMode"

    invoke-virtual {p1}, Lcom/bbm/d/cs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/d/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic a()Lcom/bbm/f/ab;
    .registers 2

    invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;

    move-result-object v0

    return-object v0
.end method
