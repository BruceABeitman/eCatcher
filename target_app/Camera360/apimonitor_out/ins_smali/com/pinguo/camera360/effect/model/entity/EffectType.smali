.class public Lcom/pinguo/camera360/effect/model/entity/EffectType;
.super Lcom/pinguo/lib/util/LocaleSupport;
.source "EffectType.java"
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.field public static final EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
.field public description:Ljava/lang/String;
.field public effectNames:[Ljava/lang/String;
.field public effects:Ljava/util/List;
.field public icon:Ljava/lang/String;
.field public isNew:I
.field public key:Ljava/lang/String;
.field public locale:Ljava/lang/String;
.field public name:Ljava/lang/String;
.field public optime:J
.field public resText1:Ljava/lang/String;
.field public tag:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-direct {v0}, Lcom/pinguo/camera360/effect/model/entity/EffectType;-><init>()V
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
const-string/jumbo v1, "C360_None"
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
const-wide v1, 0x7fffffffffffffffL
iput-wide v1, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
const/4 v1, 0x0
iput v1, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->isNew:I
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
if-nez v0, :cond_2b
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
:cond_2b
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
sget-object v1, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/util/LocaleSupport;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->locale:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->tag:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->description:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->icon:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
return-void
.end method
.method public addEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
:cond_b
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public clone()Lcom/pinguo/camera360/effect/model/entity/EffectType;
.registers 5
const/4 v2, 0x0
:try_start_1
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v3
move-object v0, v3
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;
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
new-instance v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-direct {v2}, Lcom/pinguo/camera360/effect/model/entity/EffectType;-><init>()V
goto :goto_b
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->clone()Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v0
return-object v0
.end method
.method public compareTo(Lcom/pinguo/camera360/effect/model/entity/EffectType;)I
.registers 10
const-wide/16 v6, 0x0
iget-wide v2, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
iget-wide v4, p1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
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
const/4 v2, 0x0
goto :goto_d
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->compareTo(Lcom/pinguo/camera360/effect/model/entity/EffectType;)I
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
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget v3, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->isNew:I
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->isNew:I
if-eq v3, v4, :cond_1e
move v1, v2
goto :goto_4
:cond_1e
iget-wide v3, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
iget-wide v5, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
cmp-long v3, v3, v5
if-eqz v3, :cond_28
move v1, v2
goto :goto_4
:cond_28
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_34
move v1, v2
goto :goto_4
:cond_34
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->locale:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->locale:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_40
move v1, v2
goto :goto_4
:cond_40
iget-object v3, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public getLocaleObject(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.registers 14
const/4 v11, 0x0
invoke-static {p1}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->getIndex(Ljava/util/Locale;)I
move-result v3
invoke-static {p1}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
iget-object v9, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
const-string/jumbo v10, "\n"
invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v6
iget-object v5, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
array-length v9, v6
if-lez v9, :cond_1c
array-length v9, v6
if-ge v3, v9, :cond_53
aget-object v5, v6, v3
:goto_1c
:cond_1c
iget-object v9, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->tag:Ljava/lang/String;
const-string/jumbo v10, "\n"
invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v8
iget-object v7, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->tag:Ljava/lang/String;
array-length v9, v8
if-lez v9, :cond_2f
array-length v9, v8
if-ge v3, v9, :cond_56
aget-object v7, v8, v3
:cond_2f
:goto_2f
iget-object v9, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->description:Ljava/lang/String;
const-string/jumbo v10, "\n"
invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->description:Ljava/lang/String;
array-length v9, v0
if-lez v9, :cond_42
array-length v9, v0
if-ge v3, v9, :cond_59
aget-object v1, v0, v3
:goto_42
:cond_42
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->clone()Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v2
iput-object v4, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->locale:Ljava/lang/String;
iput-object v5, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
iput-object v7, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->tag:Ljava/lang/String;
iput-object v1, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->description:Ljava/lang/String;
iget-object v9, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
iput-object v9, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
return-object v2
:cond_53
aget-object v5, v6, v11
goto :goto_1c
:cond_56
aget-object v7, v8, v11
goto :goto_2f
:cond_59
aget-object v1, v0, v11
goto :goto_42
.end method
.method public bridge synthetic getLocaleObject(Ljava/util/Locale;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->getLocaleObject(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v0
return-object v0
.end method
.method public getRequirementType()Lcom/pinguo/camera360/effect/model/entity/RequirementType;
.registers 7
iget-object v4, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
if-eqz v4, :cond_13
const-string/jumbo v4, ""
iget-object v5, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_19
:cond_13
new-instance v2, Lcom/pinguo/camera360/effect/model/entity/RequirementType;
invoke-direct {v2}, Lcom/pinguo/camera360/effect/model/entity/RequirementType;-><init>()V
:cond_18
:goto_18
return-object v2
:cond_19
:try_start_19
new-instance v4, Lcom/pinguo/camera360/effect/model/entity/EffectType$1;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/effect/model/entity/EffectType$1;-><init>(Lcom/pinguo/camera360/effect/model/entity/EffectType;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/effect/model/entity/EffectType$1;->getType()Ljava/lang/reflect/Type;
move-result-object v3
new-instance v1, Lcom/google/gson/Gson;
invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V
iget-object v4, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
invoke-virtual {v1, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/RequirementType;
if-nez v2, :cond_18
new-instance v2, Lcom/pinguo/camera360/effect/model/entity/RequirementType;
invoke-direct {v2}, Lcom/pinguo/camera360/effect/model/entity/RequirementType;-><init>()V
:try_end_36
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_37
goto :goto_18
:catch_37
move-exception v0
new-instance v2, Lcom/pinguo/camera360/effect/model/entity/RequirementType;
invoke-direct {v2}, Lcom/pinguo/camera360/effect/model/entity/RequirementType;-><init>()V
goto :goto_18
.end method
.method public hashCode()I
.registers 8
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->locale:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
iget-wide v4, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
const/16 v6, 0x20
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->isNew:I
add-int v0, v1, v2
return v0
.end method