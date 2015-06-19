.class Lcom/glympse/android/lib/aq;
.super Lcom/glympse/android/lib/bh;
.source "CreateSnapshotJob.java"


# instance fields
.field private f:Ljava/lang/String;

.field private gQ:Ljava/lang/String;

.field private hV:Z

.field private js:Ljava/lang/String;

.field private jt:Lcom/glympse/android/core/GPrimitive;

.field private ju:Lcom/glympse/android/core/GPrimitive;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GImagePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
    .registers 8

    invoke-direct {p0}, Lcom/glympse/android/lib/bh;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/aq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/aq;->kp:Lcom/glympse/android/lib/GImagePrivate;

    const-string v0, "application/json"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/aq;->ks:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/aq;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->isSslEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/glympse/android/lib/aq;->hV:Z

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/aq;->gQ:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/lib/aq;->js:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/lib/aq;->jt:Lcom/glympse/android/core/GPrimitive;

    iput-object p5, p0, Lcom/glympse/android/lib/aq;->ju:Lcom/glympse/android/core/GPrimitive;

    return-void
.end method


# virtual methods
.method public onPreProcess()V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/aq;->hV:Z

    if-eqz v0, :cond_77

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTPS()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->SNAPSHOT_BASE_URL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->BASE_URL_SUFFIX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "invites/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->js:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/snapshot?src="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&oauth_token="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->gQ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->jt:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/glympse/android/lib/aq;->jt:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v3, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->type()I

    move-result v0

    sparse-switch v0, :sswitch_data_b6

    goto :goto_48

    :sswitch_6f
    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->getDouble()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_77
    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTP()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :sswitch_7c
    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->getLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_48

    :sswitch_84
    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->getBool()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "true"

    :goto_8c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_90
    const-string v0, "false"

    goto :goto_8c

    :sswitch_93
    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_9f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/aq;->kq:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->ju:Lcom/glympse/android/core/GPrimitive;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/glympse/android/lib/aq;->ju:Lcom/glympse/android/core/GPrimitive;

    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/aq;->kr:Ljava/lang/String;

    :cond_b1
    invoke-super {p0}, Lcom/glympse/android/lib/bh;->onPreProcess()V

    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        0x4 -> :sswitch_6f
        0x8 -> :sswitch_7c
        0x10 -> :sswitch_84
        0x20 -> :sswitch_93
    .end sparse-switch
.end method
