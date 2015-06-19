.class public Lcom/googlecode/mp4parser/boxes/piff/f;
.super Ljava/lang/Object;
.source "ProtectionSpecificHeader.java"


# static fields
.field protected static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/mp4parser/boxes/piff/f;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/piff/f;->a:Ljava/util/Map;

    const-string v1, "9A04F079-9840-4286-AB92-E65BE0885F95"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-class v2, Lcom/googlecode/mp4parser/boxes/piff/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/UUID;Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/piff/f;
    .registers 4

    sget-object v0, Lcom/googlecode/mp4parser/boxes/piff/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-instance v1, Lcom/googlecode/mp4parser/boxes/piff/f;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/piff/f;-><init>()V

    if-eqz v0, :cond_27

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/piff/f;
    :try_end_15
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_15} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_15} :catch_20

    :goto_15
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/piff/f;->a(Ljava/nio/ByteBuffer;)V

    return-object v0

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    move-object v0, v1

    goto :goto_15
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/f;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/f;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/googlecode/mp4parser/boxes/piff/f;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/f;->b:Ljava/nio/ByteBuffer;

    check-cast p1, Lcom/googlecode/mp4parser/boxes/piff/f;

    iget-object v1, p1, Lcom/googlecode/mp4parser/boxes/piff/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectionSpecificHeader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/f;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
