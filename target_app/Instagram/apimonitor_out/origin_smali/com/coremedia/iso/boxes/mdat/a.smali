.class public final Lcom/coremedia/iso/boxes/mdat/a;
.super Ljava/util/AbstractList;
.source "SampleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field a:[J

.field b:[J

.field c:Lcom/coremedia/iso/IsoFile;

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field f:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .registers 15

    const-wide/16 v9, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/mdat/a;->a(Lcom/coremedia/iso/IsoFile;)V

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v3

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v0

    move-object v7, v0

    :goto_3a
    if-eqz v3, :cond_a9

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a9

    array-length v0, v7

    if-lez v0, :cond_a9

    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v4

    cmp-long v0, v4, v9

    if-lez v0, :cond_a9

    array-length v0, v7

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->blowup(I)[J

    move-result-object v8

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-lez v0, :cond_9f

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    :goto_75
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    move v0, v2

    move v1, v2

    :goto_7e
    array-length v3, v8

    if-ge v1, v3, :cond_a9

    aget-wide v9, v8, v1

    aget-wide v3, v7, v1

    move v5, v2

    :goto_86
    int-to-long v11, v5

    cmp-long v6, v11, v9

    if-gez v6, :cond_a6

    iget-object v6, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    aget-wide v11, v6, v0

    iget-object v6, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    aput-wide v3, v6, v0

    add-long/2addr v3, v11

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v6

    goto :goto_86

    :cond_9b
    new-array v0, v2, [J

    move-object v7, v0

    goto :goto_3a

    :cond_9f
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    goto :goto_75

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_a9
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    const-class v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_127

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    const-class v1, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ce
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_114

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_ce

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v1

    const-class v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v1, v5}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v6

    invoke-static {v1, v6, v7, v0}, Lcom/coremedia/iso/boxes/mdat/a;->a(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_f8

    :cond_114
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    if-nez v0, :cond_124

    :cond_11c
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    :cond_124
    invoke-direct {p0, v3}, Lcom/coremedia/iso/boxes/mdat/a;->a(Ljava/util/Map;)V

    :cond_127
    return-void
.end method

.method private a(I)Ljava/nio/ByteBuffer;
    .registers 16

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v4

    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/a;->f:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    array-length v6, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v6, :cond_42

    aget-object v7, v5, v1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v8, v2

    if-gtz v0, :cond_3e

    int-to-long v12, v4

    add-long/2addr v12, v2

    cmp-long v0, v12, v10

    if-gtz v0, :cond_3e

    sub-long v0, v2, v8

    invoke-virtual {v7, v0, v1, v4}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getContent(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "The sample with offset "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is NOT located within an mdat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;",
            "J",
            "Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_11

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasBaseDataOffset()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v2

    move-wide v3, v2

    :goto_3c
    const-class v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_46
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getDataOffset()I

    move-result v2

    int-to-long v5, v2

    add-long v10, v3, v5

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v12

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/c;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v14

    if-eqz v14, :cond_9a

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/c;->b()J

    move-result-wide v14

    add-long v16, v5, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v5, v14

    goto :goto_6d

    :cond_94
    invoke-virtual/range {p0 .. p0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getOffset()J

    move-result-wide v2

    move-wide v3, v2

    goto :goto_3c

    :cond_9a
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleSize()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleSize()J

    move-result-wide v14

    add-long v16, v5, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v5, v14

    goto :goto_6d

    :cond_b5
    if-nez p3, :cond_bf

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "File doesn\'t contain trex box but track fragments aren\'t fully self contained. Cannot determine sample size."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bf
    invoke-virtual/range {p3 .. p3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleSize()J

    move-result-wide v14

    add-long v16, v5, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v5, v14

    goto :goto_6d

    :cond_d4
    return-object v7
.end method

.method private a(Lcom/coremedia/iso/IsoFile;)V
    .registers 14

    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/a;->c:Lcom/coremedia/iso/IsoFile;

    const-wide/16 v0, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/a;->c:Lcom/coremedia/iso/IsoFile;

    invoke-virtual {v2}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v6

    const-string v1, "mdat"

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    instance-of v1, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    if-eqz v1, :cond_63

    move-object v1, v0

    check-cast v1, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v8, v2

    iget-object v10, p0, Lcom/coremedia/iso/boxes/mdat/a;->d:Ljava/util/HashMap;

    move-object v1, v0

    check-cast v1, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/coremedia/iso/boxes/mdat/a;->e:Ljava/util/HashMap;

    move-object v1, v0

    check-cast v1, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    add-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5f
    add-long v0, v2, v6

    move-wide v2, v0

    goto :goto_14

    :cond_63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sample need to be in mdats and mdats need to be instanceof MediaDataBox"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->f:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    array-length v1, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    new-array v3, v1, [J

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    array-length v4, v4

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    array-length v1, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    new-array v4, v1, [J

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    array-length v5, v5

    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_62

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    array-length v0, v0

    add-int v5, v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    array-length v0, v0

    add-int v5, v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    :cond_62
    iput-object v3, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    iput-object v4, p0, Lcom/coremedia/iso/boxes/mdat/a;->a:[J

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/mdat/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:[J

    array-length v0, v0

    return v0
.end method
