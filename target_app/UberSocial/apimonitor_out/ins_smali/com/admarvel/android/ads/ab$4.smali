.class synthetic Lcom/admarvel/android/ads/ab$4;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->values()[Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
:try_start_9
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->SITE_ID_OR_PARTNER_ID_NOT_PRESENT:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_e6
:try_start_14
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e3
:try_start_1f
:goto_1f
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->BOT_USER_AGENT_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e0
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_BANNER_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_dd
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_AD_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_da
:goto_40
:try_start_40
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_USER_AGENT_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_start_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_d7
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->SITE_ID_NOT_PRESENT:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_56
:try_start_56
:try_end_56
.catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_d5
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->PARTNER_ID_NOT_PRESENT:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_end_62
.catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_d3
:goto_62
:try_start_62
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_NETWORK_CONNECTIVITY:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:goto_6e
:try_start_6e
:try_end_6e
.catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_d1
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NETWORK_CONNECTIVITY_DISRUPTED:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0xa
aput v2, v0, v1
:try_end_7a
.catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_cf
:try_start_7a
:goto_7a
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_XML_PARSING_EXCEPTION:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0xb
aput v2, v0, v1
:goto_86
:try_end_86
.catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_cd
:try_start_86
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_IN_PROCESS_EXCEPTION:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0xc
aput v2, v0, v1
:try_start_92
:try_end_92
.catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_cb
:goto_92
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_UNIT_NOT_ABLE_TO_RENDER:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0xd
aput v2, v0, v1
:goto_9e
:try_end_9e
.catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_c9
:try_start_9e
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_MISSING_XML_ELEMENTS:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0xe
aput v2, v0, v1
:try_end_aa
.catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_c7
:try_start_aa
:goto_aa
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_SDK_TYPE_UNSUPPORTED:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0xf
aput v2, v0, v1
:try_end_b6
.catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_c5
:try_start_b6
:goto_b6
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_UNIT_NOT_ABLE_TO_LOAD:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
const/16 v2, 0x10
aput v2, v0, v1
:try_end_c2
.catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3
:goto_c2
return-void
:catch_c3
move-exception v0
goto :goto_c2
:catch_c5
move-exception v0
goto :goto_b6
:catch_c7
move-exception v0
goto :goto_aa
:catch_c9
move-exception v0
goto :goto_9e
:catch_cb
move-exception v0
goto :goto_92
:catch_cd
move-exception v0
goto :goto_86
:catch_cf
move-exception v0
goto :goto_7a
:catch_d1
move-exception v0
goto :goto_6e
:catch_d3
move-exception v0
goto :goto_62
:catch_d5
move-exception v0
goto :goto_56
:catch_d7
move-exception v0
goto/16 :goto_4b
:catch_da
move-exception v0
goto/16 :goto_40
:catch_dd
move-exception v0
goto/16 :goto_35
:catch_e0
move-exception v0
goto/16 :goto_2a
:catch_e3
move-exception v0
goto/16 :goto_1f
:catch_e6
move-exception v0
goto/16 :goto_14
.end method