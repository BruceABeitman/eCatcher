.class Lcom/glympse/android/lib/eu;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "InviteTicketParser.java"


# instance fields
.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

.field private mQ:I

.field private oO:Lcom/glympse/android/lib/es;

.field private oQ:Lcom/glympse/android/lib/GTrackPrivate;

.field private oR:I

.field private oS:[J

.field private oT:[J


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;ILcom/glympse/android/lib/es;)V
    .registers 9

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/glympse/android/lib/eu;->oS:[J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/glympse/android/lib/eu;->oT:[J

    iput-object p1, p0, Lcom/glympse/android/lib/eu;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iput p2, p0, Lcom/glympse/android/lib/eu;->mQ:I

    iput-object p3, p0, Lcom/glympse/android/lib/eu;->oO:Lcom/glympse/android/lib/es;

    iget-object v0, p0, Lcom/glympse/android/lib/eu;->oO:Lcom/glympse/android/lib/es;

    iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/eu;->oQ:Lcom/glympse/android/lib/GTrackPrivate;

    iput v1, p0, Lcom/glympse/android/lib/eu;->oR:I

    move v0, v1

    :goto_23
    if-ge v0, v4, :cond_2e

    iget-object v1, p0, Lcom/glympse/android/lib/eu;->oT:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_2e
    return-void
.end method


# virtual methods
.method public endArray(I)Z
    .registers 20

    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v1, v0, :cond_d7

    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/glympse/android/lib/eu;->oR:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/eu;->oS:[J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/glympse/android/lib/eu;->oR:I

    const-wide/32 v3, 0xfffffff

    aput-wide v3, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/glympse/android/lib/eu;->oR:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/glympse/android/lib/eu;->oR:I

    goto :goto_5

    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glympse/android/lib/eu;->oQ:Lcom/glympse/android/lib/GTrackPrivate;

    new-instance v1, Lcom/glympse/android/lib/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L

    div-double/2addr v6, v8

    const-wide/32 v8, 0xfffffff

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-nez v8, :cond_a7

    const/high16 v8, 0x7fc0

    :goto_5e
    const-wide/32 v9, 0xfffffff

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v12, 0x4

    aget-wide v11, v11, v12

    cmp-long v9, v9, v11

    if-nez v9, :cond_b3

    const/high16 v9, 0x7fc0

    :goto_6e
    const-wide/32 v10, 0xfffffff

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v14, 0x5

    aget-wide v14, v12, v14

    cmp-long v10, v10, v14

    if-nez v10, :cond_bc

    const/high16 v10, 0x7fc0

    :goto_7e
    const-wide/32 v11, 0xfffffff

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v15, 0x6

    aget-wide v14, v14, v15

    cmp-long v11, v11, v14

    if-nez v11, :cond_c5

    const/high16 v11, 0x7fc0

    :goto_8e
    const-wide/32 v14, 0xfffffff

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/16 v16, 0x7

    aget-wide v16, v12, v16

    cmp-long v12, v14, v16

    if-nez v12, :cond_ce

    const/high16 v12, 0x7fc0

    :goto_9f
    invoke-direct/range {v1 .. v12}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V

    invoke-interface {v13, v1}, Lcom/glympse/android/lib/GTrackPrivate;->addCore(Lcom/glympse/android/core/GLocation;)V

    :cond_a5
    :goto_a5
    const/4 v1, 0x1

    return v1

    :cond_a7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    long-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    goto :goto_5e

    :cond_b3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v10, 0x4

    aget-wide v9, v9, v10

    long-to-float v9, v9

    goto :goto_6e

    :cond_bc
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    long-to-float v10, v10

    goto :goto_7e

    :cond_c5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v12, 0x6

    aget-wide v11, v11, v12

    long-to-float v11, v11

    goto :goto_8e

    :cond_ce
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glympse/android/lib/eu;->oS:[J

    const/4 v14, 0x7

    aget-wide v14, v12, v14

    long-to-float v12, v14

    goto :goto_9f

    :cond_d7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/glympse/android/lib/eu;->mQ:I

    move/from16 v0, p1

    if-ne v1, v0, :cond_a5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/eu;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    goto :goto_a5
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 7

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_20

    iget-object v0, p0, Lcom/glympse/android/lib/eu;->oS:[J

    iget v1, p0, Lcom/glympse/android/lib/eu;->oR:I

    const-wide/32 v2, 0xfffffff

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/glympse/android/lib/eu;->oT:[J

    iget v1, p0, Lcom/glympse/android/lib/eu;->oR:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iget v0, p0, Lcom/glympse/android/lib/eu;->oR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/eu;->oR:I

    :goto_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    iget-object v0, p0, Lcom/glympse/android/lib/eu;->oT:[J

    iget v1, p0, Lcom/glympse/android/lib/eu;->oR:I

    aget-wide v0, v0, v1

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/glympse/android/lib/eu;->oS:[J

    iget v3, p0, Lcom/glympse/android/lib/eu;->oR:I

    aput-wide v0, v2, v3

    iget-object v2, p0, Lcom/glympse/android/lib/eu;->oT:[J

    iget v3, p0, Lcom/glympse/android/lib/eu;->oR:I

    aput-wide v0, v2, v3

    iget v0, p0, Lcom/glympse/android/lib/eu;->oR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/eu;->oR:I

    goto :goto_1e
.end method

.method public startArray(I)Z
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/eu;->oR:I

    const/4 v0, 0x1

    return v0
.end method
