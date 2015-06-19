.class public Lcom/lenovo/anyshare/sdk/internal/j;
.super Ljava/lang/Object;
.source "LocalFileStore.java"
.field private static a:Ljava/io/File;
.field private static b:Ljava/io/File;
.field private static c:Ljava/io/File;
.method private static a(Ljava/lang/String;ZILjava/lang/String;)Lcom/lenovo/content/item/AppItem;
.registers 14
const/4 v2, 0x0
:try_start_1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v8
invoke-virtual {v8}, Lcom/lenovo/anyshare/sdk/internal/bi;->d()Lcom/lenovo/content/base/ContentSource;
move-result-object v6
sget-object v8, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v6, v8, p3}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v1
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v5
if-eqz p1, :cond_54
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "|"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_31
:cond_31
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_7c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v4}, Lcom/lenovo/content/base/ContentItem;->getVersionedId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_31
if-eqz v2, :cond_4f
invoke-virtual {v2, v4}, Lcom/lenovo/content/item/AppItem;->compareTo(Lcom/lenovo/content/base/ContentObject;)I
move-result v8
if-gez v8, :cond_31
:cond_4f
move-object v0, v4
check-cast v0, Lcom/lenovo/content/item/AppItem;
move-object v2, v0
goto :goto_31
:cond_54
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_58
:goto_58
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_7c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v4}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_58
if-eqz v2, :cond_76
invoke-virtual {v2, v4}, Lcom/lenovo/content/item/AppItem;->compareTo(Lcom/lenovo/content/base/ContentObject;)I
move-result v8
if-gez v8, :cond_58
:cond_76
move-object v0, v4
check-cast v0, Lcom/lenovo/content/item/AppItem;
move-object v2, v0
:try_end_7a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7a} :catch_7b
goto :goto_58
:catch_7b
move-exception v8
:cond_7c
return-object v2
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
.registers 7
const/4 v3, 0x1
const/4 v0, 0x0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/j$1;->a:[I
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_1e
:pswitch_d
:goto_d
return-object v0
:pswitch_e
invoke-static {p0, p2, v3}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/ByteArrayOutputStream;
move-result-object v0
goto :goto_d
:pswitch_13
invoke-static {p0, p2, v3}, Lcom/lenovo/anyshare/sdk/internal/j;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/ByteArrayOutputStream;
move-result-object v0
goto :goto_d
:pswitch_18
invoke-static {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
move-result-object v0
goto :goto_d
nop
:pswitch_data_1e
.packed-switch 0x1
:pswitch_e
:pswitch_d
:pswitch_d
:pswitch_13
:pswitch_d
:pswitch_18
.end packed-switch
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/ByteArrayOutputStream;
.registers 5
const/4 v1, 0x0
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_8
:cond_7
:goto_7
return-object v1
:cond_8
if-eqz p2, :cond_7
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/aj;->b(Landroid/content/ContentResolver;I)Ljava/io/ByteArrayOutputStream;
move-result-object v1
goto :goto_7
.end method
.method public static declared-synchronized a()Ljava/io/File;
.registers 2
const-class v1, Lcom/lenovo/anyshare/sdk/internal/j;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->b:Ljava/io/File;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_15
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
:cond_15
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->b:Ljava/io/File;
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_19
monitor-exit v1
return-object v0
:catchall_19
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/FileType;Ljava/lang/String;)Ljava/io/File;
.registers 6
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j$1;->a:[I
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2c
const/4 v0, 0x0
:goto_c
return-object v0
:pswitch_d
invoke-static {p0, p3, p2}, Lcom/lenovo/anyshare/sdk/internal/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v0
goto :goto_c
:pswitch_12
invoke-static {p0, p3, p2}, Lcom/lenovo/anyshare/sdk/internal/j;->c(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v0
goto :goto_c
:pswitch_17
invoke-static {p0, p3, p2}, Lcom/lenovo/anyshare/sdk/internal/j;->d(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v0
goto :goto_c
:pswitch_1c
invoke-static {p0, p3, p2}, Lcom/lenovo/anyshare/sdk/internal/j;->e(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v0
goto :goto_c
:pswitch_21
invoke-static {p0, p3, p2}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v0
goto :goto_c
:pswitch_26
invoke-static {p3, p2}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v0
goto :goto_c
nop
:pswitch_data_2c
.packed-switch 0x1
:pswitch_d
:pswitch_12
:pswitch_17
:pswitch_1c
:pswitch_21
:pswitch_26
.end packed-switch
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 9
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_8
const/4 v2, 0x0
:goto_7
return-object v2
:cond_8
const/4 v2, 0x0
:try_start_9
sget-object v3, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-ne p2, v3, :cond_24
const-string/jumbo v3, "tmp_up_"
const-string/jumbo v4, ""
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/j;->a()Ljava/io/File;
move-result-object v5
invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {p0, v0, v3}, Lcom/lenovo/anyshare/sdk/internal/am;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
move-result-object v2
goto :goto_7
:cond_24
const-string/jumbo v3, "tmp_up_"
const-string/jumbo v4, ".vcf"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/j;->a()Ljava/io/File;
move-result-object v5
invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {p0, v0, v3}, Lcom/lenovo/anyshare/sdk/internal/am;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
:try_end_39
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_39} :catch_3b
move-result-object v2
goto :goto_7
:catch_3b
move-exception v1
const-string/jumbo v3, "LocalFileStore"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "getContactFile error :"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;ZILcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 17
const/4 v8, 0x0
const/4 v6, 0x0
:try_start_2
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
move-result-object v4
if-nez v4, :cond_24
const-string/jumbo v9, "LocalFileStore"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "can not find package from Phone with :"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v7, v8
:goto_23
return-object v7
:cond_24
if-eqz p2, :cond_51
iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I
if-eq v9, p3, :cond_51
const-string/jumbo v9, "LocalFileStore"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "can not find package from Phone with :"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, " and version code:"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v7, v8
goto :goto_23
:cond_51
sget-object v9, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
move-object/from16 v0, p4
if-ne v0, v9, :cond_7e
iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v10
invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v3
instance-of v9, v3, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v9, :cond_e6
const-string/jumbo v9, "tmp_up_"
const-string/jumbo v10, ".png"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/j;->a()Ljava/io/File;
move-result-object v11
invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
move-result-object v6
check-cast v3, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v9
invoke-static {v9, v6}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V
move-object v7, v6
goto :goto_23
:cond_7e
sget-object v9, Lcom/lenovo/content/base/FileType;->DATA:Lcom/lenovo/content/base/FileType;
:try_end_80
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_80} :catch_f5
move-object/from16 v0, p4
if-ne v0, v9, :cond_e9
:try_start_84
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v9
invoke-virtual {v9}, Lcom/lenovo/anyshare/sdk/internal/bi;->d()Lcom/lenovo/content/base/ContentSource;
move-result-object v9
sget-object v10, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v9, v10, p1}, Lcom/lenovo/content/base/ContentSource;->getItem(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
move-result-object v5
instance-of v9, v5, Lcom/lenovo/content/item/AppDataItem;
invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
move-object v0, v5
check-cast v0, Lcom/lenovo/content/item/AppDataItem;
move-object v1, v0
const/4 v9, 0x1
invoke-static {p0, v1, v9}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Lcom/lenovo/content/item/AppDataItem;Z)Z
move-result v9
if-nez v9, :cond_bf
const-string/jumbo v9, "LocalFileStore"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "getAppFileFromPhone(): Load system data failed and package name = "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object v7, v8
goto/16 :goto_23
:cond_bf
new-instance v7, Ljava/io/File;
invoke-virtual {v1}, Lcom/lenovo/content/item/AppDataItem;->getSystemDataPath()Ljava/lang/String;
move-result-object v9
invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_end_c8
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_84 .. :try_end_c8} :catch_cb
.catch Ljava/io/IOException; {:try_start_84 .. :try_end_c8} :catch_f5
move-object v6, v7
goto/16 :goto_23
:catch_cb
move-exception v2
:try_start_cc
const-string/jumbo v9, "LocalFileStore"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "getAppFileFromPhone(): Get AppDataItem failed and package name = "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_e6
:cond_e6
move-object v7, v8
goto/16 :goto_23
:cond_e9
new-instance v7, Ljava/io/File;
iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_end_f2
.catch Ljava/io/IOException; {:try_start_cc .. :try_end_f2} :catch_f5
move-object v6, v7
goto/16 :goto_23
:catch_f5
move-exception v2
const-string/jumbo v9, "LocalFileStore"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "can not find package from Phone with :"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e6
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 15
const/4 v5, 0x0
sget-object v6, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-eq p5, v6, :cond_b
sget-object v6, Lcom/lenovo/content/base/FileType;->RAW:Lcom/lenovo/content/base/FileType;
if-eq p5, v6, :cond_b
move-object v3, v5
:goto_a
return-object v3
:cond_b
invoke-static {p1, p2, p3, p4}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Ljava/lang/String;ZILjava/lang/String;)Lcom/lenovo/content/item/AppItem;
move-result-object v2
if-nez v2, :cond_13
move-object v3, v5
goto :goto_a
:cond_13
const/4 v3, 0x0
:try_start_14
sget-object v6, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-ne p5, v6, :cond_53
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v6
invoke-virtual {v6}, Lcom/lenovo/anyshare/sdk/internal/bi;->d()Lcom/lenovo/content/base/ContentSource;
move-result-object v6
invoke-virtual {v6, v2}, Lcom/lenovo/content/base/ContentSource;->loadThumbnail(Lcom/lenovo/content/base/ContentObject;)Landroid/graphics/Bitmap;
move-result-object v0
const-string/jumbo v6, "tmp_up_"
const-string/jumbo v7, ".png"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/j;->a()Ljava/io/File;
move-result-object v8
invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
move-result-object v3
invoke-static {v0, v3}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V
:try_end_35
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_36
goto :goto_a
:catch_36
move-exception v1
const-string/jumbo v6, "LocalFileStore"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "can not find package from SDCard with :"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v3, v5
goto :goto_a
:try_start_53
:cond_53
new-instance v4, Ljava/io/File;
invoke-virtual {v2}, Lcom/lenovo/content/item/AppItem;->getFilePath()Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5c} :catch_36
move-object v3, v4
goto :goto_a
.end method
.method private static a(Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 4
move-object v0, p0
sget-object v1, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-ne p1, v1, :cond_7
const/4 v1, 0x0
:goto_6
return-object v1
:cond_7
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_6
.end method
.method private static a(Landroid/content/Context;I)Ljava/lang/String;
.registers 11
const/4 v8, 0x0
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const-string/jumbo v0, "album_art"
aput-object v0, v2, v8
const-string/jumbo v7, ""
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "content://media/external/audio/albums/"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_42
invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I
move-result v0
if-lez v0, :cond_42
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
:cond_42
invoke-interface {v6}, Landroid/database/Cursor;->close()V
return-object v7
.end method
.method public static declared-synchronized a(Landroid/content/Context;)V
.registers 3
const-class v1, Lcom/lenovo/anyshare/sdk/internal/j;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->a:Ljava/io/File;
if-nez v0, :cond_d
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->a:Ljava/io/File;
:cond_d
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/j;->c()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/j;->b()V
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_15
monitor-exit v1
return-void
:catchall_15
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/ByteArrayOutputStream;
.registers 5
const/4 v1, 0x0
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_8
:cond_7
:goto_7
return-object v1
:cond_8
if-eqz p2, :cond_7
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/aj;->d(Landroid/content/ContentResolver;I)Ljava/io/ByteArrayOutputStream;
move-result-object v1
goto :goto_7
.end method
.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 7
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_8
:cond_7
:goto_7
return-object v2
:cond_8
const/4 v1, 0x0
sget-object v3, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-ne p2, v3, :cond_1d
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/aj;->e(Landroid/content/ContentResolver;I)Ljava/lang/String;
move-result-object v1
:goto_15
if-eqz v1, :cond_7
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_7
:cond_1d
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/aj;->f(Landroid/content/ContentResolver;I)Ljava/lang/String;
move-result-object v1
goto :goto_15
.end method
.method private static b()V
.registers 1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/j;->a()Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/io/File;)V
return-void
.end method
.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 12
invoke-static {p1}, Lcom/lenovo/content/base/ContentObject;->decodeVersionedId(Ljava/lang/String;)Landroid/util/Pair;
move-result-object v8
iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;
check-cast v1, Ljava/lang/String;
const/4 v2, 0x0
const/4 v3, 0x0
:try_start_a
iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_11
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_2e
move-result v3
const/4 v2, 0x1
:goto_13
invoke-static {p0, v1, v2, v3, p2}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Ljava/lang/String;ZILcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v7
if-nez v7, :cond_22
const-string/jumbo v4, "sdcard/items"
move-object v0, p0
move-object v5, p2
invoke-static/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v7
:cond_22
if-nez v7, :cond_2d
const-string/jumbo v4, "zip/items"
move-object v0, p0
move-object v5, p2
invoke-static/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
move-result-object v7
:cond_2d
return-object v7
:catch_2e
move-exception v6
const/4 v2, 0x0
goto :goto_13
.end method
.method private static c()V
.registers 3
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/j;->a:Ljava/io/File;
const-string/jumbo v2, ".tmp/"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->b:Ljava/io/File;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_19
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->b:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_19
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/j;->a:Ljava/io/File;
const-string/jumbo v2, "file/"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->c:Ljava/io/File;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->c:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_32
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/j;->c:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_32
return-void
.end method
.method private static d(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 16
const/4 v2, 0x0
move-object v11, p1
const/4 v12, 0x0
const/4 v0, 0x1
new-array v4, v0, [Ljava/lang/String;
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, ""
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
aput-object v1, v4, v0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const-string/jumbo v3, "_id = ?"
move-object v5, v2
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v8
if-eqz v8, :cond_33
:try_start_2d
invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_68
move-result v0
if-nez v0, :cond_37
:cond_33
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
:goto_36
:cond_36
return-object v2
:cond_37
:try_start_37
const-string/jumbo v0, "album_id"
invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v6
const-string/jumbo v0, "_data"
invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v9
:cond_45
sget-object v0, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
if-ne p2, v0, :cond_63
invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I
move-result v7
invoke-static {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v12
:goto_51
invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
:try_end_54
.catchall {:try_start_37 .. :try_end_54} :catchall_68
move-result v0
if-nez v0, :cond_45
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
if-eqz v12, :cond_36
new-instance v10, Ljava/io/File;
invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object v2, v10
goto :goto_36
:cond_63
:try_start_63
invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_66
.catchall {:try_start_63 .. :try_end_66} :catchall_68
move-result-object v12
goto :goto_51
:catchall_68
move-exception v0
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v0
.end method
.method private static e(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/content/base/FileType;)Ljava/io/File;
.registers 18
move-object/from16 v14, p1
sget-object v1, Lcom/lenovo/content/base/FileType;->THUMBNAIL:Lcom/lenovo/content/base/FileType;
move-object/from16 v0, p2
if-ne v0, v1, :cond_50
const/4 v1, 0x2
new-array v3, v1, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "_data"
aput-object v2, v3, v1
const/4 v1, 0x1
const-string/jumbo v2, "video_id"
aput-object v2, v3, v1
const-string/jumbo v4, "video_id=?"
const/4 v1, 0x1
new-array v5, v1, [Ljava/lang/String;
const/4 v1, 0x0
aput-object v14, v5, v1
const/4 v12, 0x0
:try_start_21
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const/4 v6, 0x0
invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v12
invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_46
new-instance v1, Ljava/io/File;
const-string/jumbo v2, "_data"
invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v2
invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_42
:try_end_42
.catchall {:try_start_21 .. :try_end_42} :catchall_4b
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_42} :catch_48
invoke-static {v12}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
:goto_45
return-object v1
:cond_46
const/4 v1, 0x0
goto :goto_42
:catch_48
move-exception v13
const/4 v1, 0x0
goto :goto_42
:catchall_4b
move-exception v1
invoke-static {v12}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v1
:cond_50
const/4 v1, 0x1
new-array v10, v1, [Ljava/lang/String;
const/4 v1, 0x0
aput-object v14, v10, v1
const/4 v12, 0x0
:try_start_57
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v6
sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const/4 v8, 0x0
const-string/jumbo v9, "_id = ?"
const/4 v11, 0x0
invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v12
invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_80
new-instance v1, Ljava/io/File;
const-string/jumbo v2, "_data"
invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v2
invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_7c
:try_end_7c
.catchall {:try_start_57 .. :try_end_7c} :catchall_85
.catch Ljava/lang/Exception; {:try_start_57 .. :try_end_7c} :catch_82
invoke-static {v12}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
goto :goto_45
:cond_80
const/4 v1, 0x0
goto :goto_7c
:catch_82
move-exception v13
const/4 v1, 0x0
goto :goto_7c
:catchall_85
move-exception v1
invoke-static {v12}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v1
.end method