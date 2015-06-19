.class public Lcom/coremedia/iso/boxes/MovieBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MovieBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "moov"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "moov"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMovieHeaderBox()Lcom/coremedia/iso/boxes/MovieHeaderBox;
    .registers 4

    iget-object v0, p0, Lcom/coremedia/iso/boxes/MovieBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    instance-of v2, v0, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getTrackCount()I
    .registers 2

    const-class v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackNumbers()[J
    .registers 7

    const-class v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2a

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/AbstractBox;

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2a
    return-object v3
.end method
