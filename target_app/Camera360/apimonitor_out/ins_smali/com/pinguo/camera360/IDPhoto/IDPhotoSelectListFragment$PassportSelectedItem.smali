.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
.super Ljava/lang/Object;
.source "IDPhotoSelectListFragment.java"
.implements Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
.field  formatStr:Ljava/lang/String;
.field private isChecked:Z
.field  passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
.field private photoImage:Landroid/graphics/Bitmap;
.field  sizeStr:Ljava/lang/String;
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;Landroid/graphics/Bitmap;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->photoImage:Landroid/graphics/Bitmap;
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v1, p1, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->templateData:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_d
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_14
return-void
:cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->key:Ljava/lang/String;
const-string/jumbo v3, "size"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2a
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->value:Ljava/lang/String;
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->sizeStr:Ljava/lang/String;
goto :goto_d
:cond_2a
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->key:Ljava/lang/String;
const-string/jumbo v3, "format"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->value:Ljava/lang/String;
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->formatStr:Ljava/lang/String;
goto :goto_d
.end method
.method public getFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->formatStr:Ljava/lang/String;
return-object v0
.end method
.method public getFrag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nameTag:Ljava/lang/String;
return-object v0
.end method
.method public getIDPhoto()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->photoImage:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public getImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->icon:Ljava/lang/String;
return-object v0
.end method
.method public getTypeName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->passport:Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->name:Ljava/lang/String;
return-object v0
.end method
.method public getTypeSize()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->sizeStr:Ljava/lang/String;
return-object v0
.end method
.method public isChecked()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->isChecked:Z
return v0
.end method
.method public setCheck(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;->isChecked:Z
return-void
.end method