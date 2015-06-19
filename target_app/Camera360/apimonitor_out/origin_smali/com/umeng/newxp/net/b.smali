.class public Lcom/umeng/newxp/net/b;
.super Lcom/umeng/common/net/r;
.source "XpClient.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://ex.puata.info/api/q?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http://ex.umengcloud.com/api/q?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "http://ex.mobmore.com/api/q?"

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/newxp/net/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/common/net/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/newxp/net/f;)Lcom/umeng/newxp/net/g;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_5
    sget-object v2, Lcom/umeng/newxp/net/b;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_b

    :cond_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/umeng/newxp/net/b;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/umeng/newxp/net/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/umeng/common/net/r;

    invoke-direct {v0}, Lcom/umeng/common/net/r;-><init>()V

    invoke-static {}, Lcom/umeng/newxp/common/g;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/common/net/r;->setHeader(Ljava/util/Map;)Lcom/umeng/common/net/r;

    move-result-object v0

    const-class v2, Lcom/umeng/newxp/net/g;

    invoke-virtual {v0, p1, v2}, Lcom/umeng/common/net/r;->execute(Lcom/umeng/common/net/s;Ljava/lang/Class;)Lcom/umeng/common/net/t;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/net/g;

    if-eqz v0, :cond_2d

    iget-object v2, v0, Lcom/umeng/newxp/net/g;->o:Lorg/json/JSONObject;

    if-nez v2, :cond_a

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
