.class public final Lcom/google/zxing/m;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public c:[Lcom/google/zxing/o;

.field public final d:Lcom/google/zxing/a;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/n;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/m;->b:[B

    iput-object p3, p0, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;

    iput-object p4, p0, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/m;->e:Ljava/util/Map;

    iput-wide p5, p0, Lcom/google/zxing/m;->f:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/n;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/m;->e:Ljava/util/Map;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/n;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/zxing/m;->e:Ljava/util/Map;

    :cond_d
    iget-object v0, p0, Lcom/google/zxing/m;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/n;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/google/zxing/m;->e:Ljava/util/Map;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/google/zxing/m;->e:Ljava/util/Map;

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/zxing/m;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/m;->a:Ljava/lang/String;

    return-object v0
.end method
