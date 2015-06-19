.class Lcom/glympse/android/lib/bc;
.super Ljava/lang/Object;
.source "DirectionsJob.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static o(Ljava/lang/String;)Lcom/glympse/android/lib/GTrackPrivate;
    .registers 20

    invoke-static/range {p0 .. p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    new-instance v15, Lcom/glympse/android/lib/iv;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Lcom/glympse/android/lib/iv;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v13, v1

    check-cast v13, [C

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v5, v1

    move v6, v2

    :goto_1e
    move/from16 v0, v18

    if-ge v3, v0, :cond_a9

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_24
    add-int/lit8 v4, v3, 0x1

    aget-char v7, v13, v3

    const/16 v3, 0x5c

    if-ne v7, v3, :cond_b7

    aget-char v3, v13, v4

    const/16 v8, 0x5c

    if-ne v3, v8, :cond_b7

    add-int/lit8 v3, v4, 0x1

    :goto_34
    add-int/lit8 v4, v7, -0x3f

    and-int/lit8 v7, v4, 0x1f

    shl-int/2addr v7, v2

    or-int/2addr v1, v7

    add-int/lit8 v2, v2, 0x5

    const/16 v7, 0x20

    if-ge v4, v7, :cond_24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a3

    shr-int/lit8 v1, v1, 0x1

    xor-int/lit8 v1, v1, -0x1

    :goto_48
    add-int v17, v6, v1

    move/from16 v0, v18

    if-ge v3, v0, :cond_a9

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_50
    add-int/lit8 v14, v3, 0x1

    aget-char v3, v13, v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_60

    aget-char v4, v13, v14

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_60

    add-int/lit8 v14, v14, 0x1

    :cond_60
    add-int/lit8 v3, v3, -0x3f

    and-int/lit8 v4, v3, 0x1f

    shl-int/2addr v4, v2

    or-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x5

    const/16 v4, 0x20

    if-ge v3, v4, :cond_b5

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a6

    shr-int/lit8 v1, v1, 0x1

    xor-int/lit8 v1, v1, -0x1

    :goto_74
    add-int v16, v5, v1

    new-instance v1, Lcom/glympse/android/lib/Location;

    const-wide/16 v2, 0x0

    move/from16 v0, v17

    int-to-double v4, v0

    const-wide v6, 0x40f86a0000000000L

    div-double/2addr v4, v6

    move/from16 v0, v16

    int-to-double v6, v0

    const-wide v8, 0x40f86a0000000000L

    div-double/2addr v6, v8

    const/high16 v8, 0x7fc0

    const/high16 v9, 0x7fc0

    const/high16 v10, 0x7fc0

    const/high16 v11, 0x7fc0

    const/high16 v12, 0x7fc0

    invoke-direct/range {v1 .. v12}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V

    invoke-interface {v15, v1}, Lcom/glympse/android/lib/GTrackPrivate;->addCore(Lcom/glympse/android/core/GLocation;)V

    move/from16 v5, v16

    move/from16 v6, v17

    move v3, v14

    goto/16 :goto_1e

    :cond_a3
    shr-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_a6
    shr-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_a9
    invoke-interface {v15}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v1

    if-nez v1, :cond_b2

    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_b2
    move-object v1, v15

    goto/16 :goto_7

    :cond_b5
    move v3, v14

    goto :goto_50

    :cond_b7
    move v3, v4

    goto/16 :goto_34
.end method
