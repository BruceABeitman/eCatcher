.class public final Lcom/google/zxing/b/l;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/l;->a:Ljava/lang/String;

    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    sput-boolean v0, Lcom/google/zxing/b/l;->b:Z

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static a([BLjava/util/Map;)Ljava/lang/String;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/e;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_f

    sget-object v2, Lcom/google/zxing/e;->e:Lcom/google/zxing/e;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_e
    return-object v2

    :cond_f
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/4 v13, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_af

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/16 v3, -0x11

    if-ne v2, v3, :cond_af

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/16 v3, -0x45

    if-ne v2, v3, :cond_af

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, -0x41

    if-ne v2, v3, :cond_af

    const/4 v2, 0x1

    :goto_40
    const/4 v3, 0x0

    move/from16 v19, v3

    move/from16 v3, v17

    :goto_45
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_174

    if-nez v13, :cond_51

    if-nez v10, :cond_51

    if-eqz v11, :cond_174

    :cond_51
    aget-byte v17, p0, v19

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    if-eqz v11, :cond_1f0

    if-lez v3, :cond_b1

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_e3

    add-int/lit8 v3, v3, -0x1

    move/from16 v17, v3

    move/from16 v18, v11

    :goto_6b
    if-eqz v13, :cond_1ec

    const/16 v3, 0x7f

    move/from16 v0, v21

    if-le v0, v3, :cond_e9

    const/16 v3, 0xa0

    move/from16 v0, v21

    if-ge v0, v3, :cond_e9

    const/4 v3, 0x0

    move v11, v12

    move v12, v3

    :goto_7c
    if-eqz v10, :cond_1e3

    if-lez v9, :cond_114

    const/16 v3, 0x40

    move/from16 v0, v21

    if-lt v0, v3, :cond_92

    const/16 v3, 0x7f

    move/from16 v0, v21

    if-eq v0, v3, :cond_92

    const/16 v3, 0xfc

    move/from16 v0, v21

    if-le v0, v3, :cond_107

    :cond_92
    const/4 v3, 0x0

    move/from16 v22, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v3

    move/from16 v3, v22

    :goto_9d
    add-int/lit8 v10, v19, 0x1

    move/from16 v19, v10

    move v13, v12

    move v10, v9

    move v12, v11

    move v9, v8

    move/from16 v11, v18

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v17

    goto :goto_45

    :cond_af
    const/4 v2, 0x0

    goto :goto_40

    :cond_b1
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_1f0

    and-int/lit8 v17, v21, 0x40

    if-eqz v17, :cond_e3

    add-int/lit8 v17, v3, 0x1

    and-int/lit8 v3, v21, 0x20

    if-nez v3, :cond_ca

    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    move/from16 v18, v11

    goto :goto_6b

    :cond_ca
    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v3, v21, 0x10

    if-nez v3, :cond_d6

    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move/from16 v18, v11

    goto :goto_6b

    :cond_d6
    add-int/lit8 v3, v17, 0x1

    and-int/lit8 v17, v21, 0x8

    if-nez v17, :cond_e3

    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v3

    move/from16 v18, v11

    goto :goto_6b

    :cond_e3
    const/4 v11, 0x0

    move/from16 v17, v3

    move/from16 v18, v11

    goto :goto_6b

    :cond_e9
    const/16 v3, 0x9f

    move/from16 v0, v21

    if-le v0, v3, :cond_1ec

    const/16 v3, 0xc0

    move/from16 v0, v21

    if-lt v0, v3, :cond_101

    const/16 v3, 0xd7

    move/from16 v0, v21

    if-eq v0, v3, :cond_101

    const/16 v3, 0xf7

    move/from16 v0, v21

    if-ne v0, v3, :cond_1ec

    :cond_101
    add-int/lit8 v3, v12, 0x1

    move v11, v3

    move v12, v13

    goto/16 :goto_7c

    :cond_107
    add-int/lit8 v3, v9, -0x1

    move v9, v10

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move v3, v4

    move/from16 v4, v22

    goto :goto_9d

    :cond_114
    const/16 v3, 0x80

    move/from16 v0, v21

    if-eq v0, v3, :cond_126

    const/16 v3, 0xa0

    move/from16 v0, v21

    if-eq v0, v3, :cond_126

    const/16 v3, 0xef

    move/from16 v0, v21

    if-le v0, v3, :cond_133

    :cond_126
    const/4 v3, 0x0

    move/from16 v22, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v3

    move/from16 v3, v22

    goto/16 :goto_9d

    :cond_133
    const/16 v3, 0xa0

    move/from16 v0, v21

    if-le v0, v3, :cond_152

    const/16 v3, 0xe0

    move/from16 v0, v21

    if-ge v0, v3, :cond_152

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    add-int/lit8 v3, v7, 0x1

    if-le v3, v5, :cond_1d7

    move v5, v6

    move v7, v8

    move v6, v3

    move v8, v9

    move v9, v10

    move/from16 v22, v4

    move v4, v3

    move/from16 v3, v22

    goto/16 :goto_9d

    :cond_152
    const/16 v3, 0x7f

    move/from16 v0, v21

    if-le v0, v3, :cond_167

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    add-int/lit8 v3, v6, 0x1

    if-le v3, v4, :cond_1cb

    move v4, v5

    move v6, v7

    move v5, v3

    move v7, v8

    move v8, v9

    move v9, v10

    goto/16 :goto_9d

    :cond_167
    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v22, v4

    move v4, v5

    move v5, v3

    move/from16 v3, v22

    goto/16 :goto_9d

    :cond_174
    if-eqz v11, :cond_1c9

    if-lez v3, :cond_1c9

    const/4 v3, 0x0

    :goto_179
    if-eqz v10, :cond_17e

    if-lez v9, :cond_17e

    const/4 v10, 0x0

    :cond_17e
    if-eqz v3, :cond_18b

    if-nez v2, :cond_187

    add-int v2, v16, v15

    add-int/2addr v2, v14

    if-lez v2, :cond_18b

    :cond_187
    const-string v2, "UTF8"

    goto/16 :goto_e

    :cond_18b
    if-eqz v10, :cond_19b

    sget-boolean v2, Lcom/google/zxing/b/l;->b:Z

    if-nez v2, :cond_197

    const/4 v2, 0x3

    if-ge v5, v2, :cond_197

    const/4 v2, 0x3

    if-lt v4, v2, :cond_19b

    :cond_197
    const-string v2, "SJIS"

    goto/16 :goto_e

    :cond_19b
    if-eqz v13, :cond_1b3

    if-eqz v10, :cond_1b3

    const/4 v2, 0x2

    if-ne v5, v2, :cond_1a5

    const/4 v2, 0x2

    if-eq v8, v2, :cond_1ab

    :cond_1a5
    mul-int/lit8 v2, v12, 0xa

    move/from16 v0, v20

    if-lt v2, v0, :cond_1af

    :cond_1ab
    const-string v2, "SJIS"

    goto/16 :goto_e

    :cond_1af
    const-string v2, "ISO8859_1"

    goto/16 :goto_e

    :cond_1b3
    if-eqz v13, :cond_1b9

    const-string v2, "ISO8859_1"

    goto/16 :goto_e

    :cond_1b9
    if-eqz v10, :cond_1bf

    const-string v2, "SJIS"

    goto/16 :goto_e

    :cond_1bf
    if-eqz v3, :cond_1c5

    const-string v2, "UTF8"

    goto/16 :goto_e

    :cond_1c5
    sget-object v2, Lcom/google/zxing/b/l;->a:Ljava/lang/String;

    goto/16 :goto_e

    :cond_1c9
    move v3, v11

    goto :goto_179

    :cond_1cb
    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v22, v5

    move v5, v3

    move v3, v4

    move/from16 v4, v22

    goto/16 :goto_9d

    :cond_1d7
    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v22, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v22

    goto/16 :goto_9d

    :cond_1e3
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto/16 :goto_9d

    :cond_1ec
    move v11, v12

    move v12, v13

    goto/16 :goto_7c

    :cond_1f0
    move/from16 v17, v3

    move/from16 v18, v11

    goto/16 :goto_6b
.end method
