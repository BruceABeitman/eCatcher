.class public Lcom/pinguo/camera360/save/ImageSaveStrategyFactory;
.super Ljava/lang/Object;
.source "ImageSaveStrategyFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getImageSaveStrategy(I)Lcom/pinguo/camera360/save/IImageSaveStrategy;
.registers 4
const-string/jumbo v0, "ImageSaveStrategyFactory"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "getImageSaveStrategy : pictureType = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sparse-switch p0, :sswitch_data_5c
new-instance v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;-><init>()V
:goto_1e
return-object v0
:sswitch_1f
new-instance v0, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/EffectImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_25
new-instance v0, Lcom/pinguo/camera360/save/strategy/OriginalImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/OriginalImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_2b
new-instance v0, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/SceneImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_31
new-instance v0, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/SoundImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_37
new-instance v0, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/PuzzleTemplateImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_3d
new-instance v0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_43
new-instance v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_49
new-instance v0, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/VideoImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_4f
new-instance v0, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/IDPhotoImageSaveStrategy;-><init>()V
goto :goto_1e
:sswitch_55
new-instance v0, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;
invoke-direct {v0}, Lcom/pinguo/camera360/save/strategy/SonyImageSaveStrategy;-><init>()V
goto :goto_1e
nop
:sswitch_data_5c
.sparse-switch
0x0 -> :sswitch_1f
0x1 -> :sswitch_25
0x2 -> :sswitch_31
0x3 -> :sswitch_2b
0x5 -> :sswitch_49
0x6 -> :sswitch_55
0x65 -> :sswitch_37
0x66 -> :sswitch_37
0xc9 -> :sswitch_43
0xca -> :sswitch_3d
0xcc -> :sswitch_4f
.end sparse-switch
.end method