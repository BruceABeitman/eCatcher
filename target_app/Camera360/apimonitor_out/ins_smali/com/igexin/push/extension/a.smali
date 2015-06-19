.class public Lcom/igexin/push/extension/a;
.super Ljava/lang/Object;
.field private static a:Ljava/lang/String;
.field private static c:Lcom/igexin/push/extension/a;
.field private b:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/extension/a;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/igexin/push/extension/a;->b:Ljava/util/List;
return-void
.end method
.method public static a()Lcom/igexin/push/extension/a;
.registers 1
sget-object v0, Lcom/igexin/push/extension/a;->c:Lcom/igexin/push/extension/a;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/extension/a;
invoke-direct {v0}, Lcom/igexin/push/extension/a;-><init>()V
sput-object v0, Lcom/igexin/push/extension/a;->c:Lcom/igexin/push/extension/a;
:cond_b
sget-object v0, Lcom/igexin/push/extension/a;->c:Lcom/igexin/push/extension/a;
return-object v0
.end method
.method public a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.registers 13
const/4 v1, 0x0
:try_start_1
new-instance v3, Ljava/io/FileInputStream;
invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_64
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8c
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_b
.catchall {:try_start_6 .. :try_end_b} :catchall_79
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_90
:try_start_b
new-instance v0, Ljava/io/BufferedOutputStream;
invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_10
.catchall {:try_start_b .. :try_end_10} :catchall_7c
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_94
const/16 v1, 0x400
:try_start_12
new-array v1, v1, [B
:goto_14
invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_46
new-array v5, v4, [B
const/4 v6, 0x0
const/4 v7, 0x0
invoke-static {v1, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v5, p3}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B
move-result-object v4
invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V
:try_end_29
.catchall {:try_start_12 .. :try_end_29} :catchall_7e
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_2a
goto :goto_14
:catch_2a
move-exception v1
move-object v1, v2
move-object v2, v3
:goto_2d
:try_start_2d
invoke-virtual {p2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_36
invoke-virtual {p2}, Ljava/io/File;->delete()Z
:cond_36
:try_end_36
.catchall {:try_start_2d .. :try_end_36} :catchall_83
if-eqz v2, :cond_3b
:try_start_38
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:cond_3b
if-eqz v0, :cond_40
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
:cond_40
if-eqz v1, :cond_45
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_45
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_45} :catch_8a
:goto_45
:cond_45
return-void
:try_start_46
:cond_46
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_52
.catchall {:try_start_46 .. :try_end_52} :catchall_7e
.catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_2a
if-eqz v3, :cond_57
:try_start_54
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:cond_57
if-eqz v0, :cond_5c
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
:cond_5c
if-eqz v2, :cond_45
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_61
.catch Ljava/lang/Exception; {:try_start_54 .. :try_end_61} :catch_62
goto :goto_45
:catch_62
move-exception v0
goto :goto_45
:catchall_64
move-exception v0
move-object v2, v1
move-object v3, v1
:goto_67
if-eqz v3, :cond_6c
:try_start_69
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:cond_6c
if-eqz v1, :cond_71
invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
:cond_71
if-eqz v2, :cond_76
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:cond_76
:goto_76
:try_end_76
.catch Ljava/lang/Exception; {:try_start_69 .. :try_end_76} :catch_77
throw v0
:catch_77
move-exception v1
goto :goto_76
:catchall_79
move-exception v0
move-object v2, v1
goto :goto_67
:catchall_7c
move-exception v0
goto :goto_67
:catchall_7e
move-exception v1
move-object v8, v1
move-object v1, v0
move-object v0, v8
goto :goto_67
:catchall_83
move-exception v3
move-object v8, v3
move-object v3, v2
move-object v2, v1
move-object v1, v0
move-object v0, v8
goto :goto_67
:catch_8a
move-exception v0
goto :goto_45
:catch_8c
move-exception v0
move-object v0, v1
move-object v2, v1
goto :goto_2d
:catch_90
move-exception v0
move-object v0, v1
move-object v2, v3
goto :goto_2d
:catch_94
move-exception v0
move-object v0, v1
move-object v1, v2
move-object v2, v3
goto :goto_2d
.end method
.method public a(Landroid/content/Context;)Z
.registers 17
:try_start_0
sget-object v1, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;
if-eqz v1, :cond_ae
sget-object v1, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;
invoke-virtual {v1}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;
move-result-object v8
invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v9
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
:cond_17
:goto_17
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_c5
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v11
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Lcom/igexin/push/core/bean/e;
move-object v7, v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v12, Ljava/io/File;
invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v12}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_bc
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->h()J
move-result-wide v1
const-wide/16 v4, 0x0
cmp-long v1, v1, v4
if-eqz v1, :cond_79
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->i()J
move-result-wide v1
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->h()J
move-result-wide v4
add-long/2addr v1, v4
cmp-long v1, v1, v13
if-ltz v1, :cond_b0
:cond_79
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->d()Ljava/lang/String;
move-result-object v4
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->j()Ljava/lang/String;
move-result-object v5
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;
move-result-object v6
move-object v1, p0
move-object/from16 v2, p1
invoke-virtual/range {v1 .. v6}, Lcom/igexin/push/extension/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_9b
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->i()J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-eqz v1, :cond_9b
invoke-virtual {v7, v13, v14}, Lcom/igexin/push/core/bean/e;->b(J)V
:cond_9b
invoke-virtual {v7}, Lcom/igexin/push/core/bean/e;->g()Z
move-result v1
if-eqz v1, :cond_17
invoke-virtual {v12}, Ljava/io/File;->delete()Z
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_17
:catch_ad
move-exception v1
:cond_ae
:goto_ae
const/4 v1, 0x1
return v1
:cond_b0
invoke-virtual {v12}, Ljava/io/File;->delete()Z
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_17
:cond_bc
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_17
:cond_c5
if-eqz v10, :cond_ae
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_ae
invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d1
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_e9
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d1
:cond_e9
invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/a/a;->g()V
:try_end_f0
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f0} :catch_ad
goto :goto_ae
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.registers 15
const/4 v0, 0x0
const/4 v1, 0x0
new-instance v2, Ljava/io/File;
invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ".jar"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v4, Ljava/io/File;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v6
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ".dex"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v2, v3, p4}, Lcom/igexin/push/extension/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_a6
:try_start_55
new-instance v2, Ldalvik/system/DexClassLoader;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v6
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v8
invoke-direct {v2, v5, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6b} :catch_93
:try_start_6b
invoke-virtual {v2, p3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
:try_end_6e
.catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_a8
move-result-object v0
:goto_6f
:try_start_6f
invoke-virtual {v3}, Ljava/io/File;->delete()Z
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_7b
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:cond_7b
if-nez v0, :cond_7f
move v0, v1
:goto_7e
return v0
:cond_7f
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/extension/stub/IPushExtension;
if-eqz v0, :cond_a6
sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-interface {v0, v2}, Lcom/igexin/push/extension/stub/IPushExtension;->init(Landroid/content/Context;)Z
iget-object v2, p0, Lcom/igexin/push/extension/a;->b:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_91
.catch Ljava/lang/Exception; {:try_start_6f .. :try_end_91} :catch_93
const/4 v0, 0x1
goto :goto_7e
:catch_93
move-exception v0
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_9d
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:cond_9d
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_a6
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:cond_a6
move v0, v1
goto :goto_7e
:catch_a8
move-exception v2
goto :goto_6f
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/igexin/push/extension/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/extension/stub/IPushExtension;
invoke-interface {v0}, Lcom/igexin/push/extension/stub/IPushExtension;->onDestroy()V
goto :goto_6
:cond_16
return-void
.end method
.method public c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/igexin/push/extension/a;->b:Ljava/util/List;
return-object v0
.end method