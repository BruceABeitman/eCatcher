.class Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;
.super Ljava/lang/Object;
.source "CloudAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/source/CloudAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandaloneTagGroup"
.end annotation


# instance fields
.field private beginTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private crc32sList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dayBeginTime:J

.field public dayEndTime:J

.field private endTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private nameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayBeginTime:J

    iput-wide v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayEndTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->beginTimeList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->endTimeList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->nameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->crc32sList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagData(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->beginTimeList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->endTimeList:Ljava/util/ArrayList;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->crc32sList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTagData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->beginTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->endTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->crc32sList:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getBeginTimeList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->beginTimeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCrc32s()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->crc32sList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_34

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_22
    return-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_34
    const-string/jumbo v2, ""

    goto :goto_22
.end method

.method public getCrc32sList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->crc32sList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEndTimeList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->endTimeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNameList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->nameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public recycle()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->beginTimeList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->endTimeList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->nameList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->crc32sList:Ljava/util/ArrayList;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->beginTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
