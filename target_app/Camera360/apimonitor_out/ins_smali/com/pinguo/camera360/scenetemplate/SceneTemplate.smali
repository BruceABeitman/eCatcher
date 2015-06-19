.class public Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.super Ljava/lang/Object;
.source "SceneTemplate.java"
.field private addedDate:Ljava/util/Date;
.field private childId:Ljava/lang/String;
.field private closed:Ljava/lang/String;
.field private detailLogo:Ljava/lang/String;
.field private downloadCount:Ljava/lang/String;
.field private downloaded:Ljava/lang/String;
.field private id:J
.field private isHot:Ljava/lang/String;
.field private isNew:Ljava/lang/String;
.field private key:Ljava/lang/String;
.field private locationType:I
.field private needPay:Ljava/lang/String;
.field private sceneJpgFile:Ljava/lang/String;
.field private sceneJpgFileLength:J
.field private scenePngFile:Ljava/lang/String;
.field private scenePngFileLength:J
.field private sceneUsedCount:I
.field private sceneXmlFile:Ljava/lang/String;
.field private sceneXmlFileLength:J
.field private templateId:Ljava/lang/String;
.field private title:Ljava/lang/String;
.field private valid:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(J)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->id:J
return-void
.end method
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;)V
.registers 30
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->id:J
iput-object p3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
iput-object p4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->childId:Ljava/lang/String;
iput-object p5, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->templateId:Ljava/lang/String;
iput-object p6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->title:Ljava/lang/String;
iput-object p7, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->detailLogo:Ljava/lang/String;
iput-object p8, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->downloadCount:Ljava/lang/String;
iput-object p9, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->needPay:Ljava/lang/String;
iput-object p10, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->isHot:Ljava/lang/String;
iput-object p11, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->downloaded:Ljava/lang/String;
iput-object p12, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneXmlFile:Ljava/lang/String;
move-wide/from16 v0, p13
iput-wide v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneXmlFileLength:J
move-object/from16 v0, p15
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneJpgFile:Ljava/lang/String;
move-wide/from16 v0, p16
iput-wide v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneJpgFileLength:J
move-object/from16 v0, p18
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->scenePngFile:Ljava/lang/String;
move-wide/from16 v0, p19
iput-wide v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->scenePngFileLength:J
move/from16 v0, p21
iput v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneUsedCount:I
move/from16 v0, p22
iput v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->locationType:I
move-object/from16 v0, p23
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->isNew:Ljava/lang/String;
move-object/from16 v0, p24
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->closed:Ljava/lang/String;
move-object/from16 v0, p25
iput-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->addedDate:Ljava/util/Date;
invoke-virtual/range {p26 .. p26}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
iput-boolean v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->valid:Z
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-nez p1, :cond_9
move v1, v2
goto :goto_4
:cond_9
instance-of v3, p1, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
if-nez v3, :cond_f
move v1, v2
goto :goto_4
:cond_f
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
if-nez v3, :cond_1c
iget-object v3, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
if-eqz v3, :cond_4
move v1, v2
goto :goto_4
:cond_1c
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public getAddedDate()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->addedDate:Ljava/util/Date;
return-object v0
.end method
.method public getChildId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->childId:Ljava/lang/String;
return-object v0
.end method
.method public getClosed()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->closed:Ljava/lang/String;
return-object v0
.end method
.method public getDetailLogo()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->detailLogo:Ljava/lang/String;
return-object v0
.end method
.method public getDownloadCount()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->downloadCount:Ljava/lang/String;
return-object v0
.end method
.method public getDownloaded()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->downloaded:Ljava/lang/String;
return-object v0
.end method
.method public getId()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->id:J
return-wide v0
.end method
.method public getIsHot()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->isHot:Ljava/lang/String;
return-object v0
.end method
.method public getIsNew()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->isNew:Ljava/lang/String;
return-object v0
.end method
.method public getKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
return-object v0
.end method
.method public getLocationType()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->locationType:I
return v0
.end method
.method public getNeedPay()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->needPay:Ljava/lang/String;
return-object v0
.end method
.method public getSceneJpgFile()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneJpgFile:Ljava/lang/String;
return-object v0
.end method
.method public getSceneJpgFileLength()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneJpgFileLength:J
return-wide v0
.end method
.method public getScenePngFile()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->scenePngFile:Ljava/lang/String;
return-object v0
.end method
.method public getScenePngFileLength()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->scenePngFileLength:J
return-wide v0
.end method
.method public getSceneUsedCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneUsedCount:I
return v0
.end method
.method public getSceneXmlFile()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneXmlFile:Ljava/lang/String;
return-object v0
.end method
.method public getSceneXmlFileLength()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneXmlFileLength:J
return-wide v0
.end method
.method public getTemplateId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->templateId:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->title:Ljava/lang/String;
return-object v0
.end method
.method public getValid()Ljava/lang/Boolean;
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->valid:Z
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0x1f
const/4 v1, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
if-nez v2, :cond_b
const/4 v2, 0x0
:goto_8
add-int/lit8 v1, v2, 0x1f
return v1
:cond_b
iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
goto :goto_8
.end method
.method public setAddedDate(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->addedDate:Ljava/util/Date;
return-void
.end method
.method public setChildId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->childId:Ljava/lang/String;
return-void
.end method
.method public setClosed(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->closed:Ljava/lang/String;
return-void
.end method
.method public setDetailLogo(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->detailLogo:Ljava/lang/String;
return-void
.end method
.method public setDownloadCount(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->downloadCount:Ljava/lang/String;
return-void
.end method
.method public setDownloaded(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->downloaded:Ljava/lang/String;
return-void
.end method
.method public setId(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->id:J
return-void
.end method
.method public setIsHot(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->isHot:Ljava/lang/String;
return-void
.end method
.method public setIsNew(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->isNew:Ljava/lang/String;
return-void
.end method
.method public setKey(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
return-void
.end method
.method public setLocationType(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->locationType:I
return-void
.end method
.method public setNeedPay(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->needPay:Ljava/lang/String;
return-void
.end method
.method public setSceneJpgFile(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneJpgFile:Ljava/lang/String;
return-void
.end method
.method public setSceneJpgFileLength(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneJpgFileLength:J
return-void
.end method
.method public setScenePngFile(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->scenePngFile:Ljava/lang/String;
return-void
.end method
.method public setScenePngFileLength(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->scenePngFileLength:J
return-void
.end method
.method public setSceneUsedCount(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneUsedCount:I
return-void
.end method
.method public setSceneXmlFile(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneXmlFile:Ljava/lang/String;
return-void
.end method
.method public setSceneXmlFileLength(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->sceneXmlFileLength:J
return-void
.end method
.method public setTemplateId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->templateId:Ljava/lang/String;
return-void
.end method
.method public setTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->title:Ljava/lang/String;
return-void
.end method
.method public setValid(Ljava/lang/Boolean;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->valid:Z
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "SceneTemplate [key="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->key:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method