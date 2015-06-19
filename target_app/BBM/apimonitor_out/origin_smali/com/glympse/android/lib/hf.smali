.class Lcom/glympse/android/lib/hf;
.super Lcom/glympse/android/lib/HttpJob;
.source "SearchJob.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private f:Ljava/lang/String;

.field private gQ:Ljava/lang/String;

.field private hV:Z

.field private je:Lcom/glympse/android/lib/GImageCache;

.field private rD:Lcom/glympse/android/lib/GSearchEngine;

.field private rE:Ljava/lang/String;

.field private rF:Ljava/lang/String;

.field private rG:Lcom/glympse/android/core/GLatLng;

.field private rH:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GSearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GSearchEngine;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GLatLng;)V
    .registers 8

    invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/hf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/hf;->rD:Lcom/glympse/android/lib/GSearchEngine;

    iput-object p3, p0, Lcom/glympse/android/lib/hf;->rE:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/lib/hf;->rF:Ljava/lang/String;

    iput-object p5, p0, Lcom/glympse/android/lib/hf;->rG:Lcom/glympse/android/core/GLatLng;

    iget-object v0, p0, Lcom/glympse/android/lib/hf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hf;->je:Lcom/glympse/android/lib/GImageCache;

    iget-object v0, p0, Lcom/glympse/android/lib/hf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->isSslEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/glympse/android/lib/hf;->hV:Z

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/hf;->f:Ljava/lang/String;

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hf;->gQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkResponse(II)Z
    .registers 4

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getRetryInterval(I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public onAbort()V
    .registers 4

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rD:Lcom/glympse/android/lib/GSearchEngine;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GCommon;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GSearchEngine;->completed(Lcom/glympse/android/core/GCommon;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public onComplete()V
    .registers 4

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rD:Lcom/glympse/android/lib/GSearchEngine;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GCommon;

    iget-object v2, p0, Lcom/glympse/android/lib/hf;->rH:Lcom/glympse/android/hal/GVector;

    invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GSearchEngine;->completed(Lcom/glympse/android/core/GCommon;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public onPreProcess()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v1, p0, Lcom/glympse/android/lib/hf;->hV:Z

    iget-object v2, p0, Lcom/glympse/android/lib/hf;->f:Ljava/lang/String;

    new-instance v3, Lcom/glympse/android/lib/hg;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/glympse/android/lib/hg;-><init>(Lcom/glympse/android/lib/hf$1;)V

    iget-object v4, p0, Lcom/glympse/android/lib/hf;->gQ:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/j;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/glympse/android/lib/GApiEndpoint;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rF:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "&locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rG:Lcom/glympse/android/core/GLatLng;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rG:Lcom/glympse/android/core/GLatLng;

    invoke-interface {v1}, Lcom/glympse/android/core/GLatLng;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "&location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rG:Lcom/glympse/android/core/GLatLng;

    invoke-interface {v1}, Lcom/glympse/android/core/GLatLng;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rG:Lcom/glympse/android/core/GLatLng;

    invoke-interface {v1}, Lcom/glympse/android/core/GLatLng;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rE:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "&query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/hf;->rE:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    iget-object v1, p0, Lcom/glympse/android/lib/hf;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onProcessResponse()V
    .registers 20

    invoke-virtual/range {p0 .. p0}, Lcom/glympse/android/lib/hf;->isSucceeded()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/hf;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v1}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "result"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "response"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "items"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-interface {v13}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v14

    new-instance v1, Lcom/glympse/android/hal/GVector;

    invoke-direct {v1, v14}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/glympse/android/lib/hf;->rH:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x0

    move v12, v1

    :goto_54
    if-ge v12, v14, :cond_6

    invoke-interface {v13, v12}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v2, "lat"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "lng"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "name"

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "address"

    invoke-static {v7}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "url"

    invoke-static {v8}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon"

    invoke-static {v9}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v9, "phone_numbers"

    invoke-static {v9}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v9

    if-eqz v9, :cond_e2

    invoke-interface {v9}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v16

    if-lez v16, :cond_e2

    new-instance v10, Lcom/glympse/android/hal/GVector;

    move/from16 v0, v16

    invoke-direct {v10, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    new-instance v11, Lcom/glympse/android/hal/GVector;

    move/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    const/4 v1, 0x0

    :goto_b9
    move/from16 v0, v16

    if-ge v1, v0, :cond_e2

    invoke-interface {v9, v1}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v17

    const-string v18, "type"

    invoke-static/range {v18 .. v18}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    const-string v18, "number"

    invoke-static/range {v18 .. v18}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b9

    :cond_e2
    new-instance v9, Lcom/glympse/android/lib/dz;

    const/4 v1, 0x0

    invoke-direct {v9, v15, v1}, Lcom/glympse/android/lib/dz;-><init>(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/glympse/android/lib/hf;->je:Lcom/glympse/android/lib/GImageCache;

    invoke-interface {v9, v1}, Lcom/glympse/android/lib/GImagePrivate;->attachCache(Lcom/glympse/android/lib/GImageCache;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/glympse/android/lib/hf;->rH:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/lib/hh;

    invoke-direct/range {v1 .. v11}, Lcom/glympse/android/lib/hh;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/api/GImage;Lcom/glympse/android/hal/GVector;Lcom/glympse/android/hal/GVector;)V

    invoke-virtual {v15, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_54
.end method
