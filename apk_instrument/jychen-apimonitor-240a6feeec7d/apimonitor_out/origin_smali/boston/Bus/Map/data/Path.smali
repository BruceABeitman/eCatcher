.class public Lboston/Bus/Map/data/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Lboston/Bus/Map/util/CanBeSerialized;


# instance fields
.field public firstLat:D

.field public firstLon:D

.field private final id:I

.field private isFirst:Z

.field public lastLat:D

.field public lastLon:D


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lboston/Bus/Map/data/Path;->isFirst:Z

    iput p1, p0, Lboston/Bus/Map/data/Path;->id:I

    return-void
.end method

.method public constructor <init>(Lboston/Bus/Map/util/Box;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lboston/Bus/Map/data/Path;->isFirst:Z

    invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readInt()I

    move-result v8

    iput v8, p0, Lboston/Bus/Map/data/Path;->id:I

    invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readDouble()D

    move-result-wide v6

    invoke-virtual {p0, v0, v1, v2, v3}, Lboston/Bus/Map/data/Path;->addPoint(DD)V

    invoke-virtual {p0, v4, v5, v6, v7}, Lboston/Bus/Map/data/Path;->addPoint(DD)V

    return-void
.end method


# virtual methods
.method public addPoint(DD)V
    .registers 6

    iget-boolean v0, p0, Lboston/Bus/Map/data/Path;->isFirst:Z

    if-eqz v0, :cond_c

    iput-wide p1, p0, Lboston/Bus/Map/data/Path;->firstLat:D

    iput-wide p3, p0, Lboston/Bus/Map/data/Path;->firstLon:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lboston/Bus/Map/data/Path;->isFirst:Z

    :goto_b
    return-void

    :cond_c
    iput-wide p1, p0, Lboston/Bus/Map/data/Path;->lastLat:D

    iput-wide p3, p0, Lboston/Bus/Map/data/Path;->lastLon:D

    goto :goto_b
.end method

.method public condense()V
    .registers 1

    return-void
.end method

.method public getFirstLat()D
    .registers 3

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->firstLat:D

    return-wide v0
.end method

.method public getFirstLon()D
    .registers 3

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->firstLon:D

    return-wide v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lboston/Bus/Map/data/Path;->id:I

    return v0
.end method

.method public getLastLat()D
    .registers 3

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->lastLat:D

    return-wide v0
.end method

.method public getLastLon()D
    .registers 3

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->lastLon:D

    return-wide v0
.end method

.method public getPointLat(I)D
    .registers 4

    if-nez p1, :cond_5

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->firstLat:D

    :goto_4
    return-wide v0

    :cond_5
    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->lastLat:D

    goto :goto_4
.end method

.method public getPointLon(I)D
    .registers 4

    if-nez p1, :cond_5

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->firstLon:D

    :goto_4
    return-wide v0

    :cond_5
    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->lastLon:D

    goto :goto_4
.end method

.method public getPointsSize()I
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->lastLon:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->firstLon:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    :cond_12
    const/4 v0, 0x2

    goto :goto_f
.end method

.method public serialize(Lboston/Bus/Map/util/Box;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lboston/Bus/Map/data/Path;->id:I

    invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeInt(I)V

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->firstLat:D

    invoke-virtual {p1, v0, v1}, Lboston/Bus/Map/util/Box;->writeDouble(D)V

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->firstLon:D

    invoke-virtual {p1, v0, v1}, Lboston/Bus/Map/util/Box;->writeDouble(D)V

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->lastLat:D

    invoke-virtual {p1, v0, v1}, Lboston/Bus/Map/util/Box;->writeDouble(D)V

    iget-wide v0, p0, Lboston/Bus/Map/data/Path;->lastLon:D

    invoke-virtual {p1, v0, v1}, Lboston/Bus/Map/util/Box;->writeDouble(D)V

    return-void
.end method
