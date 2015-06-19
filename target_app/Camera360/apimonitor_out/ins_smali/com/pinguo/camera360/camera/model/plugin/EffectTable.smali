.class public Lcom/pinguo/camera360/camera/model/plugin/EffectTable;
.super Ljava/lang/Object;
.source "EffectTable.java"
.field public static final EFFECT_BITHEAD:Ljava/lang/String; = "a52046858eab47618be0ce306543d61a"
.field public static final EFFECT_BW:Ljava/lang/String; = "f6eaa9ee199c862c4e750babd0dd54de"
.field public static final EFFECT_COLORFUL:Ljava/lang/String; = "fe8e571960cb0dba3665b5f7c58f7295"
.field public static final EFFECT_DREAM:Ljava/lang/String; = "fcd5530df7a943931f825a8fce03792e"
.field public static final EFFECT_ENHANCE:Ljava/lang/String; = "842edc51b2b03d7552b3f3d42f5e39c3"
.field public static final EFFECT_FILE_FLEX:Ljava/lang/String; = "a6c7cbeabe2ef1175906a33cd0f24069"
.field public static final EFFECT_FUNNY:Ljava/lang/String; = "c46d8cc4b2d17b28e698a898d910df0e"
.field public static final EFFECT_GHOST:Ljava/lang/String; = "276fa38b035fa3200ba8b10d0ec53ea2"
.field public static final EFFECT_HAZE:Ljava/lang/String; = "5d254454877b55dfef9c731bcf9e17b3"
.field public static final EFFECT_HDR:Ljava/lang/String; = "20ee65cfe99571d9fd706f65c2ce0a2d"
.field public static final EFFECT_LAS:Ljava/lang/String; = "e48e4101dca8819aba7806dcd4206acc"
.field public static final EFFECT_LIGHT_COLOR:Ljava/lang/String; = "d76c0f4354ae1e34cb471e64f6419b56"
.field public static final EFFECT_LOFT:Ljava/lang/String; = "d5988196f538e4d2fa2608efd6ed44d3"
.field public static final EFFECT_LOMO:Ljava/lang/String; = "74adc1cd62d80653ad71cb6e95d9f646"
.field public static final EFFECT_NIGHT:Ljava/lang/String; = "74a09079c499c5a5a616d9d31c4eff1e"
.field public static final EFFECT_OLD:Ljava/lang/String; = "a51be7da18b5a7da2e470c81c3f27953"
.field public static final EFFECT_RETRO:Ljava/lang/String; = "4c37834d86924fb636fed78f17b37ebe"
.field public static final EFFECT_SHIFT_COLOR:Ljava/lang/String; = "83e5582ed76a93a4f100e57bbed3e551"
.field public static final EFFECT_SKETCH:Ljava/lang/String; = "e421d34bffc71a5c50ed00f124df3aa0"
.field public static final EFFECT_SKIN:Ljava/lang/String; = "489b9bee40b961e356b2dee50ab59d22"
.field public static final EFFECT_TIMER:Ljava/lang/String; = "9029a5ba8947ed6ca9d7ca47e0891011"
.field private static sEffectIconPathMap:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "e48e4101dca8819aba7806dcd4206acc"
const-string/jumbo v2, "assets://icon/eft_las.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "5d254454877b55dfef9c731bcf9e17b3"
const-string/jumbo v2, "assets://icon/eft_haze.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "9029a5ba8947ed6ca9d7ca47e0891011"
const-string/jumbo v2, "assets://icon/eft_timer.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "d5988196f538e4d2fa2608efd6ed44d3"
const-string/jumbo v2, "assets://icon/eft_loft.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "a6c7cbeabe2ef1175906a33cd0f24069"
const-string/jumbo v2, "assets://icon/eft_filmflex.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "489b9bee40b961e356b2dee50ab59d22"
const-string/jumbo v2, "assets://icon/eft_skin.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "d76c0f4354ae1e34cb471e64f6419b56"
const-string/jumbo v2, "assets://icon/eft_lightcolor.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "842edc51b2b03d7552b3f3d42f5e39c3"
const-string/jumbo v2, "assets://icon/eft_enhance.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "74adc1cd62d80653ad71cb6e95d9f646"
const-string/jumbo v2, "assets://icon/eft_lomo.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "e421d34bffc71a5c50ed00f124df3aa0"
const-string/jumbo v2, "assets://icon/eft_sketch.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "4c37834d86924fb636fed78f17b37ebe"
const-string/jumbo v2, "assets://icon/eft_retro.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "20ee65cfe99571d9fd706f65c2ce0a2d"
const-string/jumbo v2, "assets://icon/eft_hdr.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "83e5582ed76a93a4f100e57bbed3e551"
const-string/jumbo v2, "assets://icon/eft_shiftcolor.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "fe8e571960cb0dba3665b5f7c58f7295"
const-string/jumbo v2, "assets://icon/eft_colorful.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "f6eaa9ee199c862c4e750babd0dd54de"
const-string/jumbo v2, "assets://icon/eft_bw.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "a51be7da18b5a7da2e470c81c3f27953"
const-string/jumbo v2, "assets://icon/eft_old.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "fcd5530df7a943931f825a8fce03792e"
const-string/jumbo v2, "assets://icon/eft_dream.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "a52046858eab47618be0ce306543d61a"
const-string/jumbo v2, "assets://icon/eft_bighead.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "276fa38b035fa3200ba8b10d0ec53ea2"
const-string/jumbo v2, "assets://icon/eft_ghost.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "c46d8cc4b2d17b28e698a898d910df0e"
const-string/jumbo v2, "assets://icon/eft_funny.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
const-string/jumbo v1, "74a09079c499c5a5a616d9d31c4eff1e"
const-string/jumbo v2, "assets://icon/eft_night.png"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getEffectIconLocalPathByGuid(Ljava/lang/String;)Ljava/lang/String;
.registers 2
sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/EffectTable;->sEffectIconPathMap:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method