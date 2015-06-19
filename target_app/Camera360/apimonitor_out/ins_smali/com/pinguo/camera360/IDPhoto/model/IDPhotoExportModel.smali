.class public Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;
.super Ljava/lang/Object;
.source "IDPhotoExportModel.java"
.field private mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Ljava/lang/String;Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;)Z
.registers 3
invoke-static {p0, p1}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->exportInner(Ljava/lang/String;Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;)Z
move-result v0
return v0
.end method
.method private static exportInner(Ljava/lang/String;Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;)Z
.registers 7
invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
iget v3, p1, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportWidth:I
iget v4, p1, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportHeight:I
invoke-static {v0, v3, v4}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoMaker;->getTargetBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_21
:try_start_e
iget-object v3, p1, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportPath:Ljava/lang/String;
const/16 v4, 0x5f
invoke-static {v3, v2, v4}, Lcom/pinguo/lib/util/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:try_end_15
.catchall {:try_start_e .. :try_end_15} :catchall_23
.catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_1a
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
const/4 v3, 0x1
:goto_19
return v3
:catch_1a
move-exception v1
:try_start_1b
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_1e
.catchall {:try_start_1b .. :try_end_1e} :catchall_23
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
:cond_21
const/4 v3, 0x0
goto :goto_19
:catchall_23
move-exception v3
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
throw v3
.end method
.method private getSavePath(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
.registers 11
if-eqz p1, :cond_4
if-nez p2, :cond_6
:cond_4
const/4 v2, 0x0
:goto_5
return-object v2
:cond_6
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_21
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
:cond_21
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "\\."
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
aget-object v1, v2, v3
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".jpg"
const-string/jumbo v4, " "
const-string/jumbo v5, "-"
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_5
.end method
.method private makeExportList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
.registers 15
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_9
:cond_9
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_10
return-object v1
:cond_10
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
const/4 v5, 0x0
const/4 v2, 0x0
iget-object v7, v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->templateData:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_1e
:cond_1e
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-nez v8, :cond_40
invoke-direct {p0, p2, p3, v5, v2}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->getSavePath(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->savePath:Ljava/lang/String;
if-nez p4, :cond_37
new-instance v7, Ljava/io/File;
invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v7
if-nez v7, :cond_9
:cond_37
new-instance v7, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;
invoke-direct {v7, v4, v5, v2}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;-><init>(Ljava/lang/String;II)V
invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_40
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;
iget-object v8, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->key:Ljava/lang/String;
const-string/jumbo v9, "passportWidth"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_5c
iget-object v8, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->value:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
move-result v5
goto :goto_1e
:cond_5c
iget-object v8, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->key:Ljava/lang/String;
const-string/jumbo v9, "passportHeight"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_1e
iget-object v8, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto$TemplateData;->value:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
move-result v2
goto :goto_1e
.end method
.method public export(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 9
const/4 v3, 0x0
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_d
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_16
:cond_d
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
invoke-interface {v1, v3}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;->onExportFinish(Z)V
:cond_16
invoke-direct {p0, p1, p3, p2, p4}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->makeExportList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
move-result-object v0
if-nez v0, :cond_38
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
if-eqz v1, :cond_25
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
invoke-interface {v1, v3}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;->preStartExport(I)V
:goto_25
:cond_25
new-instance v1, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;-><init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;)V
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v3
const/4 v3, 0x1
aput-object p2, v2, v3
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
:cond_38
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
if-eqz v1, :cond_25
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v2
invoke-interface {v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;->preStartExport(I)V
goto :goto_25
.end method
.method public setOnExportListener(Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel;->mListener:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;
return-void
.end method