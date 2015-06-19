.class public Lcom/pinguo/camera360/effect/model/entity/Effect;
.super Lcom/pinguo/lib/util/LocaleSupport;
.source "Effect.java"
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.field public static final EFFECT_EDIT:Lcom/pinguo/camera360/effect/model/entity/Effect;
.field public static final EFFECT_EDIT_ORG:Lcom/pinguo/camera360/effect/model/entity/Effect;
.field public static final EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
.field private static final TAG:Ljava/lang/String;
.field public cpuCmd:Ljava/lang/String;
.field public description:Ljava/lang/String;
.field public gpuCmdStr:Ljava/lang/String;
.field public icon:Ljava/lang/String;
.field public idxInPack:I
.field public idxInType:I
.field public installTime:J
.field public installation:I
.field public isNew:I
.field public isTry:Z
.field public key:Ljava/lang/String;
.field public locale:Ljava/lang/String;
.field public name:Ljava/lang/String;
.field public packKey:Ljava/lang/String;
.field public preCmdStr:Ljava/lang/String;
.field public realRender:I
.field public requirementStr:Ljava/lang/String;
.field public textureStr:Ljava/lang/String;
.field public typeKey:Ljava/lang/String;
.field public version:I
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
const-class v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->TAG:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-direct {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;-><init>()V
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v1, "C360_None_Default"
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v1, "normal"
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v1, "Normal"
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v1, "Normal"
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->realRender:I
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
sget-object v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v1, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iput v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installation:I
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
const-wide v1, 0x7fffffffffffffffL
iput-wide v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
new-instance v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-direct {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;-><init>()V
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_EDIT:Lcom/pinguo/camera360/effect/model/entity/Effect;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_EDIT:Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v1, "C360_Edit"
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-direct {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;-><init>()V
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_EDIT_ORG:Lcom/pinguo/camera360/effect/model/entity/Effect;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_EDIT_ORG:Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v1, "C360_Edit_Org"
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/util/LocaleSupport;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isTry:Z
return-void
.end method
.method protected clone()Ljava/lang/Object;
.registers 5
const/4 v2, 0x0
:try_start_1
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v3
move-object v0, v3
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
move-object v2, v0
:try_end_9
.catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_c
:goto_9
if-eqz v2, :cond_11
:goto_b
return-object v2
:catch_c
move-exception v1
invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
goto :goto_9
:cond_11
new-instance v2, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-direct {v2}, Lcom/pinguo/camera360/effect/model/entity/Effect;-><init>()V
goto :goto_b
.end method
.method public compareTo(Lcom/pinguo/camera360/effect/model/entity/Effect;)I
.registers 10
const-wide/16 v6, 0x0
iget-wide v2, p1, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
iget-wide v4, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
sub-long v0, v2, v4
cmp-long v2, v0, v6
if-gez v2, :cond_e
const/4 v2, -0x1
:goto_d
return v2
:cond_e
cmp-long v2, v0, v6
if-lez v2, :cond_14
const/4 v2, 0x1
goto :goto_d
:cond_14
iget v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
iget v3, p1, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
sub-int/2addr v2, v3
goto :goto_d
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->compareTo(Lcom/pinguo/camera360/effect/model/entity/Effect;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
if-eq v3, v4, :cond_1e
move v1, v2
goto :goto_4
:cond_1e
iget v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
if-eq v3, v4, :cond_26
move v1, v2
goto :goto_4
:cond_26
iget-wide v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
iget-wide v5, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
cmp-long v3, v3, v5
if-eqz v3, :cond_30
move v1, v2
goto :goto_4
:cond_30
iget v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installation:I
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installation:I
if-eq v3, v4, :cond_38
move v1, v2
goto :goto_4
:cond_38
iget v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
if-eq v3, v4, :cond_40
move v1, v2
goto :goto_4
:cond_40
iget-boolean v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isTry:Z
iget-boolean v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isTry:Z
if-eq v3, v4, :cond_48
move v1, v2
goto :goto_4
:cond_48
iget v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
if-eq v3, v4, :cond_50
move v1, v2
goto :goto_4
:cond_50
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_5c
move v1, v2
goto :goto_4
:cond_5c
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_68
move v1, v2
goto :goto_4
:cond_68
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_74
move v1, v2
goto :goto_4
:cond_74
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_80
move v1, v2
goto :goto_4
:cond_80
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto/16 :goto_4
.end method
.method public getGpuCmds()[Ljava/lang/String;
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-eqz v2, :cond_c
const/4 v2, 0x0
new-array v0, v2, [Ljava/lang/String;
:cond_b
return-object v0
:cond_c
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
const-string/jumbo v3, "\\$"
invoke-static {v2, v3}, Lcom/pinguo/lib/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
:goto_16
array-length v2, v0
if-ge v1, v2, :cond_b
aget-object v2, v0, v1
invoke-static {v2}, Lcom/pinguo/lib/util/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_16
.end method
.method public getLocaleObject(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/entity/Effect;
.registers 12
const/4 v9, 0x0
invoke-static {p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getIndex(Ljava/util/Locale;)I
move-result v3
invoke-static {p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
iget-object v7, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
const-string/jumbo v8, "\n"
invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v6
iget-object v5, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
if-eqz v6, :cond_1e
array-length v7, v6
if-lez v7, :cond_1e
array-length v7, v6
if-ge v3, v7, :cond_40
aget-object v5, v6, v3
:goto_1e
:cond_1e
iget-object v7, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
const-string/jumbo v8, "\n"
invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
if-eqz v0, :cond_33
array-length v7, v0
if-lez v7, :cond_33
array-length v7, v0
if-ge v3, v7, :cond_43
aget-object v1, v0, v3
:goto_33
:cond_33
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/Effect;
iput-object v4, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
iput-object v5, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
iput-object v1, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
return-object v2
:cond_40
aget-object v5, v6, v9
goto :goto_1e
:cond_43
aget-object v1, v0, v9
goto :goto_33
.end method
.method public bridge synthetic getLocaleObject(Ljava/util/Locale;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getLocaleObject(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v0
return-object v0
.end method
.method public getPreCmds()[Ljava/lang/String;
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-eqz v2, :cond_c
const/4 v2, 0x0
new-array v1, v2, [Ljava/lang/String;
:cond_b
return-object v1
:cond_c
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
const-string/jumbo v3, "\\$"
invoke-static {v2, v3}, Lcom/pinguo/lib/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
:goto_16
array-length v2, v1
if-ge v0, v2, :cond_b
aget-object v2, v1, v0
invoke-static {v2}, Lcom/pinguo/lib/util/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_16
.end method
.method public getRequirement()Lcom/pinguo/camera360/effect/model/entity/Requirement;
.registers 9
iget-object v5, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
move-result v5
if-eqz v5, :cond_e
new-instance v3, Lcom/pinguo/camera360/effect/model/entity/Requirement;
invoke-direct {v3}, Lcom/pinguo/camera360/effect/model/entity/Requirement;-><init>()V
:cond_d
:goto_d
return-object v3
:cond_e
const/4 v3, 0x0
:try_start_f
new-instance v2, Lcom/google/gson/Gson;
invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
new-instance v5, Lcom/pinguo/camera360/effect/model/entity/Effect$2;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/effect/model/entity/Effect$2;-><init>(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
invoke-virtual {v5}, Lcom/pinguo/camera360/effect/model/entity/Effect$2;->getType()Ljava/lang/reflect/Type;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
invoke-virtual {v2, v5, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v5
move-object v0, v5
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Requirement;
move-object v3, v0
:goto_27
:try_end_27
.catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_27} :catch_2f
if-nez v3, :cond_d
new-instance v3, Lcom/pinguo/camera360/effect/model/entity/Requirement;
invoke-direct {v3}, Lcom/pinguo/camera360/effect/model/entity/Requirement;-><init>()V
goto :goto_d
:catch_2f
move-exception v1
sget-object v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Construct Requirement object with requirement string fail! string: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v7, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->TAG:Ljava/lang/String;
invoke-static {v5, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_27
.end method
.method public getTexture()Lcom/pinguo/camera360/effect/model/entity/Texture;
.registers 10
const/4 v3, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-eqz v6, :cond_b
move-object v4, v3
:goto_a
return-object v4
:cond_b
:try_start_b
new-instance v2, Lcom/google/gson/Gson;
invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
new-instance v6, Lcom/pinguo/camera360/effect/model/entity/Effect$1;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/effect/model/entity/Effect$1;-><init>(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
invoke-virtual {v6}, Lcom/pinguo/camera360/effect/model/entity/Effect$1;->getType()Ljava/lang/reflect/Type;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
invoke-virtual {v2, v6, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v6
move-object v0, v6
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Texture;
move-object v3, v0
if-eqz v3, :cond_5d
iget-boolean v6, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isTry:Z
if-eqz v6, :cond_5f
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getTryInstalledDir()Ljava/io/File;
move-result-object v7
invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "texture"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, v3, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, v3, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;
:goto_5d
:cond_5d
move-object v4, v3
goto :goto_a
:cond_5f
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstalledDir()Ljava/io/File;
move-result-object v7
invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "texture"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, v3, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, v3, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;
:try_end_93
.catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_93} :catch_94
goto :goto_5d
:catch_94
move-exception v1
sget-object v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Construct Texture object with texture string fail! string: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->TAG:Ljava/lang/String;
invoke-static {v6, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5d
.end method
.method public hashCode()I
.registers 8
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installation:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
iget-wide v4, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
const/16 v6, 0x20
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
add-int v0, v1, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v1, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isTry:Z
if-eqz v1, :cond_63
const/4 v1, 0x1
:goto_60
add-int v0, v2, v1
return v0
:cond_63
const/4 v1, 0x0
goto :goto_60
.end method
.method public haveCpuCmd()Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
if-eqz v0, :cond_f
const-string/jumbo v0, ""
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
:cond_f
const/4 v0, 0x0
:goto_10
return v0
:cond_11
const/4 v0, 0x1
goto :goto_10
.end method
.method public haveGPUCmd()Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
if-eqz v0, :cond_f
const-string/jumbo v0, ""
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
:cond_f
const/4 v0, 0x0
:goto_10
return v0
:cond_11
const/4 v0, 0x1
goto :goto_10
.end method
.method public havePreCmd()Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->realRender:I
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
if-eqz v0, :cond_15
const-string/jumbo v0, ""
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method