.class public Lus/pinguo/androidsdk/pgedit/PGEditCountManager;
.super Ljava/lang/Object;
.source "PGEditCountManager.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static countAdjustItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->name()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editAdjustmentClick(Ljava/lang/String;)V
return-void
.end method
.method static countBackBottomClick()V
.registers 0
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editLayFirstCancel()V
return-void
.end method
.method static countBackFirstForKeyBack()V
.registers 1
const-string/jumbo v0, "Back"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editBackLast(Ljava/lang/String;)V
return-void
.end method
.method static countBackFirstForQuit()V
.registers 1
const-string/jumbo v0, "Cancel"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editBackLast(Ljava/lang/String;)V
return-void
.end method
.method static countCropItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->name()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editCropClick(Ljava/lang/String;)V
return-void
.end method
.method static countEffectItemClick(Ljava/lang/String;)V
.registers 2
if-eqz p0, :cond_e
const-string/jumbo v0, ""
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_e
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editChildEffectClick(Ljava/lang/String;)V
:cond_e
return-void
.end method
.method static countMakePhotoEffects(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;)V
.registers 6
if-eqz p1, :cond_9
array-length v2, p1
new-array v1, v2, [Ljava/lang/String;
const/4 v0, 0x0
:goto_6
array-length v2, v1
if-lt v0, v2, :cond_a
:cond_9
return-void
:cond_a
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->name()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
aget-object v3, p1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
aget-object v2, v1, v0
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editSaveNestUse(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method static countMenuClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;)V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->name()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editBtnClick(Ljava/lang/String;)V
return-void
.end method
.method static countReplaceEffectClick()V
.registers 0
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editEnterEffectLay()V
return-void
.end method
.method static countRotateItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->name()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editRotateClick(Ljava/lang/String;)V
return-void
.end method
.method static countSavePhotoEffects(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;)V
.registers 6
if-eqz p1, :cond_9
array-length v2, p1
new-array v1, v2, [Ljava/lang/String;
const/4 v0, 0x0
:goto_6
array-length v2, v1
if-lt v0, v2, :cond_a
:cond_9
return-void
:cond_a
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->name()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
aget-object v3, p1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
aget-object v2, v1, v0
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editSaveLastUse(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method static countTextureItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->name()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editTextureClick(Ljava/lang/String;)V
return-void
.end method
.method static countTiltShiftItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->name()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;->editTiltShiftClick(Ljava/lang/String;)V
return-void
.end method