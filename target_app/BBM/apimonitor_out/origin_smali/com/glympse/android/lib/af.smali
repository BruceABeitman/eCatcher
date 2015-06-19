.class Lcom/glympse/android/lib/af;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Lcom/glympse/android/lib/GConfigPrivate;


# instance fields
.field private KEY_ACCOUNTS:Ljava/lang/String;

.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private gH:Ljava/lang/String;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private iC:Lcom/glympse/android/hal/GContextHolder;

.field private iD:Ljava/lang/String;

.field private iE:Ljava/lang/String;

.field private iF:Ljava/lang/String;

.field private iG:Lcom/glympse/android/lib/hw;

.field private iH:Z

.field private iI:Z

.field private iJ:Z

.field private iK:Z

.field private iL:Lcom/glympse/android/core/GPrimitive;

.field private iM:Lcom/glympse/android/hal/GKeychain;

.field private iN:Ljava/lang/String;

.field private iO:Ljava/lang/String;

.field private iP:Ljava/lang/String;

.field private iQ:Lcom/glympse/android/core/GPrimitive;

.field private iR:Lcom/glympse/android/core/GPrimitive;

.field private iS:Lcom/glympse/android/core/GPrimitive;

.field private iT:Ljava/lang/String;

.field private iU:Ljava/lang/String;

.field private iV:Ljava/lang/String;

.field private iW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/hw;

    invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iG:Lcom/glympse/android/lib/hw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/af;->iH:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/af;->iI:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/af;->iJ:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/af;->iK:Z

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "Config"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    const-string v0, "glympse_device_v2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iT:Ljava/lang/String;

    const-string v0, "glympse_accounts_v2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->KEY_ACCOUNTS:Ljava/lang/String;

    const-string v0, "glympse_tokens_v2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iU:Ljava/lang/String;

    const-string v0, "g.shareLoc"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iV:Ljava/lang/String;

    const-string v0, "g.shareSp"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iW:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/glympse/android/hal/GContextHolder;)Ljava/lang/String;
    .registers 2

    invoke-interface {p0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Platform;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Platform;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
    .registers 3

    const-string v0, "config_v2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/glympse/android/lib/hw;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const-string v1, "key"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "un"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "psw"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1, p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->ax()V

    return-void
.end method

.method private at()V
    .registers 9

    const-wide/16 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_10

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    :cond_10
    const-string v0, "g.tkSt"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/glympse/android/lib/af;->d(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/af;->iI:Z

    const-string v0, "g.accLnkd"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/glympse/android/lib/af;->d(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/af;->iJ:Z

    const-string v0, "g.prGr"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/glympse/android/lib/af;->d(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/af;->iK:Z

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iV:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    :cond_45
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    :cond_56
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.pGrAWa"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.pGrAWa"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    :cond_6f
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.expOnAr"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.expOnAr"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_8a
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.debug"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.debug"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    :cond_a3
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.motd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c1

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v2, "g.motd"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_c1
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.dbgLog"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.dbgLog"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_da
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.fileLog"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.fileLog"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_f3
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.logUrl"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_110

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.logUrl"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->LOG_URL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_110
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.getRt"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12b

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.getRt"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_12b
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxTktLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_147

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxTktLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0xdbba00

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_147
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.ptRtPrd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_163

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.ptRtPrd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_163
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxNmLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17e

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxNmLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    :cond_17e
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_189

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    :cond_189
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_194

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    :cond_194
    return-void
.end method

.method private au()V
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iD:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/hw;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    invoke-interface {v1, v0, v3}, Lcom/glympse/android/hal/GKeychain;->load(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "id"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "id"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/hal/Platform;->generateDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "push"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v2, "push"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_5d
    return-void

    :cond_5e
    invoke-static {v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    invoke-interface {v1, v0, v3}, Lcom/glympse/android/hal/GKeychain;->remove(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->aw()V

    goto :goto_22
.end method

.method private av()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iG:Lcom/glympse/android/lib/hw;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method private aw()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iN:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    invoke-static {v2}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/hal/GKeychain;->save(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method private ax()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iO:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    invoke-static {v2}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/hal/GKeychain;->save(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method private ay()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iP:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    invoke-static {v2}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/hal/GKeychain;->save(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method private az()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Platform;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->filenameEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, p1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, p1}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result p2

    :goto_e
    return p2

    :cond_f
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, p1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    goto :goto_e
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public allowLocationSharing(Z)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iV:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/af;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public allowSpeedSharing(Z)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iW:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public areAccountsLinked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iJ:Z

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventSink;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public forgetAccessToken()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->ay()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-nez v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    const-string v2, "valid"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v4}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_24

    invoke-virtual {p0}, Lcom/glympse/android/lib/af;->forgetAccessToken()V

    goto :goto_b

    :cond_24
    const-string v0, "token"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getAccount(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 8

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/glympse/android/lib/af;->iC:Lcom/glympse/android/hal/GContextHolder;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->KEY_ACCOUNTS:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/glympse/android/lib/hw;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/af;->iO:Ljava/lang/String;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/glympse/android/hal/HalFactory;->openKeychain(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/hal/GKeychain;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iO:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/hal/GKeychain;->load(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    :goto_22
    return-object v0

    :cond_23
    invoke-static {v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    if-eqz v1, :cond_22

    invoke-virtual {p0, p3}, Lcom/glympse/android/lib/af;->getAccount(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    goto :goto_22
.end method

.method public getAccount(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 3

    invoke-static {p1}, Lcom/glympse/android/lib/UrlParser;->cleanupBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/glympse/android/lib/UrlParser;->prepareBaseUrlConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/af;->l(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    goto :goto_7
.end method

.method public getAccountCreationTime()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.accCrtd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAccounts()Lcom/glympse/android/core/GPrimitive;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    return-object v0
.end method

.method public getContents()Lcom/glympse/android/core/GPrimitive;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    return-object v0
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()Lcom/glympse/android/core/GPrimitive;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/af;->l(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public getDebugLevel()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.dbgLog"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "id"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpireOnArrival()I
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.expOnAr"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getFileLevel()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.fileLog"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGetRate()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.getRt"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInviteLifetime()J
    .registers 3

    const-wide/32 v0, 0xa4cb800

    return-wide v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getLogUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.logUrl"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumNicknameLength()I
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxNmLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumTicketDuration()I
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxTktLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMotdContext()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.motd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "ctx"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getMotdLastRequest()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.motd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "ts"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1e
    return-wide v0

    :cond_1f
    const-wide/16 v0, 0x0

    goto :goto_1e
.end method

.method public getPostRatePeriod()I
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.ptRtPrd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRegistrationToken()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v2, "push"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    if-nez v2, :cond_16

    :goto_15
    return-object v0

    :cond_16
    invoke-direct {p0}, Lcom/glympse/android/lib/af;->az()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ver"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->aw()V

    goto :goto_15

    :cond_33
    const-string v3, "ts"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x240c8400

    add-long/2addr v3, v5

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_52

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->aw()V

    goto :goto_15

    :cond_52
    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getViewerToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.viewer"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public hasPrivateGroups()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iK:Z

    return v0
.end method

.method public hasTicketBeenSent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iI:Z

    return v0
.end method

.method public isDebug()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.debug"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFirstLaunch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iH:Z

    return v0
.end method

.method public isPublicGroupAutoWatched()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.pGrAWa"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isServerSupported(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v2, "g.iurls"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1, p1}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public isSharingLocation()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSharingSpeed()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, p1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    goto :goto_5
.end method

.method public load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/glympse/android/lib/af;->iC:Lcom/glympse/android/hal/GContextHolder;

    iput-object p2, p0, Lcom/glympse/android/lib/af;->iD:Ljava/lang/String;

    invoke-static {p3}, Lcom/glympse/android/lib/UrlParser;->prepareBaseUrlConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/lib/af;->gH:Ljava/lang/String;

    invoke-static {p1}, Lcom/glympse/android/lib/af;->a(Lcom/glympse/android/hal/GContextHolder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iF:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iG:Lcom/glympse/android/lib/hw;

    iget-object v4, p0, Lcom/glympse/android/lib/af;->iC:Lcom/glympse/android/hal/GContextHolder;

    iget-object v5, p0, Lcom/glympse/android/lib/af;->iD:Ljava/lang/String;

    const-string v6, "config_v2"

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iG:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->cK()Z

    move-result v0

    if-nez v0, :cond_9c

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/glympse/android/lib/af;->iH:Z

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iG:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iF:Ljava/lang/String;

    iget-object v4, p0, Lcom/glympse/android/lib/af;->iT:Ljava/lang/String;

    invoke-static {p2, v0, v4}, Lcom/glympse/android/lib/hw;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iN:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/af;->KEY_ACCOUNTS:Ljava/lang/String;

    invoke-static {p2, v3, v0}, Lcom/glympse/android/lib/hw;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iO:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iF:Ljava/lang/String;

    iget-object v4, p0, Lcom/glympse/android/lib/af;->iU:Ljava/lang/String;

    invoke-static {p2, v0, v4}, Lcom/glympse/android/lib/hw;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iP:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iC:Lcom/glympse/android/hal/GContextHolder;

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/glympse/android/hal/HalFactory;->openKeychain(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/hal/GKeychain;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iH:Z

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v4, p0, Lcom/glympse/android/lib/af;->iN:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lcom/glympse/android/hal/GKeychain;->load(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    move-object v0, v3

    :goto_72
    iput-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v4, p0, Lcom/glympse/android/lib/af;->iO:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lcom/glympse/android/hal/GKeychain;->load(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    move-object v0, v3

    :goto_83
    iput-object v0, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iP:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/hal/GKeychain;->load(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    :goto_93
    iput-object v3, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    :goto_95
    invoke-direct {p0}, Lcom/glympse/android/lib/af;->at()V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->au()V

    return-void

    :cond_9c
    move v0, v2

    goto :goto_2d

    :cond_9e
    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    goto :goto_72

    :cond_a3
    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    goto :goto_83

    :cond_a8
    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    goto :goto_93

    :cond_ad
    invoke-virtual {p0}, Lcom/glympse/android/lib/af;->wipeAccounts()V

    goto :goto_95
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/af;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public save()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->av()V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->aw()V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->ax()V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->ay()V

    return-void
.end method

.method public saveAccessToken(Ljava/lang/String;J)V
    .registers 7

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const-string v1, "token"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "valid"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->ay()V

    return-void
.end method

.method public saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/glympse/android/lib/UrlParser;->cleanupBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {v0}, Lcom/glympse/android/lib/UrlParser;->prepareBaseUrlConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/glympse/android/lib/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public saveCurrentAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->gH:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/glympse/android/lib/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveCurrentDeviceId(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "id"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->aw()V

    goto :goto_a
.end method

.method public saveMotdContext(JLjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.motd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/lib/Primitive;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const-string v2, "ts"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v2, "ctx"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public saveRegistrationToken(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "push"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/lib/Primitive;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const-string v2, "ts"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v2, "id"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ver"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->az()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->aw()V

    return-void
.end method

.method public setAccountCreationTime(J)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.accCrtd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public setAccountsLinked(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iJ:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/glympse/android/lib/af;->iJ:Z

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.accLnkd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/glympse/android/lib/af;->iJ:Z

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->av()V

    goto :goto_4
.end method

.method public setAutoWatchPublicGroup(Z)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.pGrAWa"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDebug(Z)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.debug"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setExpireOnArrival(I)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.expOnAr"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-eq v0, p1, :cond_28

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.expOnAr"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/af;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public setMaximumNicknameLength(I)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxNmLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public setMaximumTicketDuration(I)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.mxTktLen"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public setPostRatePeriod(I)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.ptRtPrd"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public setPrivateGroups(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iK:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/glympse/android/lib/af;->iK:Z

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.prGr"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/glympse/android/lib/af;->iK:Z

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->av()V

    goto :goto_4
.end method

.method public setSupportedServers(Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.iurls"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v2, "g.iurls"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_1f
    iget-object v1, p0, Lcom/glympse/android/lib/af;->iE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public setTicketSent(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iI:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/glympse/android/lib/af;->iI:Z

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.tkSt"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/glympse/android/lib/af;->iI:Z

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/glympse/android/lib/af;->av()V

    goto :goto_4
.end method

.method public setViewerToken(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iL:Lcom/glympse/android/core/GPrimitive;

    const-string v1, "g.viewer"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-boolean v0, p0, Lcom/glympse/android/lib/af;->iH:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/glympse/android/lib/af;->save()V

    :cond_9
    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/glympse/android/lib/af;->save()V

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iG:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/af;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    goto :goto_4
.end method

.method public wipeAccounts()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iN:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/glympse/android/hal/GKeychain;->remove(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/hal/GKeychain;->remove(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/glympse/android/lib/af;->iM:Lcom/glympse/android/hal/GKeychain;

    iget-object v1, p0, Lcom/glympse/android/lib/af;->iP:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/glympse/android/hal/GKeychain;->remove(Ljava/lang/String;Z)Z

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iQ:Lcom/glympse/android/core/GPrimitive;

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iR:Lcom/glympse/android/core/GPrimitive;

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/af;->iS:Lcom/glympse/android/core/GPrimitive;

    return-void
.end method
