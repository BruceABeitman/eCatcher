.class public final Lcom/tencent/map/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/b/c$a;,
        Lcom/tencent/map/b/c$b;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/map/b/c;


# instance fields
.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/map/b/c;->b:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/b/c;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/tencent/map/b/c;
    .registers 1

    sget-object v0, Lcom/tencent/map/b/c;->a:Lcom/tencent/map/b/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tencent/map/b/c;

    invoke-direct {v0}, Lcom/tencent/map/b/c;-><init>()V

    sput-object v0, Lcom/tencent/map/b/c;->a:Lcom/tencent/map/b/c;

    :cond_b
    sget-object v0, Lcom/tencent/map/b/c;->a:Lcom/tencent/map/b/c;

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuffer;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "accuracy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_23

    move-result-wide v1

    const-wide v3, 0x40b3880000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    :goto_22
    return v0

    :catch_23
    move-exception v1

    goto :goto_22
.end method

.method private a(Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    if-eqz v0, :cond_40

    move v1, v2

    move v3, v2

    :goto_d
    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_41

    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/c$a;

    iget-object v6, v0, Lcom/tencent/map/b/c$a;->a:Ljava/lang/String;

    move v5, v2

    :goto_20
    if-eqz v6, :cond_38

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_38

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    add-int/lit8 v3, v3, 0x1

    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_3c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_20

    :cond_40
    move v3, v2

    :cond_41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v8, :cond_4f

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    if-lt v3, v1, :cond_4f

    move v2, v4

    goto :goto_6

    :cond_4f
    if-ge v0, v8, :cond_55

    if-lt v3, v7, :cond_55

    move v2, v4

    goto :goto_6

    :cond_55
    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v7, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v7, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/tencent/map/b/c;->b:J

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v5, 0x7530

    cmp-long v0, v0, v5

    if-gtz v0, :cond_6

    move v2, v4

    goto :goto_6
.end method


# virtual methods
.method public final a(IIIILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/map/b/c;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/tencent/map/b/c$b;

    invoke-direct {v0, v2}, Lcom/tencent/map/b/c$b;-><init>(B)V

    iput p1, v0, Lcom/tencent/map/b/c$b;->a:I

    iput p2, v0, Lcom/tencent/map/b/c$b;->b:I

    iput p3, v0, Lcom/tencent/map/b/c$b;->c:I

    iput p4, v0, Lcom/tencent/map/b/c$b;->d:I

    iget-object v1, p0, Lcom/tencent/map/b/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_4f

    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_29
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    new-instance v3, Lcom/tencent/map/b/c$a;

    invoke-direct {v3, v2}, Lcom/tencent/map/b/c$a;-><init>(B)V

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/map/b/c$a;->a:Ljava/lang/String;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    :cond_4f
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final b(IIIILjava/util/List;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_11

    :cond_10
    :goto_10
    return-object v1

    :cond_11
    iget-object v0, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_17

    if-nez p5, :cond_5a

    :cond_17
    move-object v0, v1

    :cond_18
    :goto_18
    iput-object v0, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/map/b/c;->c:Ljava/util/List;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/tencent/map/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_95

    iget-object v0, p0, Lcom/tencent/map/b/c;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/c$b;

    iget v2, v0, Lcom/tencent/map/b/c$b;->a:I

    if-ne v2, p1, :cond_10

    iget v2, v0, Lcom/tencent/map/b/c$b;->b:I

    if-ne v2, p2, :cond_10

    iget v2, v0, Lcom/tencent/map/b/c$b;->c:I

    if-ne v2, p3, :cond_10

    iget v0, v0, Lcom/tencent/map/b/c$b;->d:I

    if-ne v0, p4, :cond_10

    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/tencent/map/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8b

    :cond_4f
    if-eqz p5, :cond_57

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8b

    :cond_57
    iget-object v1, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    goto :goto_10

    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/map/b/c;->b:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-lez v4, :cond_71

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_89

    :cond_71
    const-wide/32 v4, 0xafc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_7e

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_89

    :cond_7e
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/map/b/c;->a(Ljava/lang/StringBuffer;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_89
    move-object v0, v1

    goto :goto_18

    :cond_8b
    invoke-direct {p0, p5}, Lcom/tencent/map/b/c;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v1, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    goto/16 :goto_10

    :cond_95
    invoke-direct {p0, p5}, Lcom/tencent/map/b/c;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    goto/16 :goto_10
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/b/c;->e:Ljava/lang/String;

    return-void
.end method
