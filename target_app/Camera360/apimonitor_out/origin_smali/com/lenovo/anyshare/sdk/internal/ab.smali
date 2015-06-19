.class abstract Lcom/lenovo/anyshare/sdk/internal/ab;
.super Ljava/lang/Object;
.source "DownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/ab$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/anyshare/sdk/internal/ab$a;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ab$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ab;->a:Lcom/lenovo/anyshare/sdk/internal/ab$a;

    return-void
.end method

.method static a(Ljava/lang/Class;Lcom/lenovo/anyshare/sdk/internal/ab$a;)Lcom/lenovo/anyshare/sdk/internal/ab;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;",
            "Lcom/lenovo/anyshare/sdk/internal/ab$a;",
            ")",
            "Lcom/lenovo/anyshare/sdk/internal/ab;"
        }
    .end annotation

    const-class v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    if-ne p0, v0, :cond_a

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/af;

    invoke-direct {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/af;-><init>(Lcom/lenovo/anyshare/sdk/internal/ab$a;)V

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    if-ne p0, v0, :cond_14

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/aa;

    invoke-direct {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/aa;-><init>(Lcom/lenovo/anyshare/sdk/internal/ab$a;)V

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not surport record class type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Lorg/apache/http/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab;->a:Lcom/lenovo/anyshare/sdk/internal/ab$a;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ab$a;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lcom/lenovo/anyshare/sdk/internal/ad;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/channel/exception/TransmitException;
        }
    .end annotation
.end method

.method a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab;->a:Lcom/lenovo/anyshare/sdk/internal/ab$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/ab$a;->a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V

    return-void
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab;->a:Lcom/lenovo/anyshare/sdk/internal/ab$a;

    return-void
.end method
