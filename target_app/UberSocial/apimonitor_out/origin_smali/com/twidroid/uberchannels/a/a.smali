.class public Lcom/twidroid/uberchannels/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "uberchannelsactive"

.field public static final b:Ljava/lang/String; = "http://api.tweetmixx.com"

.field public static final c:Ljava/lang/String; = "http://api.tweetmixx.com/topics?format=json&group=postup&client=droid2"

.field public static final d:J = 0x124f80L

.field public static e:J = 0x0L

.field private static final f:Ljava/lang/String; = "UberChannelsAPI"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/twidroid/uberchannels/a/a;->e:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/twidroid/uberchannels/models/UberTopic;
    .registers 13

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_1e
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x124f80

    sub-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_54

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_ff

    :cond_54
    new-instance v4, Lcom/ubermedia/net/e;

    invoke-direct {v4}, Lcom/ubermedia/net/e;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "If-Modified-Since"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ubermedia/net/d;->m(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "UberChannelsAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Return Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/ubermedia/net/e;->a()I

    move-result v4

    const/16 v5, 0x130

    if-ne v4, v5, :cond_c0

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;
    :try_end_ae
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_ae} :catch_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_ae} :catch_fd
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_ae} :catch_124

    move-result-object v0

    :goto_af
    :try_start_af
    invoke-static {p0}, Lcom/twidroid/d/u;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/twidroid/uberchannels/models/UberTopic;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/uberchannels/models/UberTopic;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_be} :catch_11b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_af .. :try_end_be} :catch_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_be} :catch_fd
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_be} :catch_124

    :goto_be
    move-object v1, v0

    :goto_bf
    return-object v1

    :cond_c0
    :try_start_c0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x800

    new-array v2, v2, [B

    :goto_e5
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f3

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_e5

    :catch_f1
    move-exception v0

    goto :goto_bf

    :cond_f3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_af

    :catch_fd
    move-exception v0

    goto :goto_bf

    :cond_ff
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    :catch_11b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_122
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c0 .. :try_end_122} :catch_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_c0 .. :try_end_122} :catch_fd
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_122} :catch_124

    move-object v0, v1

    goto :goto_be

    :catch_124
    move-exception v0

    goto :goto_bf
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 4

    const-string v0, "http://api.tweetmixx.com/topics?format=json&group=postup&client=droid2"

    invoke-static {p0, p1, v0, p2}, Lcom/twidroid/uberchannels/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_uberchannels2.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :try_start_1f
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_162

    :cond_45
    const-string v3, "UberChannelsAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/ubermedia/net/e;

    invoke-direct {v3}, Lcom/ubermedia/net/e;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "If-Modified-Since"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ubermedia/net/d;->m(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p2, v4, v3}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ubermedia/net/e;->a()I

    move-result v3

    const/16 v5, 0x130

    if-ne v3, v5, :cond_d4

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;
    :try_end_9f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_9f} :catch_105
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_9f} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_9f} :catch_19f

    move-result-object v0

    :goto_a0
    :try_start_a0
    invoke-static {p0}, Lcom/twidroid/d/u;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/twidroid/uberchannels/models/UberTopic;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ab} :catch_186
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a0 .. :try_end_ab} :catch_105
    .catch Ljava/io/FileNotFoundException; {:try_start_a0 .. :try_end_ab} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ab} :catch_19f

    :try_start_ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/twidroid/uberchannels/a/a;->e:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x124f80

    cmp-long v0, v3, v5

    if-lez v0, :cond_c1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_c1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_106

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-gez p3, :cond_197

    move-object v0, v2

    :goto_d3
    return-object v0

    :cond_d4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x800

    new-array v4, v4, [B

    :goto_f9
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_108

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_f9

    :catch_105
    move-exception v0

    :cond_106
    :goto_106
    move-object v0, v2

    goto :goto_d3

    :cond_108
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-gez v3, :cond_13a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_13a
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/twidroid/uberchannels/a/a;->e:J

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a0

    :cond_162
    const-string v3, "UberChannelsAPI"

    const-string v4, "========================Using Cached result========================="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a0

    :catch_186
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-gez p3, :cond_18f

    move-object v0, v2

    goto/16 :goto_d3

    :cond_18f
    add-int/lit8 v0, p3, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/twidroid/uberchannels/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_d3

    :cond_197
    add-int/lit8 v0, p3, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/twidroid/uberchannels/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    :try_end_19c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ab .. :try_end_19c} :catch_105
    .catch Ljava/io/FileNotFoundException; {:try_start_ab .. :try_end_19c} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_19c} :catch_19f

    move-result-object v0

    goto/16 :goto_d3

    :catch_19f
    move-exception v0

    goto/16 :goto_106

    :catch_1a2
    move-exception v0

    goto/16 :goto_106
.end method

.method public static a(II)Ljava/util/List;
    .registers 9

    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const-string v1, ""

    :try_start_5
    const-string v1, "%s/topics/%d/tweets?format=json&page=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "http://api.tweetmixx.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ubermedia/net/e;

    invoke-direct {v2}, Lcom/ubermedia/net/e;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc8

    invoke-virtual {v2}, Lcom/ubermedia/net/e;->a()I
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_30} :catch_34

    move-result v2

    if-eq v3, v2, :cond_3d

    :goto_33
    return-object v0

    :catch_34
    move-exception v0

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Connection failed."

    invoke-direct {v0, v1, v5}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3d
    const-string v0, "error\":\"Not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Not found"

    invoke-direct {v0, v1, v6}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4d
    const-string v0, "error\":\"Not authorized"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Not authorized"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5e
    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_33
.end method
