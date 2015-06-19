.class Lcom/glympse/android/lib/hh;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Lcom/glympse/android/lib/GSearchResult;


# instance fields
.field private _latitude:D

.field private _longitude:D

.field private _name:Ljava/lang/String;

.field private ew:Ljava/lang/String;

.field private hp:Lcom/glympse/android/api/GImage;

.field private kq:Ljava/lang/String;

.field private rI:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rJ:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/api/GImage;Lcom/glympse/android/hal/GVector;Lcom/glympse/android/hal/GVector;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/glympse/android/api/GImage;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/glympse/android/lib/hh;->_latitude:D

    iput-wide p3, p0, Lcom/glympse/android/lib/hh;->_longitude:D

    iput-object p5, p0, Lcom/glympse/android/lib/hh;->_name:Ljava/lang/String;

    iput-object p6, p0, Lcom/glympse/android/lib/hh;->ew:Ljava/lang/String;

    iput-object p7, p0, Lcom/glympse/android/lib/hh;->kq:Ljava/lang/String;

    iput-object p8, p0, Lcom/glympse/android/lib/hh;->hp:Lcom/glympse/android/api/GImage;

    iput-object p9, p0, Lcom/glympse/android/lib/hh;->rI:Lcom/glympse/android/hal/GVector;

    iput-object p10, p0, Lcom/glympse/android/lib/hh;->rJ:Lcom/glympse/android/hal/GVector;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hh;->ew:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/glympse/android/api/GImage;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hh;->hp:Lcom/glympse/android/api/GImage;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/hh;->_latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/hh;->_longitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 6

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/hh;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-wide v1, p0, Lcom/glympse/android/lib/hh;->_latitude:D

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_1d

    iget-wide v1, p0, Lcom/glympse/android/lib/hh;->_longitude:D

    cmpl-double v1, v3, v1

    if-nez v1, :cond_2b

    :cond_1d
    const-string v1, "no name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hh;->_name:Ljava/lang/String;

    :cond_28
    iget-object v0, p0, Lcom/glympse/android/lib/hh;->_name:Ljava/lang/String;

    return-object v0

    :cond_2b
    iget-wide v1, p0, Lcom/glympse/android/lib/hh;->_latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/glympse/android/lib/hh;->_longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_22
.end method

.method public getPhoneNumberTypes()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/hh;->rI:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getPhoneNumbers()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/hh;->rJ:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hh;->kq:Ljava/lang/String;

    return-object v0
.end method
