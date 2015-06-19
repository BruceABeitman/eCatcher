.class public Lcom/pinguo/camera360/test/PhotoEditTestActivity;
.super Landroid/app/Activity;
.source "PhotoEditTestActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
.field private static final TAG:Ljava/lang/String;
.field private btn:Landroid/widget/Button;
.field private effectList:Ljava/util/List;
.field private gpu:Z
.field private index:I
.field private maxIndex:I
.field private orgData:[B
.field private ori:I
.field private queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
.field private running:Z
.field private sdcardPath:Ljava/lang/String;
.field private textView:Landroid/widget/TextView;
.field private wakeLock:Landroid/os/PowerManager$WakeLock;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectList:Ljava/util/List;
iput-object v1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->orgData:[B
iput-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->running:Z
iput v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->ori:I
iput-object v1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->btn:Landroid/widget/Button;
iput v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
iput v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->maxIndex:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->gpu:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->btn:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
return-object v0
.end method
.method private getIndex(I)Ljava/lang/String;
.registers 4
const/16 v0, 0xa
if-ge p1, v0, :cond_15
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "00"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_14
return-object v0
:cond_15
const/16 v0, 0x64
if-ge p1, v0, :cond_2a
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "0"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_2a
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
.end method
.method private initEffect()V
.registers 8
iget-object v4, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectList:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->clear()V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_13
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_1a
return-void
:cond_1a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v3, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_26
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_13
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v6, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectList:Ljava/util/List;
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_26
.end method
.method public effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.registers 6
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;-><init>(Lcom/pinguo/camera360/test/PhotoEditTestActivity;Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V
iget v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
iget v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
iget v1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->maxIndex:I
if-lt v0, v1, :cond_2e
iput v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
iget-boolean v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->gpu:Z
if-eqz v0, :cond_23
iput-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->gpu:Z
iget-boolean v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->gpu:Z
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->make(Z)V
:goto_22
return-void
:cond_23
iput-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->running:Z
new-instance v0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$3;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity$3;-><init>(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_22
:cond_2e
iget-boolean v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->gpu:Z
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->make(Z)V
goto :goto_22
.end method
.method public effectStart(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 2
return-void
.end method
.method public make(Z)V
.registers 8
const/4 v4, 0x0
const/4 v5, 0x0
iget-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->running:Z
if-nez v2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectList:Ljava/util/List;
iget v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
if-eqz p1, :cond_99
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z
move-result v2
if-eqz v2, :cond_99
new-instance v1, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/test_data/effect/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
invoke-direct {p0, v3}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->getIndex(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "_GPU_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectList:Ljava/util/List;
iget v4, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectPath(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/test_data/000_org.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->ori:I
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
if-eqz v2, :cond_6
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->orgData:[B
invoke-virtual {v2, v1, v3, p0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->addImage(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
goto/16 :goto_6
:cond_99
if-nez p1, :cond_129
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveCpuCmd()Z
move-result v2
if-eqz v2, :cond_129
new-instance v1, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-static {v2, v4}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/test_data/effect/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
invoke-direct {p0, v3}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->getIndex(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "_CPU_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectList:Ljava/util/List;
iget v4, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectPath(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/test_data/000_org.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->ori:I
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
invoke-virtual {v1, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
if-eqz v2, :cond_6
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->orgData:[B
invoke-virtual {v2, v1, v3, p0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->addImage(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
goto/16 :goto_6
:cond_129
iget v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
iget v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
iget v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->maxIndex:I
if-lt v2, v3, :cond_14b
iput v5, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->index:I
if-eqz p1, :cond_13f
const/4 p1, 0x0
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->make(Z)V
goto/16 :goto_6
:cond_13f
iput-boolean v5, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->running:Z
new-instance v2, Lcom/pinguo/camera360/test/PhotoEditTestActivity$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity$1;-><init>(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)V
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V
goto/16 :goto_6
:cond_14b
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->make(Z)V
goto/16 :goto_6
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/test/PhotoEditTestActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->orgData:[B
if-nez v2, :cond_6
:goto_5
const-string v1, " - Lcom/pinguo/camera360/test/PhotoEditTestActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_6
iget-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->running:Z
if-eqz v2, :cond_d
iput-boolean v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->running:Z
goto :goto_5
:cond_d
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v2
packed-switch v2, :pswitch_data_66
goto :goto_5
:pswitch_15
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->running:Z
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->btn:Landroid/widget/Button;
invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v2
const-string/jumbo v3, "key_front_image_version"
const/16 v4, 0x23
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v2
const-string/jumbo v3, "key_front_image_crc32"
const-string/jumbo v4, ""
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Engin:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " |CRC32:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\n\u5f00\u59cb\u6d4b\u8bd5......\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->gpu:Z
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->make(Z)V
goto :goto_5
nop
:pswitch_data_66
.packed-switch 0x7f0a052a
:pswitch_15
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/test/PhotoEditTestActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v3, 0x7f0300e6
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->setContentView(I)V
const v3, 0x7f0a0529
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
const v3, 0x7f0a052a
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
iput-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->btn:Landroid/widget/Button;
const-string/jumbo v3, "power"
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/PowerManager;
const/4 v3, 0x6
const-string/jumbo v4, "cn"
invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
invoke-static {p0}, Lcom/pinguo/lib/UIContants;->loadUIContants(Landroid/app/Activity;)V
invoke-static {}, Lcom/pinguo/lib/util/SDCardUtils;->getSDCardPath()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
invoke-direct {p0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->initEffect()V
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->maxIndex:I
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->btn:Landroid/widget/Button;
invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/test_data"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/effect"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
:try_start_80
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/000_org.jpg"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->orgData:[B
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->orgData:[B
invoke-static {v3}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->ori:I
:goto_a2
:try_end_a2
.catch Ljava/io/IOException; {:try_start_80 .. :try_end_a2} :catch_aa
new-instance v3, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-direct {v3}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;-><init>()V
iput-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
const-string v1, " - Lcom/pinguo/camera360/test/PhotoEditTestActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_aa
move-exception v0
const/4 v3, 0x0
iput-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->orgData:[B
iget-object v3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
const-string/jumbo v4, "\u627e\u4e0d\u5230\u6d4b\u8bd5\u7167\u7247\u3010sdcard/test_data/000_org.jpg\u3011\n"
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_a2
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/test/PhotoEditTestActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/log/LogWriter;->stopLog()V
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->finish()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-super {p0}, Landroid/app/Activity;->onPause()V
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
const-string v1, " - Lcom/pinguo/camera360/test/PhotoEditTestActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/test/PhotoEditTestActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->sdcardPath:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/test_data"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/log/LogWriter;->startLog(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->queueThread:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->start()V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
const-string v1, " - Lcom/pinguo/camera360/test/PhotoEditTestActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method