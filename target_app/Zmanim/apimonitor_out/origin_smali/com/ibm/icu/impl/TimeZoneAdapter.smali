.class public Lcom/ibm/icu/impl/TimeZoneAdapter;
.super Ljava/util/TimeZone;
.source "TimeZoneAdapter.java"


# static fields
.field static final serialVersionUID:J = -0x1c4fcadfcee9017dL


# instance fields
.field private zone:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method public static wrap(Lcom/ibm/icu/util/TimeZone;)Ljava/util/TimeZone;
    .registers 2

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneAdapter;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/TimeZoneAdapter;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneAdapter;

    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/TimeZone;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/TimeZoneAdapter;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/ibm/icu/impl/TimeZoneAdapter;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/ibm/icu/impl/TimeZoneAdapter;

    iget-object p1, p1, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getOffset(IIIIII)I
    .registers 14

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    return v0
.end method

.method public getRawOffset()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 4

    instance-of v0, p1, Lcom/ibm/icu/impl/TimeZoneAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    check-cast p1, Lcom/ibm/icu/impl/TimeZoneAdapter;

    iget-object v1, p1, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/TimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->hashCode()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/TimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method public setRawOffset(I)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/TimeZone;->setRawOffset(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lcom/ibm/icu/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    return-object v0
.end method

.method public useDaylightTime()Z
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneAdapter;->zone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method
