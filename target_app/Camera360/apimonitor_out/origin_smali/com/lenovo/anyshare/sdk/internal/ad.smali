.class public Lcom/lenovo/anyshare/sdk/internal/ad;
.super Lcom/lenovo/anyshare/sdk/internal/cq;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/ad$1;
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected b:Z

.field protected c:J

.field private k:Ljava/lang/String;

.field private l:Ljava/io/File;


# direct methods
.method public constructor <init>(ZLcom/lenovo/channel/base/ShareRecord;)V
    .registers 5

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->c:J

    iput-boolean p1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->a:Z

    invoke-virtual {p2}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cq;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lenovo/channel/base/ShareRecord;->getSize()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cq;->b(J)V

    invoke-super {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/cq;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/lenovo/channel/base/ShareCollection;)Ljava/io/File;
    .registers 5

    invoke-virtual {p0}, Lcom/lenovo/channel/base/ShareCollection;->getType()Lcom/lenovo/content/base/ContentType;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/k;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/channel/base/ShareCollection;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/aq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/lenovo/content/base/ContentItem;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/channel/exception/TransmitException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/ad$1;->a:[I

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/content/base/ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6e

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/aq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/k;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/aq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    :pswitch_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :pswitch_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :pswitch_68
    invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_4f
        :pswitch_68
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;

    move-result-object v3

    check-cast v3, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const-string/jumbo v4, "raw"

    iget-boolean v7, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->a:Z

    if-eqz v7, :cond_22

    const-string/jumbo v4, "thumbnail"

    :cond_22
    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_2a
    const-string/jumbo v7, "%s?metadatatype=%s&metadataid=%s&filetype=%s&msgid=%s&deviceid=%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_58} :catch_5a

    move-result-object v6

    :goto_59
    return-object v6

    :catch_5a
    move-exception v1

    const-string/jumbo v7, "Task.Download"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/channel/exception/TransmitException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->a:Z

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;

    if-ne v1, v2, :cond_2a

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/content/base/ContentItem;->getVersionedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/k;->a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->l:Ljava/io/File;

    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;

    if-ne v1, v2, :cond_3a

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->k:Ljava/lang/String;

    :cond_3a
    return-void

    :cond_3b
    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/k;->a(J)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v1, Lcom/lenovo/channel/exception/TransmitException;

    const/4 v2, 0x7

    const-string/jumbo v3, "not enough space!"

    invoke-direct {v1, v2, v3}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4f
    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;

    move-result-object v1

    sget-object v2, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;

    if-ne v1, v2, :cond_67

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->l:Ljava/io/File;

    goto :goto_2a

    :cond_67
    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;

    if-ne v1, v2, :cond_7a

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ad;->a(Lcom/lenovo/content/base/ContentItem;)Ljava/io/File;

    move-result-object v1

    :goto_77
    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->l:Ljava/io/File;

    goto :goto_2a

    :cond_7a
    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getCollection()Lcom/lenovo/channel/base/ShareCollection;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ad;->a(Lcom/lenovo/channel/base/ShareCollection;)Ljava/io/File;

    move-result-object v1

    goto :goto_77
.end method

.method public b()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->l:Ljava/io/File;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->a:Z

    return v0
.end method

.method public d()Lcom/lenovo/channel/base/ShareRecord;
    .registers 2

    invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/cq;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/channel/base/ShareRecord;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/cq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " + [url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->l:Ljava/io/File;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ad;->l:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_35
    const-string/jumbo v1, ""

    goto :goto_26
.end method
