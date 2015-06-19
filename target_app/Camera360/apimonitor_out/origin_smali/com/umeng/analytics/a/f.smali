.class public Lcom/umeng/analytics/a/f;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "appkey"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->A:Ljava/lang/String;

    const-string/jumbo v0, "channel"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->B:Ljava/lang/String;

    const-string/jumbo v0, "device_id"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->C:Ljava/lang/String;

    const-string/jumbo v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->D:Ljava/lang/String;

    const-string/jumbo v0, "mc"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->E:Ljava/lang/String;

    const-string/jumbo v0, "req_time"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->F:Ljava/lang/String;

    const-string/jumbo v0, "device_model"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->G:Ljava/lang/String;

    const-string/jumbo v0, "os"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->H:Ljava/lang/String;

    const-string/jumbo v0, "os_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->I:Ljava/lang/String;

    const-string/jumbo v0, "resolution"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->J:Ljava/lang/String;

    const-string/jumbo v0, "cpu"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->K:Ljava/lang/String;

    const-string/jumbo v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->L:Ljava/lang/String;

    const-string/jumbo v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->M:Ljava/lang/String;

    const-string/jumbo v0, "app_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->N:Ljava/lang/String;

    const-string/jumbo v0, "version_code"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->O:Ljava/lang/String;

    const-string/jumbo v0, "package_name"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->P:Ljava/lang/String;

    const-string/jumbo v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Q:Ljava/lang/String;

    const-string/jumbo v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->R:Ljava/lang/String;

    const-string/jumbo v0, "timezone"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->S:Ljava/lang/String;

    const-string/jumbo v0, "country"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->T:Ljava/lang/String;

    const-string/jumbo v0, "language"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->U:Ljava/lang/String;

    const-string/jumbo v0, "access"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->V:Ljava/lang/String;

    const-string/jumbo v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->W:Ljava/lang/String;

    const-string/jumbo v0, "carrier"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->X:Ljava/lang/String;

    const-string/jumbo v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Y:Ljava/lang/String;

    const-string/jumbo v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "appkey"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->A:Ljava/lang/String;

    const-string/jumbo v0, "channel"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->B:Ljava/lang/String;

    const-string/jumbo v0, "device_id"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->C:Ljava/lang/String;

    const-string/jumbo v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->D:Ljava/lang/String;

    const-string/jumbo v0, "mc"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->E:Ljava/lang/String;

    const-string/jumbo v0, "req_time"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->F:Ljava/lang/String;

    const-string/jumbo v0, "device_model"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->G:Ljava/lang/String;

    const-string/jumbo v0, "os"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->H:Ljava/lang/String;

    const-string/jumbo v0, "os_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->I:Ljava/lang/String;

    const-string/jumbo v0, "resolution"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->J:Ljava/lang/String;

    const-string/jumbo v0, "cpu"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->K:Ljava/lang/String;

    const-string/jumbo v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->L:Ljava/lang/String;

    const-string/jumbo v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->M:Ljava/lang/String;

    const-string/jumbo v0, "app_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->N:Ljava/lang/String;

    const-string/jumbo v0, "version_code"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->O:Ljava/lang/String;

    const-string/jumbo v0, "package_name"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->P:Ljava/lang/String;

    const-string/jumbo v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Q:Ljava/lang/String;

    const-string/jumbo v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->R:Ljava/lang/String;

    const-string/jumbo v0, "timezone"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->S:Ljava/lang/String;

    const-string/jumbo v0, "country"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->T:Ljava/lang/String;

    const-string/jumbo v0, "language"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->U:Ljava/lang/String;

    const-string/jumbo v0, "access"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->V:Ljava/lang/String;

    const-string/jumbo v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->W:Ljava/lang/String;

    const-string/jumbo v0, "carrier"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->X:Ljava/lang/String;

    const-string/jumbo v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Y:Ljava/lang/String;

    const-string/jumbo v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Z:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "appkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    const-string/jumbo v0, "device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    const-string/jumbo v0, "idmd5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    const-string/jumbo v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    :cond_2d
    const-string/jumbo v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    :cond_3f
    const-string/jumbo v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/f;->f:J

    :cond_51
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string/jumbo v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    const-string/jumbo v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string/jumbo v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    const-string/jumbo v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    const-string/jumbo v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string/jumbo v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_47
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    const-string/jumbo v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string/jumbo v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_59
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    const-string/jumbo v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string/jumbo v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6b
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->l:Ljava/lang/String;

    const-string/jumbo v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string/jumbo v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7d
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->m:Ljava/lang/String;

    return-void

    :cond_80
    move-object v0, v1

    goto :goto_11

    :cond_82
    move-object v0, v1

    goto :goto_23

    :cond_84
    move-object v0, v1

    goto :goto_35

    :cond_86
    move-object v0, v1

    goto :goto_47

    :cond_88
    move-object v0, v1

    goto :goto_59

    :cond_8a
    move-object v0, v1

    goto :goto_6b
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    const-string/jumbo v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    const-string/jumbo v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_35
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->p:Ljava/lang/String;

    return-void

    :cond_38
    move-object v0, v1

    goto :goto_11

    :cond_3a
    move-object v0, v1

    goto :goto_23
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "sdk_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    const-string/jumbo v0, "sdk_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_11
    iput v0, p0, Lcom/umeng/analytics/a/f;->s:I

    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_35
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    return-void

    :cond_38
    const/16 v0, 0x8

    goto :goto_11

    :cond_3b
    move-object v0, v1

    goto :goto_23
.end method

.method private h(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    const-string/jumbo v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    const-string/jumbo v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_35
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    return-void

    :cond_38
    move-object v0, v1

    goto :goto_11

    :cond_3a
    move-object v0, v1

    goto :goto_23
.end method

.method private i(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->y:Ljava/lang/String;

    const-string/jumbo v0, "wrapper_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "wrapper_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_23
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    return-void

    :cond_26
    move-object v0, v1

    goto :goto_11
.end method

.method private j(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "appkey"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "device_id"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "idmd5"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "channel"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_30

    const-string/jumbo v0, "mc"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    iget-wide v0, p0, Lcom/umeng/analytics/a/f;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    const-string/jumbo v0, "req_time"

    iget-wide v1, p0, Lcom/umeng/analytics/a/f;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_40
    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "device_model"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "os"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "os_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    if-eqz v0, :cond_30

    const-string/jumbo v0, "resolution"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "cpu"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3c
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_48

    const-string/jumbo v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_48
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->m:Ljava/lang/String;

    if-eqz v0, :cond_54

    const-string/jumbo v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_54
    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "app_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "version_code"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    return-void
.end method

.method private m(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "sdk_type"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sdk_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private n(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "timezone"

    iget v1, p0, Lcom/umeng/analytics/a/f;->s:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "country"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    if-eqz v0, :cond_20

    const-string/jumbo v0, "language"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    return-void
.end method

.method private o(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "access"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "access_subtype"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "carrier"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    return-void
.end method

.method private p(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->y:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "wrapper_type"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "wrapper_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/common/b;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    return-void
.end method

.method public varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7

    if-eqz p2, :cond_10

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    if-nez v0, :cond_1a

    invoke-static {p1}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_24

    invoke-static {p1}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    :cond_24
    invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/common/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/analytics/i;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_47

    const-string/jumbo v1, "req_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/f;->f:J

    :cond_47
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->c(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->d(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->e(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->f(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->g(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->h(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->i(Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    if-nez v1, :cond_f

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "missing appkey "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return v0

    :cond_f
    iget-object v1, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    if-nez v1, :cond_21

    :cond_17
    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "missing device id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_21
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/umeng/common/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->p:Ljava/lang/String;

    return-void
.end method

.method public varargs b(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/a/f;->a(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->b(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->c(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->d(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->e(Landroid/content/Context;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->j(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->k(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->l(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->m(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->n(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->o(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->p(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    const-string/jumbo v0, "4.6.1"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/a/f;->s:I

    invoke-static {p1}, Lcom/umeng/common/b;->p(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/umeng/common/b;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/common/b;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    return-void
.end method
