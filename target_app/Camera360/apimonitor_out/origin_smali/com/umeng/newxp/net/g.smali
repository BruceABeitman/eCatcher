.class public Lcom/umeng/newxp/net/g;
.super Lcom/umeng/common/net/t;
.source "XpResponse.java"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:J

.field public o:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/newxp/net/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/net/g;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/umeng/common/net/t;-><init>(Lorg/json/JSONObject;)V

    iput v1, p0, Lcom/umeng/newxp/net/g;->e:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/net/g;->i:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/net/g;->j:I

    iput v1, p0, Lcom/umeng/newxp/net/g;->k:I

    iput v1, p0, Lcom/umeng/newxp/net/g;->m:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/newxp/net/g;->n:J

    iput-object p1, p0, Lcom/umeng/newxp/net/g;->o:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/umeng/newxp/net/g;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/umeng/newxp/net/g;->l:Ljava/util/List;

    if-nez p1, :cond_14

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "failed requesting"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    :try_start_14
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/newxp/net/g;->a:I

    iget v1, p0, Lcom/umeng/newxp/net/g;->a:I

    if-ne v2, v1, :cond_153

    const-string/jumbo v1, "promoters"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_153

    const-string/jumbo v1, "promoters"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    :goto_32
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_13f

    :goto_38
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/g;->c:I

    :cond_4a
    const-string/jumbo v0, "show_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string/jumbo v0, "show_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/g;->b:I

    :cond_5c
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/g;->d:Ljava/lang/String;

    :cond_6e
    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/g;->e:I

    :cond_80
    const-string/jumbo v0, "preload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string/jumbo v0, "preload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/g;->g:I

    :cond_92
    const-string/jumbo v0, "landing_image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string/jumbo v0, "landing_image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/g;->h:Ljava/lang/String;

    :cond_a4
    const-string/jumbo v0, "opensize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string/jumbo v0, "opensize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/g;->i:Ljava/lang/String;

    :cond_ca
    const-string/jumbo v0, "more"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string/jumbo v0, "more"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/g;->f:I

    :cond_dc
    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15d

    const-string/jumbo v1, "iconlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15d

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/newxp/net/g;->k:I

    :cond_fe
    :goto_fe
    const-string/jumbo v0, "new_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_161

    const-string/jumbo v0, "new_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/g;->j:I

    :goto_110
    const-string/jumbo v0, "dm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_165

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/newxp/net/g;->m:I

    const-string/jumbo v1, "tm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/newxp/net/g;->n:J
    :try_end_132
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_132} :catch_134

    goto/16 :goto_13

    :catch_134
    move-exception v0

    sget-object v1, Lcom/umeng/newxp/net/g;->p:Ljava/lang/String;

    const-string/jumbo v2, "Parse json error"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_13

    :cond_13f
    :try_start_13f
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/umeng/newxp/Promoter;->getPromoterFromJson(Lorg/json/JSONObject;)Lcom/umeng/newxp/Promoter;

    move-result-object v0

    iget-object v3, p0, Lcom/umeng/newxp/net/g;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_32

    :cond_153
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "failed requesting"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_15d
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/net/g;->k:I

    goto :goto_fe

    :cond_161
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/net/g;->j:I

    goto :goto_110

    :cond_165
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/net/g;->m:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/net/g;->m:I
    :try_end_16b
    .catch Lorg/json/JSONException; {:try_start_13f .. :try_end_16b} :catch_134

    goto/16 :goto_13
.end method
