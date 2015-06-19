.class public Lco/vine/android/recorder/RecordSegment;
.super Ljava/lang/Object;
.source "RecordSegment.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x62d905fb96c6389cL


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public index:I

.field private mAudioData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/AudioData;",
            ">;"
        }
    .end annotation
.end field

.field private mSetting:Lco/vine/android/recorder/CameraSetting;

.field private mThumbnailPath:Ljava/lang/String;

.field private mVideoData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Z

.field public startTimestamp:J

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mVideoData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mThumbnailPath:Ljava/lang/String;

    iput-wide p1, p0, Lco/vine/android/recorder/RecordSegment;->startTimestamp:J

    return-void
.end method

.method public constructor <init>(Lco/vine/android/recorder/RecordSegment;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v3, p1, Lco/vine/android/recorder/RecordSegment;->mSetting:Lco/vine/android/recorder/CameraSetting;

    iput-object v3, p0, Lco/vine/android/recorder/RecordSegment;->mSetting:Lco/vine/android/recorder/CameraSetting;

    iget-object v3, p1, Lco/vine/android/recorder/RecordSegment;->mThumbnailPath:Ljava/lang/String;

    iput-object v3, p0, Lco/vine/android/recorder/RecordSegment;->mThumbnailPath:Ljava/lang/String;

    iget-boolean v3, p1, Lco/vine/android/recorder/RecordSegment;->removed:Z

    iput-boolean v3, p0, Lco/vine/android/recorder/RecordSegment;->removed:Z

    iget v3, p1, Lco/vine/android/recorder/RecordSegment;->index:I

    iput v3, p0, Lco/vine/android/recorder/RecordSegment;->index:I

    iget-object v3, p1, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lco/vine/android/recorder/RecordSegment;->videoPath:Ljava/lang/String;

    iput-object v3, p0, Lco/vine/android/recorder/RecordSegment;->videoPath:Ljava/lang/String;

    iget-wide v3, p1, Lco/vine/android/recorder/RecordSegment;->startTimestamp:J

    iput-wide v3, p0, Lco/vine/android/recorder/RecordSegment;->startTimestamp:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lco/vine/android/recorder/RecordSegment;->mVideoData:Ljava/util/ArrayList;

    iget-object v3, p1, Lco/vine/android/recorder/RecordSegment;->mVideoData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/recorder/VideoData;

    iget-object v3, p0, Lco/vine/android/recorder/RecordSegment;->mVideoData:Ljava/util/ArrayList;

    new-instance v4, Lco/vine/android/recorder/VideoData;

    invoke-direct {v4, v2}, Lco/vine/android/recorder/VideoData;-><init>(Lco/vine/android/recorder/VideoData;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    iget-object v3, p1, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/AudioData;

    iget-object v3, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    new-instance v4, Lco/vine/android/recorder/AudioData;

    invoke-direct {v4, v0}, Lco/vine/android/recorder/AudioData;-><init>(Lco/vine/android/recorder/AudioData;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_67
    return-void
.end method

.method public static applyEditedChanges(Lco/vine/android/recorder/RecordSession;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/recorder/RecordSession;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSession;->getSegments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, v1, v1, p1}, Lco/vine/android/recorder/RecordSegment;->applyEditedChanges(Lco/vine/android/recorder/RecordSession;Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static applyEditedChanges(Lco/vine/android/recorder/RecordSession;Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/recorder/RecordSession;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;[B",
            "Lco/vine/android/recorder/AudioArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_6b

    const/4 v5, 0x1

    :goto_3
    const-string v31, "Apply changes, on source: {}."

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_208

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;

    move-result-object v7

    if-eqz v5, :cond_2d

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 p2, v0

    :cond_2d
    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordSession;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lco/vine/android/recorder/RecordSessionVersion;->getAudioArrayType()Lco/vine/android/recorder/AudioArray$AudioArrayType;

    move-result-object v31

    sget-object v32, Lco/vine/android/recorder/AudioArray$AudioArrayType;->SHORT:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_72

    if-eqz v5, :cond_6d

    iget v0, v7, Lco/vine/android/recorder/AudioArray;->length:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [S

    move-object/from16 v31, v0

    :goto_4d
    invoke-static/range {v31 .. v31}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v6

    :goto_51
    if-eqz v5, :cond_88

    const/4 v11, 0x0

    :goto_54
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v11, v0, :cond_88

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lco/vine/android/recorder/RecordSegment;

    move-object/from16 v0, v31

    iput v11, v0, Lco/vine/android/recorder/RecordSegment;->index:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_54

    :cond_6b
    const/4 v5, 0x0

    goto :goto_3

    :cond_6d
    invoke-virtual/range {p3 .. p3}, Lco/vine/android/recorder/AudioArray;->getDataShort()[S

    move-result-object v31

    goto :goto_4d

    :cond_72
    if-eqz v5, :cond_83

    iget v0, v7, Lco/vine/android/recorder/AudioArray;->length:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    :goto_7e
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    goto :goto_51

    :cond_83
    invoke-virtual/range {p3 .. p3}, Lco/vine/android/recorder/AudioArray;->getDataByte()[B

    move-result-object v31

    goto :goto_7e

    :cond_88
    const/4 v8, 0x0

    const-wide/16 v19, -0x1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1bc

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lco/vine/android/recorder/RecordSegment;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordSegment;->removed:Z

    move/from16 v31, v0

    if-nez v31, :cond_1b3

    if-eqz v5, :cond_152

    move-object/from16 v24, v22

    :goto_a7
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v31, "Adding segment: {}."

    move-object/from16 v0, v22

    iget v0, v0, Lco/vine/android/recorder/RecordSegment;->index:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v24 .. v24}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;

    move-result-object v9

    invoke-virtual/range {v24 .. v24}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v23

    const-wide/16 v14, -0x1

    const-wide/16 v16, 0x0

    iget v0, v9, Lco/vine/android/recorder/AudioData;->start:I

    move/from16 v31, v0

    iget v0, v9, Lco/vine/android/recorder/AudioData;->size:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v7, v6, v0, v1}, Lco/vine/android/recorder/AudioArray;->putInto(Ljava/nio/Buffer;II)V

    const-string v31, "Audio Buffers from {} with size {}."

    iget v0, v9, Lco/vine/android/recorder/AudioData;->start:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    iget v0, v9, Lco/vine/android/recorder/AudioData;->size:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput v8, v9, Lco/vine/android/recorder/AudioData;->start:I

    iget v0, v9, Lco/vine/android/recorder/AudioData;->size:I

    move/from16 v31, v0

    add-int v8, v8, v31

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_f9
    :goto_f9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_175

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lco/vine/android/recorder/VideoData;

    iget v0, v10, Lco/vine/android/recorder/VideoData;->size:I

    move/from16 v31, v0

    if-ltz v31, :cond_f9

    iget v0, v10, Lco/vine/android/recorder/VideoData;->start:I

    move/from16 v21, v0

    const-wide/16 v31, -0x1

    cmp-long v31, v14, v31

    if-nez v31, :cond_162

    iget-wide v14, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    const-wide/16 v31, -0x1

    cmp-long v31, v19, v31

    if-nez v31, :cond_15d

    const-wide/16 v19, 0x0

    const-wide/16 v31, 0x0

    move-wide/from16 v0, v31

    iput-wide v0, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    :goto_125
    const-string v31, "Modifying timestamp from {} to {}."

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    iget-wide v0, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v0, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->position()I

    move-result v31

    move/from16 v0, v31

    iput v0, v10, Lco/vine/android/recorder/VideoData;->start:I

    iget v0, v10, Lco/vine/android/recorder/VideoData;->size:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v21

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_f9

    :cond_152
    new-instance v24, Lco/vine/android/recorder/RecordSegment;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lco/vine/android/recorder/RecordSegment;-><init>(Lco/vine/android/recorder/RecordSegment;)V

    goto/16 :goto_a7

    :cond_15d
    move-wide/from16 v0, v19

    iput-wide v0, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    goto :goto_125

    :cond_162
    iget-wide v0, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    move-wide/from16 v25, v0

    iget-wide v0, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    move-wide/from16 v31, v0

    sub-long v31, v31, v14

    add-long v31, v31, v16

    move-wide/from16 v0, v31

    iput-wide v0, v10, Lco/vine/android/recorder/VideoData;->timestamp:J

    move-wide/from16 v14, v25

    goto :goto_125

    :cond_175
    invoke-static {v8}, Lco/vine/android/recorder/RecordConfigUtils;->getTimeStampInNsFromSampleCounted(I)I

    move-result v31

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v32

    const v33, 0xf4240

    mul-int v32, v32, v33

    invoke-virtual/range {v24 .. v24}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    move/from16 v33, v0

    div-int v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    const v32, 0xf4240

    invoke-virtual/range {v24 .. v24}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    move/from16 v33, v0

    div-int v32, v32, v33

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-string v31, "Next timestamp: {}"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8f

    :cond_1b3
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8f

    :cond_1bc
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->position()I

    move-result v28

    const-string v31, "Buffer limits: {}, {}."

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_1f5

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {v29 .. v30}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v6}, Lco/vine/android/recorder/AudioArray;->getFrom(Ljava/nio/Buffer;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lco/vine/android/recorder/RecordSession;->setAudioDataCount(I)V

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordSession;->setVideoDataCount(I)V

    :cond_1f5
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_208

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_208
    if-eqz v5, :cond_20b

    :goto_20a
    return-object v27

    :cond_20b
    move-object/from16 v27, v18

    goto :goto_20a
.end method

.method public static applyForEditedChanges(Lco/vine/android/recorder/RecordSession;[BLco/vine/android/recorder/AudioArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/recorder/RecordSession;",
            "[B",
            "Lco/vine/android/recorder/AudioArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lco/vine/android/recorder/RecordSegment;->applyEditedChanges(Lco/vine/android/recorder/RecordSession;Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAudioData(Lco/vine/android/recorder/AudioData;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCameraSetting()Lco/vine/android/recorder/CameraSetting;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mSetting:Lco/vine/android/recorder/CameraSetting;

    return-object v0
.end method

.method public getCombinedAudioData()Lco/vine/android/recorder/AudioData;
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_f

    new-instance v4, Lco/vine/android/recorder/AudioData;

    invoke-direct {v4, v6, v6}, Lco/vine/android/recorder/AudioData;-><init>(II)V

    :goto_e
    return-object v4

    :cond_f
    iget-object v4, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_48

    const/4 v3, 0x0

    iget-object v4, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/AudioData;

    iget v4, v1, Lco/vine/android/recorder/AudioData;->size:I

    add-int/2addr v3, v4

    goto :goto_1f

    :cond_2f
    new-instance v0, Lco/vine/android/recorder/AudioData;

    iget-object v4, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/recorder/AudioData;

    iget v4, v4, Lco/vine/android/recorder/AudioData;->start:I

    invoke-direct {v0, v4, v3}, Lco/vine/android/recorder/AudioData;-><init>(II)V

    iget-object v4, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v4, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/recorder/AudioData;

    goto :goto_e
.end method

.method public getDrawableCopy(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v1, p0, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSegment;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lco/vine/android/recorder/RecordSegment;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_15
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/VideoData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mVideoData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/CameraSetting;

    iput-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mSetting:Lco/vine/android/recorder/CameraSetting;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mThumbnailPath:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mVideoData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    iget-object v1, p0, Lco/vine/android/recorder/RecordSegment;->mAudioData:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/AudioData;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCameraSetting(Lco/vine/android/recorder/CameraSetting;)Lco/vine/android/recorder/RecordSegment;
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordSegment;->mSetting:Lco/vine/android/recorder/CameraSetting;

    return-object p0
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordSegment;->mThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mSetting:Lco/vine/android/recorder/CameraSetting;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mThumbnailPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordSegment;->mVideoData:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
