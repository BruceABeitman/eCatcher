.class public Lcom/pinguo/camera360/nearbytransfer/NbtfService;
.super Landroid/app/IntentService;
.source "NbtfService.java"
.field public static final ACTION_DELETE_FILES:Ljava/lang/String; = "intent_delete_files"
.field public static final ACTION_INSERT_TO_C360PhotoDB:Ljava/lang/String; = "intent_insert_files"
.field public static final EXTRA_FILE_LIST:Ljava/lang/String; = "files"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/NbtfService;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "NbtfService"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method private thumb(Ljava/io/File;J)V
.registers 15
invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I
move-result v3
div-int/lit8 v7, v3, 0x4
const/4 v4, 0x0
:try_start_7
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
const/4 v9, 0x0
invoke-static {v8, v7, v9}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
:try_end_f
.catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_f} :catch_28
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_43
move-result-object v4
:goto_10
sget-object v8, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v8, p2, p3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v6
new-instance v5, Ljava/io/File;
invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
if-eqz v4, :cond_27
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v8
if-nez v8, :cond_48
:goto_27
:cond_27
return-void
:catch_28
move-exception v2
sget-object v8, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "thumb file fail : "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_10
:catch_43
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_10
:cond_48
const/16 v8, 0x5f
invoke-static {v6, v4, v8}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
goto :goto_27
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 24
sget-object v18, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->TAG:Ljava/lang/String;
new-instance v19, Ljava/lang/StringBuilder;
const-string/jumbo v20, "onHandleIntent = "
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
const-string/jumbo v18, "intent_delete_files"
move-object/from16 v0, v18
invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v18
if-eqz v18, :cond_6d
const-string/jumbo v18, "files"
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v11
if-eqz v11, :cond_3f
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v18
:goto_39
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-nez v19, :cond_40
:cond_3f
return-void
:cond_40
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
:try_start_46
sget-object v19, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->TAG:Ljava/lang/String;
new-instance v20, Ljava/lang/StringBuilder;
const-string/jumbo v21, "onHandleIntent delete file = "
invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v20
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
invoke-static/range {v19 .. v20}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v19, Ljava/io/File;
move-object/from16 v0, v19
invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
:try_end_67
.catch Ljava/lang/Exception; {:try_start_46 .. :try_end_67} :catch_68
goto :goto_39
:catch_68
move-exception v8
invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_39
:cond_6d
const-string/jumbo v18, "intent_insert_files"
move-object/from16 v0, v18
invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v18
if-eqz v18, :cond_3f
const-string/jumbo v18, "files"
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v11
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v13
new-instance v5, Ljava/util/ArrayList;
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V
new-instance v7, Ljava/util/ArrayList;
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v16
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v18
:goto_a5
:cond_a5
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-nez v19, :cond_141
sget-object v18, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->TAG:Ljava/lang/String;
const-string/jumbo v19, "begin insert bulk"
invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
sget-object v19, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
new-array v0, v0, [Landroid/content/ContentValues;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v18
check-cast v18, [Landroid/content/ContentValues;
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v13, v0, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
move-result v14
sget-object v19, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
new-array v0, v0, [Landroid/content/ContentValues;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v18
check-cast v18, [Landroid/content/ContentValues;
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v13, v0, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
move-result v15
sget-object v18, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->TAG:Ljava/lang/String;
new-instance v19, Ljava/lang/StringBuilder;
const-string/jumbo v20, "end insert bulk sizeC = "
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v19
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v19
const-string/jumbo v20, " sizeS = "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-static/range {v18 .. v19}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
int-to-long v0, v0
move-wide/from16 v18, v0
sub-long v16, v16, v18
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v18
:cond_11e
:goto_11e
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-eqz v19, :cond_3f
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
new-instance v9, Ljava/io/File;
invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v19
if-eqz v19, :cond_11e
const-wide/16 v19, 0x1
add-long v16, v16, v19
move-object/from16 v0, p0
move-wide/from16 v1, v16
invoke-direct {v0, v9, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->thumb(Ljava/io/File;J)V
goto :goto_11e
:cond_141
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
new-instance v9, Ljava/io/File;
invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v19
if-eqz v19, :cond_a5
new-instance v12, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/16 v19, 0x1
move/from16 v0, v19
iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v10, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
const-wide/16 v19, 0x1
add-long v16, v16, v19
new-instance v4, Landroid/content/ContentValues;
invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v19, "width"
iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I
move/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v19, "height"
iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I
move/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v19, "effectPhotoSavePath"
move-object/from16 v0, v19
invoke-virtual {v4, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v19, "tokenMillis"
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v19, "projectState"
const-string/jumbo v20, "finished"
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v6, Landroid/content/ContentValues;
invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v19, "_display_name"
invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v19, "mime_type"
const-string/jumbo v20, "image/jpeg"
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v19, "_size"
invoke-virtual {v9}, Ljava/io/File;->length()J
move-result-wide v20
invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v19, "datetaken"
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v19, "_data"
move-object/from16 v0, v19
invoke-virtual {v6, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v19, "title"
move-object/from16 v0, v19
invoke-virtual {v6, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_a5
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 7
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/NbtfService;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onStartCommand action = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I
const/4 v0, 0x3
return v0
.end method