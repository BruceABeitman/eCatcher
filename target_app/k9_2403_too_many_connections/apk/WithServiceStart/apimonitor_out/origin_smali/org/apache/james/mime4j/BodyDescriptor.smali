.class public Lorg/apache/james/mime4j/BodyDescriptor;
.super Ljava/lang/Object;
.source "BodyDescriptor.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/BodyDescriptor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .registers 5

    const/4 v1, 0x0

    const-string v2, "text/plain"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "text/plain"

    iput-object v2, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    const-string v0, "us-ascii"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    const-string v0, "7bit"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    if-eqz p1, :cond_2f

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "message/rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    :goto_2e
    return-void

    :cond_2f
    const-string v0, "text/plain"

    iput-object v2, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    goto :goto_2e
.end method

.method private getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 25

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    const-string v21, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_52

    move-object/from16 v15, p1

    const/16 v18, 0x0

    :goto_1b
    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v18, :cond_178

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v9, 0x5

    const/16 v3, 0x63

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_41
    move-object v0, v11

    array-length v0, v0

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_153

    aget-char v10, v11, v14

    sparse-switch v20, :sswitch_data_17a

    :cond_4f
    :goto_4f
    :sswitch_4f
    add-int/lit8 v14, v14, 0x1

    goto :goto_41

    :cond_52
    const/16 v21, 0x0

    const-string v22, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_1b

    :sswitch_77
    const/16 v21, 0x3b

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_4f

    const/16 v20, 0x0

    goto :goto_4f

    :sswitch_81
    const/16 v21, 0x3d

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_92

    sget-object v21, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    const-string v22, "Expected header param name, got \'=\'"

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    const/16 v20, 0x63

    goto :goto_4f

    :cond_92
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v20, 0x1

    :sswitch_9e
    const/16 v21, 0x3d

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_b1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    if-nez v21, :cond_ae

    const/16 v20, 0x63

    goto :goto_4f

    :cond_ae
    const/16 v20, 0x2

    goto :goto_4f

    :cond_b1
    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4f

    :sswitch_b8
    const/4 v13, 0x0

    sparse-switch v10, :sswitch_data_198

    const/16 v20, 0x3

    const/4 v13, 0x1

    :goto_bf
    :sswitch_bf
    if-eqz v13, :cond_4f

    :sswitch_c1
    const/4 v13, 0x0

    sparse-switch v10, :sswitch_data_1a6

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_cb
    if-eqz v13, :cond_4f

    :sswitch_cd
    sparse-switch v10, :sswitch_data_1b4

    const/16 v20, 0x63

    goto/16 :goto_4f

    :sswitch_d4
    const/16 v20, 0x4

    goto :goto_bf

    :sswitch_d7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x5

    const/4 v13, 0x1

    goto :goto_cb

    :sswitch_f8
    const/16 v20, 0x0

    goto/16 :goto_4f

    :sswitch_fc
    sparse-switch v10, :sswitch_data_1c2

    if-eqz v12, :cond_10a

    const/16 v21, 0x5c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_10a
    const/4 v12, 0x0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4f

    :sswitch_113
    if-nez v12, :cond_132

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x5

    goto/16 :goto_4f

    :cond_132
    const/4 v12, 0x0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4f

    :sswitch_13b
    if-eqz v12, :cond_146

    const/16 v21, 0x5c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_146
    if-nez v12, :cond_14e

    const/16 v21, 0x1

    move/from16 v12, v21

    :goto_14c
    goto/16 :goto_4f

    :cond_14e
    const/16 v21, 0x0

    move/from16 v12, v21

    goto :goto_14c

    :cond_153
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_178

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_178
    return-object v19

    nop

    :sswitch_data_17a
    .sparse-switch
        0x0 -> :sswitch_81
        0x1 -> :sswitch_9e
        0x2 -> :sswitch_b8
        0x3 -> :sswitch_c1
        0x4 -> :sswitch_fc
        0x5 -> :sswitch_cd
        0x63 -> :sswitch_77
    .end sparse-switch

    :sswitch_data_198
    .sparse-switch
        0x9 -> :sswitch_bf
        0x20 -> :sswitch_bf
        0x22 -> :sswitch_d4
    .end sparse-switch

    :sswitch_data_1a6
    .sparse-switch
        0x9 -> :sswitch_d7
        0x20 -> :sswitch_d7
        0x3b -> :sswitch_d7
    .end sparse-switch

    :sswitch_data_1b4
    .sparse-switch
        0x9 -> :sswitch_4f
        0x20 -> :sswitch_4f
        0x3b -> :sswitch_f8
    .end sparse-switch

    :sswitch_data_1c2
    .sparse-switch
        0x22 -> :sswitch_113
        0x5c -> :sswitch_13b
    .end sparse-switch
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v10, "content-transfer-encoding"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    iget-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    if-nez v10, :cond_28

    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_27

    iput-object p2, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    :cond_27
    :goto_27
    return-void

    :cond_28
    const-string v10, "content-type"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    iget-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    if-nez v10, :cond_27

    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_5a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v10, 0xd

    if-eq v1, v10, :cond_53

    const/16 v10, 0xa

    if-ne v1, v10, :cond_56

    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_56
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_53

    :cond_5a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/BodyDescriptor;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    const-string v10, ""

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_b8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x2f

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v3, v10, :cond_b5

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    :cond_b5
    if-nez v9, :cond_b8

    const/4 v4, 0x0

    :cond_b8
    const-string v10, "boundary"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v4, :cond_d6

    const-string v10, "multipart/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cc

    if-nez v0, :cond_d4

    :cond_cc
    const-string v10, "multipart/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d6

    :cond_d4
    iput-object v4, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    :cond_d6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v10

    if-eqz v10, :cond_de

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    :cond_de
    const-string v10, "charset"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_f8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    :cond_f8
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, ""

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "boundary"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "charset"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27
.end method

.method public getBoundary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public isBase64Encoded()Z
    .registers 3

    const-string v0, "base64"

    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMessage()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isQuotedPrintableEncoded()Z
    .registers 3

    const-string v0, "quoted-printable"

    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method
