.class public Lcom/admarvel/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/os/Handler;
.field private b:Ljava/lang/ref/WeakReference;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/b/a;->b:Ljava/lang/ref/WeakReference;
iput-object v0, p0, Lcom/admarvel/android/b/a;->a:Landroid/os/Handler;
return-void
.end method
.method public static a([Ljava/lang/String;)Lcom/admarvel/android/b/a/a;
.registers 11
const/16 v1, 0xa
const/4 v3, 0x0
new-instance v4, Lcom/admarvel/android/b/a/a;
invoke-direct {v4}, Lcom/admarvel/android/b/a/a;-><init>()V
array-length v0, p0
if-lt v0, v1, :cond_f5
const/4 v0, 0x3
aget-object v0, p0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v4, v0}, Lcom/admarvel/android/b/a/a;->b(I)V
const/4 v0, 0x5
aget-object v0, p0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v4, v0}, Lcom/admarvel/android/b/a/a;->a(I)V
const/4 v0, 0x6
aget-object v0, p0, v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {v4, v0}, Lcom/admarvel/android/b/a/a;->a(F)V
const/4 v0, 0x7
aget-object v0, p0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v4, v0}, Lcom/admarvel/android/b/a/a;->c(I)V
const/16 v0, 0x8
aget-object v0, p0, v0
invoke-static {v0}, Lcom/admarvel/android/b/a;->b(Ljava/lang/String;)J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Lcom/admarvel/android/b/a/a;->a(J)V
const/16 v0, 0x9
aget-object v0, p0, v0
invoke-static {v0}, Lcom/admarvel/android/b/a;->b(Ljava/lang/String;)J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Lcom/admarvel/android/b/a/a;->b(J)V
const-string v0, ""
const/16 v1, 0xa
:try_start_5d
aget-object v1, p0, v1
const-string v2, "UTF-8"
invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_64
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5d .. :try_end_64} :catch_b0
move-result-object v0
:goto_65
const-string v1, "&"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v0, v5
if-lez v0, :cond_f5
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
array-length v6, v5
move v2, v3
:goto_75
if-ge v2, v6, :cond_f2
aget-object v7, v5, v2
const-string v0, ";"
invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v8
array-length v0, v8
const/4 v9, 0x2
if-le v0, v9, :cond_f0
aget-object v0, v8, v3
invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_cc
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const-string v9, ";"
invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v9
add-int/lit8 v9, v9, 0x1
invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
const-string v9, ";"
invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
aget-object v7, v8, v3
invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v0, v1
:goto_ab
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_75
:catch_b0
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_65
:cond_cc
aget-object v0, v8, v3
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
const-string v9, ";"
invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v9
add-int/lit8 v9, v9, 0x1
invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
const-string v9, ";"
invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
aget-object v7, v8, v3
invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v0, v1
goto :goto_ab
:cond_f0
const/4 v0, 0x0
goto :goto_ab
:cond_f2
invoke-virtual {v4, v1}, Lcom/admarvel/android/b/a/a;->a(Ljava/util/HashMap;)V
:cond_f5
return-object v4
.end method
.method public static a(Ljava/lang/String;)Ljava/io/FileInputStream;
.registers 4
const/4 v0, 0x0
const-string v1, "/"
invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
const-string v0, "/"
invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_1a
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:goto_1f
:try_end_1f
.catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_20
.catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1f} :catch_3d
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_59
return-object v0
:catch_20
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:read file"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_3b
const/4 v0, 0x0
goto :goto_1f
:catch_3d
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:read file"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_3b
:catch_59
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:read file"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_3b
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
.registers 8
const/4 v1, 0x0
const-string v0, "Admarvel"
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v0
if-nez p0, :cond_c
move-object v0, v1
:cond_b
:goto_b
return-object v0
:cond_c
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_19
move-object v0, v1
goto :goto_b
:cond_19
:try_start_19
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v2, Ljava/io/ObjectInputStream;
invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_23
:try_end_23
.catchall {:try_start_19 .. :try_end_23} :catchall_15e
.catch Ljava/io/StreamCorruptedException; {:try_start_19 .. :try_end_23} :catch_c0
.catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_23} :catch_e7
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_10e
.catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_23} :catch_135
const-string v0, "BannerFolderName"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3f
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/b/a/b;
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_34
.catchall {:try_start_23 .. :try_end_34} :catchall_16b
.catch Ljava/io/StreamCorruptedException; {:try_start_23 .. :try_end_34} :catch_174
.catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_34} :catch_171
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_34} :catch_16f
.catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_34} :catch_16d
if-eqz v2, :cond_b
:try_start_36
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_39
.catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a
goto :goto_b
:catch_3a
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_b
:try_start_3f
:cond_3f
const-string v0, "/pixel_fire_list"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5b
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_50
.catchall {:try_start_3f .. :try_end_50} :catchall_16b
.catch Ljava/io/StreamCorruptedException; {:try_start_3f .. :try_end_50} :catch_174
.catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_50} :catch_171
.catch Ljava/io/IOException; {:try_start_3f .. :try_end_50} :catch_16f
.catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_50} :catch_16d
if-eqz v2, :cond_b
:try_start_52
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_55
.catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
goto :goto_b
:catch_56
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_b
:try_start_5b
:cond_5b
const-string v0, "/banner_folder_map"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_77
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_6c
.catchall {:try_start_5b .. :try_end_6c} :catchall_16b
.catch Ljava/io/StreamCorruptedException; {:try_start_5b .. :try_end_6c} :catch_174
.catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_6c} :catch_171
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_6c} :catch_16f
.catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_6c} :catch_16d
if-eqz v2, :cond_b
:try_start_6e
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_71
.catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72
goto :goto_b
:catch_72
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_b
:try_start_77
:cond_77
const-string v0, "/site_id_banner_map"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_95
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_88
.catchall {:try_start_77 .. :try_end_88} :catchall_16b
.catch Ljava/io/StreamCorruptedException; {:try_start_77 .. :try_end_88} :catch_174
.catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_88} :catch_171
.catch Ljava/io/IOException; {:try_start_77 .. :try_end_88} :catch_16f
.catch Ljava/lang/ClassNotFoundException; {:try_start_77 .. :try_end_88} :catch_16d
if-eqz v2, :cond_b
:try_start_8a
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_8d
.catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8f
goto/16 :goto_b
:catch_8f
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_b
:cond_95
:try_start_95
const-string v0, "/ad_link_object"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b3
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_a6
.catchall {:try_start_95 .. :try_end_a6} :catchall_16b
.catch Ljava/io/StreamCorruptedException; {:try_start_95 .. :try_end_a6} :catch_174
.catch Ljava/io/FileNotFoundException; {:try_start_95 .. :try_end_a6} :catch_171
.catch Ljava/io/IOException; {:try_start_95 .. :try_end_a6} :catch_16f
.catch Ljava/lang/ClassNotFoundException; {:try_start_95 .. :try_end_a6} :catch_16d
if-eqz v2, :cond_b
:try_start_a8
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_ab
.catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ad
goto/16 :goto_b
:catch_ad
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_b
:cond_b3
if-eqz v2, :cond_b8
:try_start_b5
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:cond_b8
:try_end_b8
.catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_bb
:goto_b8
move-object v0, v1
goto/16 :goto_b
:catch_bb
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_b8
:catch_c0
move-exception v0
move-object v2, v1
:goto_c2
:try_start_c2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Offline SDK:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_dc
.catchall {:try_start_c2 .. :try_end_dc} :catchall_16b
if-eqz v2, :cond_b8
:try_start_de
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_e1
.catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2
goto :goto_b8
:catch_e2
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_b8
:catch_e7
move-exception v0
move-object v2, v1
:goto_e9
:try_start_e9
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Offline SDK:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_103
.catchall {:try_start_e9 .. :try_end_103} :catchall_16b
if-eqz v2, :cond_b8
:try_start_105
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_108
.catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109
goto :goto_b8
:catch_109
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_b8
:catch_10e
move-exception v0
move-object v2, v1
:try_start_110
:goto_110
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Offline SDK:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_12a
.catchall {:try_start_110 .. :try_end_12a} :catchall_16b
if-eqz v2, :cond_b8
:try_start_12c
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_12f
.catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_130
goto :goto_b8
:catch_130
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_b8
:catch_135
move-exception v0
move-object v2, v1
:goto_137
:try_start_137
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Offline SDK:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_151
.catchall {:try_start_137 .. :try_end_151} :catchall_16b
if-eqz v2, :cond_b8
:try_start_153
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:try_end_156
.catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_158
goto/16 :goto_b8
:catch_158
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_b8
:catchall_15e
move-exception v0
move-object v2, v1
:goto_160
if-eqz v2, :cond_165
:try_start_162
invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
:goto_165
:cond_165
:try_end_165
.catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_166
throw v0
:catch_166
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_165
:catchall_16b
move-exception v0
goto :goto_160
:catch_16d
move-exception v0
goto :goto_137
:catch_16f
move-exception v0
goto :goto_110
:catch_171
move-exception v0
goto/16 :goto_e9
:catch_174
move-exception v0
goto/16 :goto_c2
.end method
.method public static a(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".admfiles"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_2b
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_2b
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_6d
const/16 v0, 0x4000
new-array v0, v0, [B
:try_start_55
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:goto_5d
invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_72
const/4 v4, 0x0
invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_68
.catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_68} :catch_69
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_68} :catch_76
goto :goto_5d
:catch_69
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
:goto_6d
:cond_6d
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
:try_start_72
:cond_72
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_75
.catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_75} :catch_69
.catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76
goto :goto_6d
:catch_76
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_6d
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 12
const/4 v0, 0x0
const-string v1, ""
new-instance v2, Ljava/io/File;
invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_64
const-string v3, "Offline: readData- file exist"
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_13
:goto_13
new-instance v5, Ljava/io/BufferedReader;
new-instance v3, Ljava/io/InputStreamReader;
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const/16 v4, 0x2000
move v2, v0
move v3, v4
:goto_2b
:cond_2b
const/4 v7, -0x1
if-eq v3, v7, :cond_6a
new-array v7, v4, [C
const/4 v3, 0x0
invoke-virtual {v5, v7, v3, v4}, Ljava/io/BufferedReader;->read([CII)I
move-result v3
if-lez v3, :cond_2b
new-instance v8, Lcom/admarvel/android/b/a$a;
const/4 v9, 0x0
invoke-direct {v8, v9}, Lcom/admarvel/android/b/a$a;-><init>(Lcom/admarvel/android/b/a$1;)V
iput-object v7, v8, Lcom/admarvel/android/b/a$a;->a:[C
iput v3, v8, Lcom/admarvel/android/b/a$a;->b:I
add-int/2addr v2, v3
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_45
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_45} :catch_46
goto :goto_2b
:catch_46
move-exception v0
if-eqz v0, :cond_63
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "error"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_63
:goto_63
return-object v1
:cond_64
const-string v3, "Offline: readData- file doesn\'t exist"
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_13
:try_start_6a
:cond_6a
invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
if-lez v2, :cond_95
new-array v4, v2, [C
move v2, v0
move v3, v0
:goto_73
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v0
if-ge v2, v0, :cond_8e
invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/b/a$a;
iget-object v5, v0, Lcom/admarvel/android/b/a$a;->a:[C
const/4 v7, 0x0
iget v8, v0, Lcom/admarvel/android/b/a$a;->b:I
invoke-static {v5, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, v0, Lcom/admarvel/android/b/a$a;->b:I
add-int/2addr v3, v0
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_73
:cond_8e
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
:try_end_93
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_93} :catch_46
:goto_93
move-object v1, v0
goto :goto_63
:cond_95
move-object v0, v1
goto :goto_93
.end method
.method public static a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
if-nez p1, :cond_3
:goto_2
return-void
:try_start_3
:cond_3
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
new-instance v0, Ljava/io/ObjectOutputStream;
invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_1b
.catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_1b} :catch_1c
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_38
goto :goto_2
:catch_1c
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_2
:catch_38
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_2
.end method
.method public static a(Ljava/io/File;Ljava/lang/String;)V
.registers 10
const/4 v7, 0x0
const/4 v1, 0x0
:try_start_2
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:goto_7
:try_end_7
.catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_56
new-instance v1, Lcom/admarvel/android/b/b;
new-instance v2, Ljava/io/InputStreamReader;
invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v2}, Lcom/admarvel/android/b/b;-><init>(Ljava/io/Reader;)V
invoke-virtual {v1}, Lcom/admarvel/android/b/b;->c()Ljava/util/ArrayList;
move-result-object v0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
if-eqz v0, :cond_7b
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_25
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_73
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
aget-object v6, v0, v7
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "_"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/4 v6, 0x1
aget-object v6, v0, v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
aget-object v0, v0, v7
invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_25
:catch_56
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Offline SDK:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object v0, v1
goto :goto_7
:try_start_73
:cond_73
invoke-virtual {v1}, Lcom/admarvel/android/b/b;->b()V
:try_end_76
.catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7c
:goto_76
const-string v0, "/banner_folder_map"
invoke-static {p0, v3, v0}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
:cond_7b
return-void
:catch_7c
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_76
.end method
.method public static b(Ljava/lang/String;)J
.registers 4
:try_start_0
const-string v0, "UTF-8"
invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "yyyy-MM-dd HH:mm"
invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v2, "GMT"
invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
:try_end_1d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1d} :catch_1f
.catch Ljava/text/ParseException; {:try_start_0 .. :try_end_1d} :catch_3d
move-result-wide v0
:goto_1e
return-wide v0
:catch_1f
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_3a
const-wide/16 v0, 0x0
goto :goto_1e
:catch_3d
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_3a
.end method
.method public static b(Ljava/io/File;Ljava/lang/String;)V
.registers 10
const/4 v7, 0x3
const/4 v6, 0x1
const/4 v1, 0x0
:try_start_3
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_end_8
.catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_57
:goto_8
new-instance v1, Lcom/admarvel/android/b/b;
new-instance v2, Ljava/io/InputStreamReader;
invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v2}, Lcom/admarvel/android/b/b;-><init>(Ljava/io/Reader;)V
invoke-virtual {v1}, Lcom/admarvel/android/b/b;->c()Ljava/util/ArrayList;
move-result-object v0
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_24
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_87
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/b/a;->a([Ljava/lang/String;)Lcom/admarvel/android/b/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->f()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
aget-object v1, v0, v6
invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_74
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
aget-object v5, v0, v7
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
aget-object v0, v0, v6
invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_24
:catch_57
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Offline SDK:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object v0, v1
goto :goto_8
:cond_74
aget-object v1, v0, v6
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
aget-object v5, v0, v7
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
aget-object v0, v0, v6
invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_24
:cond_87
const-string v0, "/ad_link_object"
invoke-static {p0, v2, v0}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "/site_id_banner_map"
invoke-static {p0, v3, v0}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public a(Landroid/content/Context;)V
.registers 10
const/16 v7, 0x32
const/4 v3, 0x0
const-string v0, "/pixel_fire_list"
const-string v1, "/pixel_fire_list"
invoke-static {v0, v1, p1}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
if-eqz v0, :cond_a0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-le v1, v7, :cond_53
move v2, v3
:goto_16
if-ge v2, v7, :cond_95
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v4, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v4, p1}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
iget-object v5, p0, Lcom/admarvel/android/b/a;->a:Landroid/os/Handler;
invoke-virtual {v4, v1, v5}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:fire pixel url :- "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_16
:cond_53
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_57
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_92
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v4, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v4, p1}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
iget-object v5, p0, Lcom/admarvel/android/b/a;->a:Landroid/os/Handler;
invoke-virtual {v4, v1, v5}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:fire pixel url :- "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_57
:cond_92
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
:cond_95
const-string v1, "Admarvel"
invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v1
const-string v2, "/pixel_fire_list"
invoke-static {v1, v0, v2}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
:cond_a0
return-void
.end method
.method public a(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;Landroid/os/Handler;)V
.registers 12
const/16 v7, 0x32
const/4 v3, 0x0
invoke-static {p2}, Lcom/admarvel/android/ads/AdMarvelUtils;->isNetworkAvailable(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_e4
const-string v0, "/pixel_fire_list"
const-string v1, "/pixel_fire_list"
invoke-static {v0, v1, p2}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
if-eqz v0, :cond_97
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-le v1, v7, :cond_57
move v2, v3
:goto_1c
if-ge v2, v7, :cond_97
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v4, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v4, p2}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
invoke-virtual {v4, v1, p3}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:fire pixel url :- "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1c
:cond_57
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_94
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v4, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v4, p2}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
invoke-virtual {v4, v1, p3}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:fire pixel url :- "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_5b
:cond_94
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
:cond_97
new-instance v2, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v2, p2}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getPixels()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_a4
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_d8
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1, p3}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Offline SDK:fire pixel url :- "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_a4
:cond_d8
const-string v1, "Admarvel"
invoke-virtual {p2, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v1
const-string v2, "/pixel_fire_list"
invoke-static {v1, v0, v2}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
:goto_e3
return-void
:cond_e4
const-string v0, "Offline SDK:No Internet available so saving pixel url in file "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getPixels()Ljava/util/List;
move-result-object v1
const-string v0, "Admarvel"
invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v2
const-string v0, "/pixel_fire_list"
const-string v3, "/pixel_fire_list"
invoke-static {v0, v3, p2}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
if-eqz v0, :cond_108
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:goto_102
const-string v1, "/pixel_fire_list"
invoke-static {v2, v0, v1}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_e3
:cond_108
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
goto :goto_102
.end method
.method public a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
.registers 12
const/16 v7, 0x32
const/4 v3, 0x0
invoke-static {p2}, Lcom/admarvel/android/ads/AdMarvelUtils;->isNetworkAvailable(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_b9
const-string v0, "/pixel_fire_list"
const-string v1, "/pixel_fire_list"
invoke-static {v0, v1, p2}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
if-eqz v0, :cond_97
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-le v1, v7, :cond_57
move v2, v3
:goto_1c
if-ge v2, v7, :cond_97
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v4, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v4, p2}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
invoke-virtual {v4, v1, p3}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:fire pixel url :- "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1c
:cond_57
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_94
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v4, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v4, p2}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
invoke-virtual {v4, v1, p3}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:fire pixel url :- "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_5b
:cond_94
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
:cond_97
new-instance v1, Lcom/admarvel/android/ads/AdMarvelUtils;
invoke-direct {v1, p2}, Lcom/admarvel/android/ads/AdMarvelUtils;-><init>(Landroid/content/Context;)V
const-string v2, "\\{timestamp\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, p3}, Lcom/admarvel/android/ads/AdMarvelUtils;->firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
const-string v1, "Admarvel"
invoke-virtual {p2, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v1
const-string v2, "/pixel_fire_list"
invoke-static {v1, v0, v2}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
:goto_b8
return-void
:cond_b9
const-string v0, "Admarvel"
invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v1
const-string v0, "/pixel_fire_list"
const-string v2, "/pixel_fire_list"
invoke-static {v0, v2, p2}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
const-string v2, "Offline SDK:No Internet available so saving pixel url in file "
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
if-eqz v0, :cond_d9
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_d3
const-string v2, "/pixel_fire_list"
invoke-static {v1, v0, v2}, Lcom/admarvel/android/b/a;->a(Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_b8
:cond_d9
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d3
.end method