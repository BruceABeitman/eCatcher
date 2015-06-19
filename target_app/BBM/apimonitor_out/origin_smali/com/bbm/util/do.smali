.class final Lcom/bbm/util/do;
.super Landroid/os/Handler;
.source "TpaUtil.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/dn;


# direct methods
.method constructor <init>(Lcom/bbm/util/dn;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/do;->a:Lcom/bbm/util/dn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "partnerApp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bbm/d/fl;

    const-string v1, "invokeUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v1, "bbmId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v1, "appContext"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->a()Lcom/bbm/f/a;

    move-result-object v6

    new-instance v0, Lcom/bbm/util/dp;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/dp;-><init>(Lcom/bbm/util/do;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/d/fl;)V

    invoke-interface {v6, v0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, v5, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/d/z;->d(Ljava/lang/String;)Lcom/bbm/d/br;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method
