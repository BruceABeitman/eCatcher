.class public Lcom/glympse/android/lib/ContactPostal;
.super Lcom/glympse/android/lib/ah;
.source "ContactPostal.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/ah;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ContactPostal;->iX:Ljava/lang/String;

    iput-object p2, p0, Lcom/glympse/android/lib/ContactPostal;->ew:Ljava/lang/String;

    invoke-static {p2}, Lcom/glympse/android/lib/ContactPostal;->getNormalizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ContactPostal;->iY:Ljava/lang/String;

    return-void
.end method

.method public static getNormalizedAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic getAddress()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/ah;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ContactPostal;->iX:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNormalizedAddress()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/glympse/android/lib/ah;->getNormalizedAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortRank()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
