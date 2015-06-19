.class Lcom/glympse/android/lib/iv;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Lcom/glympse/android/lib/GTrackPrivate;


# static fields
.field public static final tn:J = 0x927c0L

.field public static final tq:I


# instance fields
.field private jX:I

.field private pM:Lcom/glympse/android/hal/GLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation
.end field

.field private qe:I

.field private to:Lcom/glympse/android/hal/GLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation
.end field

.field private tp:J


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/hal/GLinkedList;

    invoke-direct {v0}, Lcom/glympse/android/hal/GLinkedList;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/lib/iv;->tp:J

    iput v2, p0, Lcom/glympse/android/lib/iv;->qe:I

    iput v2, p0, Lcom/glympse/android/lib/iv;->jX:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/hal/GLinkedList;

    invoke-direct {v0}, Lcom/glympse/android/hal/GLinkedList;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/lib/iv;->tp:J

    iput p1, p0, Lcom/glympse/android/lib/iv;->qe:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/iv;->jX:I

    return-void
.end method


# virtual methods
.method public add(Lcom/glympse/android/core/GLocation;J)Z
    .registers 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lcom/glympse/android/core/GLocation;->getTime()J

    move-result-wide v1

    sub-long v3, p2, v1

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    iget-wide v3, p0, Lcom/glympse/android/lib/iv;->tp:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_7

    iput-wide v1, p0, Lcom/glympse/android/lib/iv;->tp:J

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GLinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public addCore(Lcom/glympse/android/core/GLocation;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GLinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public calculateDistance()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocation;

    move v2, v1

    move-object v1, v0

    :goto_18
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocation;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocation;->distanceTo(Lcom/glympse/android/core/GLatLng;)F

    move-result v1

    add-float/2addr v1, v2

    move v2, v1

    move-object v1, v0

    goto :goto_18

    :cond_2c
    float-to-int v0, v2

    iput v0, p0, Lcom/glympse/android/lib/iv;->jX:I

    :cond_2f
    return-void
.end method

.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 7

    const-string v0, "locs"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_27

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    new-instance v4, Lcom/glympse/android/lib/Location;

    invoke-direct {v4}, Lcom/glympse/android/lib/Location;-><init>()V

    invoke-interface {v4, v3}, Lcom/glympse/android/lib/GLocationPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V

    iget-object v3, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v3, v4}, Lcom/glympse/android/hal/GLinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_27
    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 8

    new-instance v1, Lcom/glympse/android/lib/Primitive;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLocationPrivate;

    new-instance v3, Lcom/glympse/android/lib/Primitive;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    invoke-interface {v0, v3, p2}, Lcom/glympse/android/lib/GLocationPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V

    invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_c

    :cond_25
    const-string v0, "locs"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public getDistance()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/iv;->jX:I

    return v0
.end method

.method public getLocations()Lcom/glympse/android/core/GList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    return-object v0
.end method

.method public getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    return-object v0
.end method

.method public getNewLocations()Lcom/glympse/android/core/GList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->to:Lcom/glympse/android/hal/GLinkedList;

    return-object v0
.end method

.method public getNewLocationsRaw()Lcom/glympse/android/hal/GLinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->to:Lcom/glympse/android/hal/GLinkedList;

    return-object v0
.end method

.method public getSource()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/iv;->qe:I

    return v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public merge(Lcom/glympse/android/api/GTrack;J)V
    .registers 6

    check-cast p1, Lcom/glympse/android/lib/iv;

    iget-object v0, p1, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    iput-object v0, p0, Lcom/glympse/android/lib/iv;->to:Lcom/glympse/android/hal/GLinkedList;

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->to:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocation;

    invoke-virtual {p0, v0, p2, p3}, Lcom/glympse/android/lib/iv;->add(Lcom/glympse/android/core/GLocation;J)Z

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public setDistance(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/iv;->jX:I

    return-void
.end method

.method public setLocations(Lcom/glympse/android/hal/GLinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    return-void
.end method

.method public setNewLocations(Lcom/glympse/android/hal/GLinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GLinkedList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/iv;->to:Lcom/glympse/android/hal/GLinkedList;

    return-void
.end method

.method public setSource(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/iv;->qe:I

    return-void
.end method

.method public trim(JZ)Z
    .registers 10

    const-wide/32 v4, 0x927c0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/iv;->trim(JZJ)Z

    move-result v0

    return v0
.end method

.method public trim(JZJ)Z
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocation;

    invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2d

    sub-long v2, p1, v2

    move-wide v4, v2

    :goto_1d
    if-eqz p3, :cond_31

    const-wide/16 v2, 0x0

    :goto_21
    cmp-long v0, v4, v2

    if-ltz v0, :cond_33

    iget-object v0, p0, Lcom/glympse/android/lib/iv;->pM:Lcom/glympse/android/hal/GLinkedList;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    :cond_2d
    const-wide/16 v2, -0x1

    move-wide v4, v2

    goto :goto_1d

    :cond_31
    move-wide v2, p4

    goto :goto_21

    :cond_33
    return v1
.end method
