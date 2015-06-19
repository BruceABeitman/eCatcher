.class public final Lcom/googlecode/mp4parser/a/d;
.super Lcom/googlecode/mp4parser/a/a;
.source "Mp4TrackImpl.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:[J

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/googlecode/mp4parser/a/f;

.field private h:Ljava/lang/String;

.field private i:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .registers 28

    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/a/a;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/d;->e:[J

    new-instance v2, Lcom/googlecode/mp4parser/a/f;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/a/f;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v9

    new-instance v2, Lcom/coremedia/iso/boxes/mdat/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/coremedia/iso/boxes/mdat/a;-><init>(Lcom/coremedia/iso/boxes/TrackBox;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/d;->a:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/MediaBox;->getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/d;->h:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/d;->i:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/d;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v3

    if-eqz v3, :cond_91

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_91
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v3

    if-eqz v3, :cond_a6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/a/d;->f:Ljava/util/List;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a6
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v3

    if-eqz v3, :cond_b8

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/SyncSampleBox;->getSampleNumber()[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/d;->e:[J

    :cond_b8
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/d;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v2

    const-class v3, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface {v2, v3}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_315

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_315

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    const-class v3, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_ea
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-nez v3, :cond_ea

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v5

    const-class v6, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v5, v6}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v4, v3

    :cond_114
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v3, v6}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_12a
    :goto_12a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_114

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v6, v6, v9

    if-nez v6, :cond_12a

    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v3, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-wide v5, v4

    :goto_14d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v17

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v8, v4

    move-wide/from16 v24, v5

    move-wide/from16 v6, v24

    :goto_171
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/c;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v5

    if-eqz v5, :cond_25d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1b1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/k;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/k;->b()J

    move-result-wide v19

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/c;->a()J

    move-result-wide v21

    cmp-long v5, v19, v21

    if-eqz v5, :cond_236

    :cond_1b1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    new-instance v19, Lcom/coremedia/iso/boxes/k;

    const-wide/16 v20, 0x1

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/c;->a()J

    move-result-wide v22

    invoke-direct/range {v19 .. v23}, Lcom/coremedia/iso/boxes/k;-><init>(JJ)V

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c5
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v5

    if-eqz v5, :cond_216

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1f9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/b;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/b;->b()I

    move-result v5

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/c;->d()I

    move-result v19

    move/from16 v0, v19

    if-eq v5, v0, :cond_28f

    :cond_1f9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    new-instance v19, Lcom/coremedia/iso/boxes/b;

    const/16 v20, 0x1

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/c;->d()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v21

    invoke-direct/range {v19 .. v21}, Lcom/coremedia/iso/boxes/b;-><init>(II)V

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_216
    :goto_216
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v5

    if-eqz v5, :cond_2b4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/c;->c()Lcom/coremedia/iso/boxes/fragment/a;

    move-result-object v4

    :goto_220
    if-eqz v4, :cond_22f

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/a;->a()Z

    move-result v4

    if-nez v4, :cond_22f

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22f
    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_171

    :cond_236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/k;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/k;->a()J

    move-result-wide v19

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Lcom/coremedia/iso/boxes/k;->a(J)V

    goto/16 :goto_1c5

    :cond_25d
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleDuration()Z

    move-result v5

    if-eqz v5, :cond_279

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    new-instance v19, Lcom/coremedia/iso/boxes/k;

    const-wide/16 v20, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleDuration()J

    move-result-wide v22

    invoke-direct/range {v19 .. v23}, Lcom/coremedia/iso/boxes/k;-><init>(JJ)V

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c5

    :cond_279
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    new-instance v19, Lcom/coremedia/iso/boxes/k;

    const-wide/16 v20, 0x1

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleDuration()J

    move-result-wide v22

    invoke-direct/range {v19 .. v23}, Lcom/coremedia/iso/boxes/k;-><init>(JJ)V

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c5

    :cond_28f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/b;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/b;->a()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/b;->a(I)V

    goto/16 :goto_216

    :cond_2b4
    if-eqz v8, :cond_2c2

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v4

    if-eqz v4, :cond_2c2

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/a;

    move-result-object v4

    goto/16 :goto_220

    :cond_2c2
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleFlags()Z

    move-result v4

    if-eqz v4, :cond_2ce

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/a;

    move-result-object v4

    goto/16 :goto_220

    :cond_2ce
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/a;

    move-result-object v4

    goto/16 :goto_220

    :cond_2d4
    move-wide v5, v6

    goto/16 :goto_14d

    :cond_2d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/a/d;->e:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/a/d;->e:[J

    array-length v3, v3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/a/d;->e:[J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/a/d;->e:[J

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    array-length v2, v2

    move v3, v2

    :goto_2fb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ea

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/mp4parser/a/d;->e:[J

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, v3

    move v3, v4

    goto :goto_2fb

    :cond_315
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isEnabled()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/a/d;->a(Z)V

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInMovie()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/a/d;->b(Z)V

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPoster()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/a/d;->d(Z)V

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPreview()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/a/d;->c(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/mp4parser/a/f;->b(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getCreationTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/a/b;->a(J)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/a/f;->b(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/a/f;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getModificationTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/a/b;->a(J)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/a/f;->a(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/mp4parser/a/f;->a(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/a/f;->b(D)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/a/f;->a(D)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/a/f;->a(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()[J

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/a/f;->a([J)V

    return-void

    :cond_3b1
    move-wide v4, v5

    goto/16 :goto_12a
.end method

.method private n()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->i:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public final f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public final i()[J
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->e:[J

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->f:Ljava/util/List;

    return-object v0
.end method

.method public final k()Lcom/googlecode/mp4parser/a/f;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->g:Lcom/googlecode/mp4parser/a/f;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic m()Lcom/coremedia/iso/boxes/a;
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/mp4parser/a/d;->n()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mp4TrackImpl{handler=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
