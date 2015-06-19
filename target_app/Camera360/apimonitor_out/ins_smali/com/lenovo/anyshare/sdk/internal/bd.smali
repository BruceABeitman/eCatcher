.class public final Lcom/lenovo/anyshare/sdk/internal/bd;
.super Ljava/lang/Object;
.source "StorageVolumeHelper.java"
.field private static a:Ljava/lang/String;
.field private static b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, ""
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bd;->a:Ljava/lang/String;
const-string/jumbo v0, ""
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bd;->b:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/Context;)Ljava/util/List;
.registers 33
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
:try_start_5
const-string/jumbo v28, "android.os.storage.StorageManager"
invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v4
const-string/jumbo v28, "getVolumeList"
const/16 v29, 0x0
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v29, v0
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v17
const-string/jumbo v28, "getVolumeState"
const/16 v29, 0x1
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v29, v0
const/16 v30, 0x0
const-class v31, Ljava/lang/String;
aput-object v31, v29, v30
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v18
const/16 v28, 0x1
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v28, v0
const/16 v29, 0x0
const-class v30, Landroid/os/Looper;
aput-object v30, v28, v29
move-object/from16 v0, v28
invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v5
const/16 v28, 0x1
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
const/16 v29, 0x0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v30
aput-object v30, v28, v29
move-object/from16 v0, v28
invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v25
const-string/jumbo v28, "android.os.storage.StorageVolume"
invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_68
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_68} :catch_188
move-result-object v6
const/4 v12, 0x0
:try_start_6a
const-string/jumbo v28, "getDescription"
const/16 v29, 0x0
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v29, v0
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_7c
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7c} :catch_256
move-result-object v12
:goto_7d
const/4 v13, 0x0
:try_start_7e
const-string/jumbo v28, "getDescription"
const/16 v29, 0x1
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v29, v0
const/16 v30, 0x0
const-class v31, Landroid/content/Context;
aput-object v31, v29, v30
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_96
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_96} :catch_253
move-result-object v13
:try_start_97
:goto_97
const-string/jumbo v28, "getPath"
const/16 v29, 0x0
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v29, v0
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v14
const/16 v28, 0x0
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
move-object/from16 v0, v17
move-object/from16 v1, v25
move-object/from16 v2, v28
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v26
invoke-static/range {v26 .. v26}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v23
const/16 v19, 0x0
:goto_c2
move/from16 v0, v19
move/from16 v1, v23
if-ge v0, v1, :cond_246
move-object/from16 v0, v26
move/from16 v1, v19
invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v27
const-string/jumbo v7, ""
if-eqz v12, :cond_16e
const/16 v28, 0x0
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
move-object/from16 v0, v27
move-object/from16 v1, v28
invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
:cond_e7
:goto_e7
const/16 v28, 0x0
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
move-object/from16 v0, v27
move-object/from16 v1, v28
invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v21
check-cast v21, Ljava/lang/String;
const/16 v28, 0x1
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
const/16 v29, 0x0
aput-object v21, v28, v29
move-object/from16 v0, v18
move-object/from16 v1, v25
move-object/from16 v2, v28
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/lang/String;
const-string/jumbo v28, "StorageVolumeHelper"
new-instance v29, Ljava/lang/StringBuilder;
invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v30, "Description: "
invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
move-object/from16 v0, v29
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
const-string/jumbo v30, ", Path: "
invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
move-object/from16 v0, v29
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
const-string/jumbo v30, ", State: "
invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
move-object/from16 v0, v29
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v28, "mounted"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_16a
new-instance v28, Lcom/lenovo/anyshare/sdk/internal/bd$a;
move-object/from16 v0, v28
move-object/from16 v1, v21
move-object/from16 v2, v24
invoke-direct {v0, v7, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bd$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v20
move-object/from16 v1, v28
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_16a
add-int/lit8 v19, v19, 0x1
goto/16 :goto_c2
:cond_16e
if-eqz v13, :cond_e7
const/16 v28, 0x1
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
const/16 v29, 0x0
aput-object p0, v28, v29
move-object/from16 v0, v27
move-object/from16 v1, v28
invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
:try_end_186
.catch Ljava/lang/Exception; {:try_start_97 .. :try_end_186} :catch_188
goto/16 :goto_e7
:catch_188
move-exception v8
const-string/jumbo v28, "StorageVolumeHelper"
invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v28
const-string/jumbo v29, "mounted"
invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_1b9
new-instance v28, Lcom/lenovo/anyshare/sdk/internal/bd$a;
sget-object v29, Lcom/lenovo/anyshare/sdk/internal/bd;->a:Ljava/lang/String;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v30
invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v30
const-string/jumbo v31, "mounted"
invoke-direct/range {v28 .. v31}, Lcom/lenovo/anyshare/sdk/internal/bd$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v20
move-object/from16 v1, v28
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_start_1b9
:cond_1b9
const-string/jumbo v28, "android.os.Environment"
invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v10
const-string/jumbo v28, "getRealExternalStorageDirectory"
const/16 v29, 0x0
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v29, v0
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v15
const-string/jumbo v28, "getRealExternalStorageState"
const/16 v29, 0x0
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v29, v0
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v16
const/16 v28, 0x0
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Class;
move-object/from16 v28, v0
move-object/from16 v0, v28
invoke-virtual {v10, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v3
const/16 v28, 0x0
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
move-object/from16 v0, v28
invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
const/16 v28, 0x0
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
move-object/from16 v0, v28
invoke-virtual {v15, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Ljava/io/File;
const/16 v28, 0x0
move/from16 v0, v28
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v28, v0
move-object/from16 v0, v16
move-object/from16 v1, v28
invoke-virtual {v0, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/lang/String;
const-string/jumbo v28, "mounted"
move-object/from16 v0, v24
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_246
new-instance v28, Lcom/lenovo/anyshare/sdk/internal/bd$a;
sget-object v29, Lcom/lenovo/anyshare/sdk/internal/bd;->b:Ljava/lang/String;
invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v30
const-string/jumbo v31, "mounted"
invoke-direct/range {v28 .. v31}, Lcom/lenovo/anyshare/sdk/internal/bd$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v20
move-object/from16 v1, v28
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_246
:try_end_246
.catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_246} :catch_247
:goto_246
return-object v20
:catch_247
move-exception v9
const-string/jumbo v28, "StorageVolumeHelper"
invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v29
invoke-static/range {v28 .. v29}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_246
:catch_253
move-exception v28
goto/16 :goto_97
:catch_256
move-exception v28
goto/16 :goto_7d
.end method
.method public static b(Landroid/content/Context;)Lcom/lenovo/anyshare/sdk/internal/bd$a;
.registers 8
const/4 v4, 0x0
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bd;->a(Landroid/content/Context;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v5
if-eqz v5, :cond_d
move-object v2, v4
:goto_c
return-object v2
:cond_d
new-instance v5, Lcom/lenovo/anyshare/sdk/internal/bc;
invoke-direct {v5, p0}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V
const-string/jumbo v6, "SETTING_STORAGE"
invoke-virtual {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_27
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v5
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
:cond_27
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_2b
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_40
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;
iget-object v5, v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2b
goto :goto_c
:cond_40
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_44
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_61
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;
iget-object v5, v2, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v6
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_44
goto :goto_c
:cond_61
move-object v2, v4
goto :goto_c
.end method