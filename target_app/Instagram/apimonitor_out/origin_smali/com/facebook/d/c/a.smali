.class public final Lcom/facebook/d/c/a;
.super Ljava/lang/Object;
.source "FBLocaleMapper.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "af"

    const-string v2, "af_ZA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ar"

    const-string v2, "ar_AR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "az"

    const-string v2, "az_AZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "be"

    const-string v2, "be_BY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "bg"

    const-string v2, "bg_BG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "bn"

    const-string v2, "bn_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "bs"

    const-string v2, "bs_BA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ca"

    const-string v2, "ca_ES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ck"

    const-string v2, "ck_US"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "cs"

    const-string v2, "cs_CZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "cy"

    const-string v2, "cy_GB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "da"

    const-string v2, "da_DK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "de"

    const-string v2, "de_DE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "el"

    const-string v2, "el_GR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "eo"

    const-string v2, "eo_EO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "et"

    const-string v2, "et_EE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "es"

    const-string v2, "es_LA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "eu"

    const-string v2, "eu_ES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "fa"

    const-string v2, "fa_IR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "fi"

    const-string v2, "fi_FI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "fo"

    const-string v2, "fo_FO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "fr_FR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "fy"

    const-string v2, "fy_NL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ga"

    const-string v2, "ga_IE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "gl"

    const-string v2, "gl_ES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "gu"

    const-string v2, "gu_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "he"

    const-string v2, "he_IL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "hi"

    const-string v2, "hi_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "hr"

    const-string v2, "hr_HR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "hu"

    const-string v2, "hu_HU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "hy"

    const-string v2, "hy_AM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "id_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "in"

    const-string v2, "id_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "is"

    const-string v2, "is_IS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "it"

    const-string v2, "it_IT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "iw"

    const-string v2, "he_IL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ja"

    const-string v2, "ja_JP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ka"

    const-string v2, "ka_GE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "km"

    const-string v2, "km_KH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "kn"

    const-string v2, "kn_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ko"

    const-string v2, "ko_KR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ku"

    const-string v2, "ku_TR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "la"

    const-string v2, "la_VA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "lv"

    const-string v2, "lv_LV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "mk"

    const-string v2, "mk_MK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ml"

    const-string v2, "ml_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "mr"

    const-string v2, "mr_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ms"

    const-string v2, "ms_MY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "nb"

    const-string v2, "nb_NO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ne"

    const-string v2, "ne_NP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "nl"

    const-string v2, "nl_NL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "nn"

    const-string v2, "nn_NO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "pa"

    const-string v2, "pa_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "pl"

    const-string v2, "pl_PL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ps"

    const-string v2, "ps_AF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "pt"

    const-string v2, "pt_BR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ro"

    const-string v2, "ro_RO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ru"

    const-string v2, "ru_RU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "sk"

    const-string v2, "sk_SK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "sl"

    const-string v2, "sl_SI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "sq"

    const-string v2, "sq_AL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "sr"

    const-string v2, "sr_RS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "sv"

    const-string v2, "sv_SE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "sw"

    const-string v2, "sw_KE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "ta"

    const-string v2, "ta_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "te"

    const-string v2, "te_IN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "th"

    const-string v2, "th_TH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "tl"

    const-string v2, "tl_PH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "tr"

    const-string v2, "tr_TR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "uk"

    const-string v2, "uk_UA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "vi"

    const-string v2, "vi_VN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    const-string v1, "zh"

    const-string v2, "zh_CN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    const-string v1, "es_ES"

    const-string v2, "es_ES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    const-string v1, "fr_CA"

    const-string v2, "fr_CA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    const-string v1, "pt_PT"

    const-string v2, "pt_PT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    const-string v1, "zh_TW"

    const-string v2, "zh_TW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    const-string v1, "zh_HK"

    const-string v2, "zh_HK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    const-string v1, "fb_HA"

    const-string v2, "fb_HA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/facebook/d/c/a;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1a

    sget-object v0, Lcom/facebook/d/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1a
    if-nez v0, :cond_1e

    const-string v0, "en_US"

    :cond_1e
    return-object v0
.end method
