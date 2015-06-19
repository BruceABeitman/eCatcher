.class public Lcom/ibm/icu/util/TimeZoneTransition;
.super Ljava/lang/Object;
.source "TimeZoneTransition.java"


# instance fields
.field private final from:Lcom/ibm/icu/util/TimeZoneRule;

.field private final time:J

.field private final to:Lcom/ibm/icu/util/TimeZoneRule;


# direct methods
.method public constructor <init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ibm/icu/util/TimeZoneTransition;->time:J

    iput-object p3, p0, Lcom/ibm/icu/util/TimeZoneTransition;->from:Lcom/ibm/icu/util/TimeZoneRule;

    iput-object p4, p0, Lcom/ibm/icu/util/TimeZoneTransition;->to:Lcom/ibm/icu/util/TimeZoneRule;

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/ibm/icu/util/TimeZoneRule;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/TimeZoneTransition;->from:Lcom/ibm/icu/util/TimeZoneRule;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/ibm/icu/util/TimeZoneTransition;->time:J

    return-wide v0
.end method

.method public getTo()Lcom/ibm/icu/util/TimeZoneRule;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/TimeZoneTransition;->to:Lcom/ibm/icu/util/TimeZoneRule;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ibm/icu/util/TimeZoneTransition;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", from={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/util/TimeZoneTransition;->from:Lcom/ibm/icu/util/TimeZoneRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", to={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/util/TimeZoneTransition;->to:Lcom/ibm/icu/util/TimeZoneRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
