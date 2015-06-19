.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"
.implements Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$IDPhotoMakeListItemAware;
.field  formatStr:Ljava/lang/String;
.field  frag:Ljava/lang/String;
.field  makeNum:I
.field  passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
.field  price:Ljava/lang/String;
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v2, 0x1
iput v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->makeNum:I
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->formatStr:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->templateData:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_35
:goto_1b
new-instance v0, Ljava/text/DecimalFormat;
const-string/jumbo v2, "###0.00"
invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
iget v2, p1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I
int-to-float v2, v2
const/high16 v3, 0x42c8
div-float/2addr v2, v3
float-to-double v2, v2
invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->price:Ljava/lang/String;
iget-object v2, p1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nameTag:Ljava/lang/String;
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->frag:Ljava/lang/String;
return-void
:cond_35
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;
iget-object v3, v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->key:Ljava/lang/String;
const-string/jumbo v4, "format"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_15
iget-object v2, v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->value:Ljava/lang/String;
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->formatStr:Ljava/lang/String;
goto :goto_1b
.end method
.method public getFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->formatStr:Ljava/lang/String;
return-object v0
.end method
.method public getFrag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->frag:Ljava/lang/String;
return-object v0
.end method
.method public getMakeNum()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->makeNum:I
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->name:Ljava/lang/String;
return-object v0
.end method
.method public getPrice()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->price:Ljava/lang/String;
return-object v0
.end method
.method public setMakeNum(I)I
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$PassportMakeItem;->makeNum:I
return p1
.end method