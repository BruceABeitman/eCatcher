.class Lcom/glympse/android/lib/ba;
.super Ljava/lang/Object;
.source "DirectionsFormatter.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/glympse/android/api/GTrack;)Ljava/lang/String;
    .registers 19

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface/range {p0 .. p0}, Lcom/glympse/android/api/GTrack;->length()I

    move-result v8

    if-nez v8, :cond_c

    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v8, 0x14

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface/range {p0 .. p0}, Lcom/glympse/android/api/GTrack;->getLocations()Lcom/glympse/android/core/GList;

    move-result-object v5

    invoke-interface {v5}, Lcom/glympse/android/core/GList;->elements()Ljava/util/Enumeration;

    move-result-object v10

    move-wide v14, v1

    move v1, v0

    move-wide/from16 v16, v3

    move-wide/from16 v4, v16

    move-wide v2, v14

    :goto_27
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocation;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLatitude()D

    move-result-wide v6

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v11, v6

    double-to-int v11, v11

    const-wide v12, 0x412e848000000000L

    mul-double/2addr v4, v12

    double-to-int v4, v4

    sub-int v4, v11, v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLongitude()D

    move-result-wide v4

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v11, v4

    double-to-int v0, v11

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v2, v11

    double-to-int v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v8, -0x1

    if-eq v1, v0, :cond_6e

    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-wide v2, v4

    move-wide v4, v6

    goto :goto_27

    :cond_74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static n(Ljava/lang/String;)Lcom/glympse/android/api/GTrack;
    .registers 22

    invoke-static/range {p0 .. p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    new-instance v18, Lcom/glympse/android/lib/iv;

    invoke-direct/range {v18 .. v18}, Lcom/glympse/android/lib/iv;-><init>()V

    new-instance v19, Lcom/glympse/android/lib/json/JsonTokener;

    invoke-direct/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;->getToken()Lcom/glympse/android/lib/json/JsonToken;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v13, v1

    check-cast v13, [C

    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v1, v2}, Lcom/glympse/android/lib/json/JsonTokener;->init([CII)V

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z

    :goto_2e
    const/4 v5, 0x7

    move-object/from16 v0, v20

    iget v6, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-ne v5, v6, :cond_c5

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v20

    iget v6, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/glympse/android/lib/json/JsonToken;->_end:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    sub-int/2addr v7, v8

    invoke-direct {v5, v13, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double v16, v3, v5

    :goto_4e
    invoke-virtual/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z

    const/16 v3, 0xc

    move-object/from16 v0, v20

    iget v4, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-ne v3, v4, :cond_109

    invoke-virtual/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z

    const/4 v3, 0x7

    move-object/from16 v0, v20

    iget v4, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-ne v3, v4, :cond_e7

    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/glympse/android/lib/json/JsonToken;->_end:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v13, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-double v3, v3

    add-double v14, v1, v3

    :goto_7c
    invoke-virtual/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z

    const/16 v1, 0xc

    move-object/from16 v0, v20

    iget v2, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-ne v1, v2, :cond_9c

    invoke-virtual/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z

    const/4 v1, 0x7

    move-object/from16 v0, v20

    iget v2, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-eq v1, v2, :cond_99

    const/16 v1, 0x8

    move-object/from16 v0, v20

    iget v2, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-ne v1, v2, :cond_109

    :cond_99
    invoke-virtual/range {v19 .. v19}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z

    :cond_9c
    new-instance v1, Lcom/glympse/android/lib/Location;

    const-wide/16 v2, 0x0

    const-wide v4, 0x412e848000000000L

    div-double v4, v16, v4

    const-wide v6, 0x412e848000000000L

    div-double v6, v14, v6

    const/high16 v8, 0x7fc0

    const/high16 v9, 0x7fc0

    const/high16 v10, 0x7fc0

    const/high16 v11, 0x7fc0

    const/high16 v12, 0x7fc0

    invoke-direct/range {v1 .. v12}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTrackPrivate;->addCore(Lcom/glympse/android/core/GLocation;)V

    move-wide v1, v14

    move-wide/from16 v3, v16

    goto/16 :goto_2e

    :cond_c5
    const/16 v5, 0x8

    move-object/from16 v0, v20

    iget v6, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-ne v5, v6, :cond_109

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v20

    iget v6, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/glympse/android/lib/json/JsonToken;->_end:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    sub-int/2addr v7, v8

    invoke-direct {v5, v13, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v5

    add-double v16, v3, v5

    goto/16 :goto_4e

    :cond_e7
    const/16 v3, 0x8

    move-object/from16 v0, v20

    iget v4, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I

    if-ne v3, v4, :cond_109

    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/glympse/android/lib/json/JsonToken;->_end:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/glympse/android/lib/json/JsonToken;->_start:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v13, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-double v14, v1, v3

    goto/16 :goto_7c

    :cond_109
    move-object/from16 v1, v18

    goto/16 :goto_7
.end method
