.class public Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;
.super Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.source "EffectAppendGhost.java"
.field private static final IALPHA:Ljava/lang/String; = "iAlpha"
.field private static final POSXBL:Ljava/lang/String; = "posXbl"
.field private static final POSYBL:Ljava/lang/String; = "posYbl"
.field private static final ZOOMBL:Ljava/lang/String; = "zoomBL"
.field private iAlpha:I
.field private posXbl:I
.field private posYbl:I
.field private zoomBL:I
.method public constructor <init>()V
.registers 2
const/16 v0, 0x32
invoke-direct {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posXbl:I
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posYbl:I
const/16 v0, 0x28
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->zoomBL:I
const/16 v0, 0x1e
iput v0, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->iAlpha:I
return-void
.end method
.method public static build(Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;
.registers 9
const/16 v7, 0x1e
const/16 v6, 0x14
const/16 v5, 0x64
new-instance v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;-><init>()V
if-nez p0, :cond_2f
new-instance v3, Ljava/util/Random;
invoke-direct {v3}, Ljava/util/Random;-><init>()V
invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posXbl:I
invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posYbl:I
invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I
move-result v4
add-int/lit8 v4, v4, 0x14
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->zoomBL:I
invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I
move-result v4
add-int/lit8 v4, v4, 0x14
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->iAlpha:I
:goto_2e
return-object v0
:cond_2f
:try_start_2f
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "posXbl"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posXbl:I
const-string/jumbo v4, "posYbl"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posYbl:I
const-string/jumbo v4, "zoomBL"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->zoomBL:I
const-string/jumbo v4, "iAlpha"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->iAlpha:I
:try_end_58
.catch Lorg/json/JSONException; {:try_start_2f .. :try_end_58} :catch_59
goto :goto_2e
:catch_59
move-exception v1
new-instance v3, Ljava/util/Random;
invoke-direct {v3}, Ljava/util/Random;-><init>()V
invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posXbl:I
invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I
move-result v4
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posYbl:I
invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I
move-result v4
add-int/lit8 v4, v4, 0x14
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->zoomBL:I
invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I
move-result v4
add-int/lit8 v4, v4, 0x14
iput v4, v0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->iAlpha:I
goto :goto_2e
.end method
.method public getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
.registers 9
const/4 v3, 0x0
if-nez p3, :cond_4
:cond_3
:goto_3
return-object v3
:cond_4
if-nez p1, :cond_3
const/4 v2, 0x0
invoke-virtual {p3}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getTexture()Lcom/pinguo/camera360/effect/model/entity/Texture;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/effect/model/entity/Texture;->isLegal(Lcom/pinguo/camera360/effect/model/entity/Texture;)Z
move-result v4
if-eqz v4, :cond_1e
invoke-static {v1}, Lcom/pinguo/camera360/photoedit/TextureManager;->getTexturePath(Lcom/pinguo/camera360/effect/model/entity/Texture;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v4, ".png"
invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_3
:cond_1e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "direct="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v3, 0x0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v3, ";posxbl="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posXbl:I
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v3, ";posybl="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posYbl:I
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v3, ";zoombl="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->zoomBL:I
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v3, ";alpha="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->iAlpha:I
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v3, ";pngfile="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_3
.end method
.method public makeCopy()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.registers 3
:try_start_0
invoke-super {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;
:goto_6
:try_end_6
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7
return-object v1
:catch_7
move-exception v0
const/4 v1, 0x0
invoke-static {v1}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->build(Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;
move-result-object v1
goto :goto_6
.end method
.method public toJson()Ljava/lang/String;
.registers 5
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string/jumbo v2, "posXbl"
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posXbl:I
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v2, "posYbl"
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->posYbl:I
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v2, "zoomBL"
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->zoomBL:I
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v2, "iAlpha"
iget v3, p0, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->iAlpha:I
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
:try_end_28
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_2a
move-result-object v2
:goto_29
return-object v2
:catch_2a
move-exception v0
const/4 v2, 0x0
goto :goto_29
.end method