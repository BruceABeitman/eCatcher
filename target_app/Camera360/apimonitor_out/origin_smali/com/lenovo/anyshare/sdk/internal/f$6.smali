.class Lcom/lenovo/anyshare/sdk/internal/f$6;
.super Ljava/lang/Object;
.source "ShareChannel.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/f;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/lenovo/channel/base/ShareRecord;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
    .registers 4

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->c:Ljava/util/Map;

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    const-string/jumbo v1, "dummy"

    invoke-static {v0, v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->d:Lcom/lenovo/channel/base/ShareRecord;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
    .registers 15

    const/4 v10, 0x0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f$6;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->b:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/channel/base/ShareRecord;

    if-eqz v8, :cond_18

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->d:Lcom/lenovo/channel/base/ShareRecord;

    if-ne v8, v9, :cond_16

    move-object v9, v10

    :goto_14
    move-object v10, v9

    :cond_15
    :goto_15
    return-object v10

    :cond_16
    move-object v9, v8

    goto :goto_14

    :cond_18
    move-object v1, p2

    :try_start_19
    const-string/jumbo v9, "UTF-8"

    invoke-static {p2, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_1f} :catch_99

    move-result-object v1

    :goto_20
    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/as;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v9, "metadatatype"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/lenovo/content/base/ContentType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;

    move-result-object v4

    const-string/jumbo v9, "metadataid"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v9, "filetype"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v9, "collection_share_id"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v4, :cond_15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    const-string/jumbo v9, "raw"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6b

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->b:Ljava/util/Map;

    iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->d:Lcom/lenovo/channel/base/ShareRecord;

    invoke-interface {v9, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_6b
    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->c(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8c

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$b;

    move-result-object v9

    iget-object v10, v7, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Lcom/lenovo/anyshare/sdk/internal/h$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    move-result-object v8

    :goto_83
    if-eqz v8, :cond_8a

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->b:Ljava/util/Map;

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    move-object v10, v8

    goto :goto_15

    :cond_8c
    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$b;

    move-result-object v9

    iget-object v10, v7, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10, v4, v3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->b(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    move-result-object v8

    goto :goto_83

    :catch_99
    move-exception v9

    goto :goto_20
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f$6;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v1, Lcom/lenovo/channel/base/ShareRecord$Status;->PROCESSING:Lcom/lenovo/channel/base/ShareRecord$Status;

    invoke-virtual {v0, v1}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V

    :cond_29
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v1, v0, p3, p4}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;J)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f$6;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;

    move-result-object v1

    move-wide v2, p3

    move-wide v4, p5

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    instance-of v0, v1, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v4, v7

    :cond_26
    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getSize()J

    move-result-wide v2

    :cond_2a
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;JJ)V

    goto :goto_8
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 19

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f$6;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    cmp-long v0, p3, p5

    if-nez v0, :cond_7f

    const/4 v7, 0x1

    :goto_c
    move-wide v2, p3

    move-wide/from16 v4, p5

    if-eqz v7, :cond_5a

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->b:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f$6;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, v1, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;

    move-result-object v9

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v1, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V

    :goto_42
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    sget-object v8, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-interface {v0, v8, v2, v3}, Lcom/lenovo/channel/base/IShareHistory;->addSharedTotalSize(Lcom/lenovo/channel/base/ShareRecord$ShareType;J)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    sget-object v8, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-interface {v0, v8}, Lcom/lenovo/channel/base/IShareHistory;->increaseSharedItemCount(Lcom/lenovo/channel/base/ShareRecord$ShareType;)V

    :cond_5a
    if-eqz v7, :cond_d0

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;

    :goto_5e
    invoke-virtual {v1, v0}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;

    move-result-object v8

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;

    move-result-object v11

    invoke-interface {v0, v8, v9, v10, v11}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V

    goto :goto_6

    :cond_7f
    const/4 v7, 0x0

    goto :goto_c

    :cond_81
    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v4, v8

    :cond_9a
    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getSize()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v1, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V

    goto :goto_42

    :cond_c0
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->c:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$6;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    invoke-static/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;JJ)V

    goto/16 :goto_6

    :cond_d0
    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;

    goto :goto_5e
.end method
