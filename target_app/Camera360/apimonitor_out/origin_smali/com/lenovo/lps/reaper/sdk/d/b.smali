.class public final Lcom/lenovo/lps/reaper/sdk/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/b/e;


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/d/a;

.field private b:Lcom/lenovo/lps/reaper/sdk/d/c;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->d:Ljava/util/Random;

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1000

    if-le v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_c
.end method

.method private a(Ljava/nio/ByteBuffer;Lcom/lenovo/lps/reaper/sdk/api/a;)V
    .registers 6

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x5

    if-gt v0, v1, :cond_15

    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/api/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/api/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/api/a;->l()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_28

    :cond_48
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6
.end method

.method private b(ILcom/lenovo/lps/reaper/sdk/b/f;)[Lcom/lenovo/lps/reaper/sdk/api/a;
    .registers 40

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_15e

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->f(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    move-result v3

    const/16 v4, 0x12c

    if-le v4, v3, :cond_103

    move/from16 v32, v3

    :goto_17
    move/from16 v0, v32

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/api/a;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    move-result v4

    const/4 v3, 0x0

    move/from16 v30, v3

    move/from16 v31, v4

    :goto_2c
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_143

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    move/from16 v0, v31

    int-to-long v4, v0

    const/16 v6, 0xc

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1000

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Lcom/lenovo/lps/reaper/sdk/d/a;->b(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    new-instance v28, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct/range {v28 .. v28}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    const/4 v3, 0x1

    :goto_e5
    const/16 v34, 0x5

    move/from16 v0, v34

    if-gt v3, v0, :cond_109

    invoke-static/range {v27 .. v27}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v35

    if-eqz v34, :cond_100

    if-eqz v35, :cond_100

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_100
    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    :cond_103
    const/16 v3, 0x12c

    move/from16 v32, v3

    goto/16 :goto_17

    :cond_109
    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v34

    const/4 v3, 0x0

    :goto_10e
    move/from16 v0, v34

    if-ge v3, v0, :cond_126

    invoke-static/range {v27 .. v27}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v27 .. v27}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10e

    :cond_126
    new-instance v3, Lcom/lenovo/lps/reaper/sdk/api/a;

    move-object/from16 v27, p2

    invoke-direct/range {v3 .. v28}, Lcom/lenovo/lps/reaper/sdk/api/a;-><init>(JILjava/lang/String;IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/b/f;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Lcom/lenovo/lps/reaper/sdk/b/f;I)I

    move-result v4

    aput-object v3, v29, v30

    add-int/lit8 v3, v30, 0x1

    move/from16 v30, v3

    move/from16 v31, v4

    goto/16 :goto_2c

    :cond_143
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/m;->a()Z

    move-result v3

    if-eqz v3, :cond_157

    move-object/from16 v0, v29

    array-length v4, v0

    const/4 v3, 0x0

    :goto_14d
    if-ge v3, v4, :cond_157

    aget-object v5, v29, v3

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/api/a;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14d

    :cond_157
    monitor-exit v33

    move-object/from16 v3, v29

    :goto_15a
    return-object v3

    :catchall_15b
    move-exception v3

    monitor-exit v33
    :try_end_15d
    .catchall {:try_start_7 .. :try_end_15d} :catchall_15b

    :try_start_15d
    throw v3
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_15e} :catch_15e

    :catch_15e
    move-exception v3

    const-string/jumbo v4, "FileEventDaoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error when fetch Event object from storage. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_15a
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/d/a;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/16 v0, 0x1000

    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a3

    :try_start_9
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/d/a;->a()V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/d/a;->b(Ljava/nio/ByteBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v4, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "FileEventDaoImpl"

    const-string/jumbo v4, "DB load success (in activeSession())"

    invoke-static {v0, v4}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FileEventDaoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sessionID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/d/c;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/d/c;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/lps/reaper/sdk/d/c;->b(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->c(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/d/c;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/d/c;->b(I)V

    :goto_65
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/d/b;->c()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->a()V

    monitor-exit v1

    :goto_6e
    return-void

    :cond_6f
    const-string/jumbo v0, "FileEventDaoImpl"

    const-string/jumbo v4, "DB load false (in activeSession())"

    invoke-static {v0, v4}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->c(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->b(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(I)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/d/c;->b(I)V

    goto :goto_65

    :catchall_a0
    move-exception v0

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_9 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a3} :catch_a3

    :catch_a3
    move-exception v0

    const-string/jumbo v1, "FileEventDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error when addSessionVisits in file storage. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e
.end method

.method public final a(Lcom/lenovo/lps/reaper/sdk/api/a;)V
    .registers 10

    const-string/jumbo v0, "FileEventDaoImpl"

    const-string/jumbo v1, "SavingEvent."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    monitor-enter v1
    :try_end_c
    .catch Ljava/nio/BufferOverflowException; {:try_start_9 .. :try_end_c} :catch_124
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_146

    :try_start_c
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->b()Lcom/lenovo/lps/reaper/sdk/b/f;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->e(Lcom/lenovo/lps/reaper/sdk/b/f;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->d(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    move-result v2

    const-string/jumbo v3, "FileEventDaoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " has been deleted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->b(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    int-to-long v4, v2

    const/16 v2, 0xc

    shl-long/2addr v4, v2

    const-wide/16 v6, 0x1000

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->d:Ljava/util/Random;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->f()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->g()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->g()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, p1}, Lcom/lenovo/lps/reaper/sdk/d/b;->a(Ljava/nio/ByteBuffer;Lcom/lenovo/lps/reaper/sdk/api/a;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/nio/ByteBuffer;)I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->c(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/d/b;->c()V

    monitor-exit v1

    :goto_120
    return-void

    :catchall_121
    move-exception v0

    monitor-exit v1
    :try_end_123
    .catchall {:try_start_c .. :try_end_123} :catchall_121

    :try_start_123
    throw v0
    :try_end_124
    .catch Ljava/nio/BufferOverflowException; {:try_start_123 .. :try_end_124} :catch_124
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_124} :catch_146

    :catch_124
    move-exception v0

    const-string/jumbo v0, "FileEventDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Event Infomation is Too Long Than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_120

    :catch_146
    move-exception v0

    const-string/jumbo v1, "FileEventDaoImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_120
.end method

.method public final a(Lcom/lenovo/lps/reaper/sdk/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    return-void
.end method

.method public final a(Lcom/lenovo/lps/reaper/sdk/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    return-void
.end method

.method public final a(ILcom/lenovo/lps/reaper/sdk/b/f;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->a:Lcom/lenovo/lps/reaper/sdk/d/a;

    monitor-enter v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_18

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_f

    :try_start_7
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v3, p2}, Lcom/lenovo/lps/reaper/sdk/d/c;->d(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/d/b;->c()V

    monitor-exit v2

    const/4 v0, 0x1

    :goto_14
    return v0

    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-exception v1

    const-string/jumbo v2, "FileEventDaoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error when delete events. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public final a(Lcom/lenovo/lps/reaper/sdk/b/f;)[Lcom/lenovo/lps/reaper/sdk/api/a;
    .registers 3

    const/16 v0, 0x12c

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/d/b;->b(ILcom/lenovo/lps/reaper/sdk/b/f;)[Lcom/lenovo/lps/reaper/sdk/api/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/lenovo/lps/reaper/sdk/b/f;)I
    .registers 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/d/c;->f(Lcom/lenovo/lps/reaper/sdk/b/f;)I

    move-result v0

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/b;->b:Lcom/lenovo/lps/reaper/sdk/d/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/d/c;->b()Z

    move-result v0

    return v0
.end method
