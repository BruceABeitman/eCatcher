.class public Lcom/umeng/newxp/net/f;
.super Lcom/umeng/common/net/s;
.source "XpReqeust.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/common/net/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/newxp/net/f;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/net/f;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/net/f;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/newxp/net/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/common/util/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/umeng/common/net/s;->c:Ljava/lang/String;

    return-object v0
.end method
