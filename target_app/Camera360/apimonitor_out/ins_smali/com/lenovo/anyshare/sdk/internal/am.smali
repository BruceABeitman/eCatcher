.class public final Lcom/lenovo/anyshare/sdk/internal/am;
.super Ljava/lang/Object;
.source "ContactUtils.java"
.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
.registers 13
const/4 v9, 0x0
const/4 v3, 0x0
sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
int-to-long v4, p1
invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/String;
const-string/jumbo v4, "lookup"
aput-object v4, v2, v9
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
const/4 v8, 0x0
if-nez v6, :cond_1f
:goto_1e
return-object v3
:try_start_1f
:cond_1f
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
:try_end_22
.catchall {:try_start_1f .. :try_end_22} :catchall_41
move-result v0
if-nez v0, :cond_2a
invoke-interface {v6}, Landroid/database/Cursor;->close()V
const/4 v6, 0x0
goto :goto_1e
:try_start_2a
:cond_2a
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v0, 0x0
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;
invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
:try_end_37
.catchall {:try_start_2a .. :try_end_37} :catchall_41
move-result-object v8
invoke-interface {v6}, Landroid/database/Cursor;->close()V
const/4 v6, 0x0
invoke-static {p0, v8, p2}, Lcom/lenovo/anyshare/sdk/internal/am;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
move-result-object v3
goto :goto_1e
:catchall_41
move-exception v0
invoke-interface {v6}, Landroid/database/Cursor;->close()V
const/4 v6, 0x0
throw v0
.end method
.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
.registers 15
const/4 v5, 0x0
const/4 v3, 0x0
:try_start_2
new-instance v1, Ljava/io/File;
invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v8
if-nez v8, :cond_10
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
:cond_10
new-instance v4, Ljava/io/BufferedInputStream;
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v8
invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v8
invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_1d
:try_end_1d
.catchall {:try_start_2 .. :try_end_1d} :catchall_6d
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_12d
new-instance v6, Ljava/io/BufferedOutputStream;
new-instance v8, Ljava/io/FileOutputStream;
invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_27
.catchall {:try_start_1d .. :try_end_27} :catchall_124
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_130
const/16 v8, 0x400
:try_start_29
new-array v0, v8, [B
:goto_2b
invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I
move-result v7
const/4 v8, -0x1
if-eq v7, v8, :cond_60
const/4 v8, 0x0
invoke-virtual {v6, v0, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
:try_end_36
.catchall {:try_start_29 .. :try_end_36} :catchall_128
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_36} :catch_37
goto :goto_2b
:catch_37
move-exception v2
move-object v3, v4
move-object v5, v6
:try_start_3a
:goto_3a
const-string/jumbo v8, "EntityUtils"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "IOException: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_54
.catchall {:try_start_3a .. :try_end_54} :catchall_6d
if-eqz v3, :cond_59
:try_start_56
invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
:cond_59
:goto_59
:try_end_59
.catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_b1
if-eqz v5, :cond_5e
:try_start_5b
invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
:try_end_5e
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_cd
:goto_5e
:cond_5e
const/4 v1, 0x0
:goto_5f
return-object v1
:cond_60
if-eqz v4, :cond_65
:try_start_62
invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
:try_end_65
.catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_ea
:cond_65
:goto_65
if-eqz v6, :cond_6a
:try_start_67
invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
:goto_6a
:cond_6a
:try_end_6a
.catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_107
move-object v3, v4
move-object v5, v6
goto :goto_5f
:catchall_6d
move-exception v8
:goto_6e
if-eqz v3, :cond_73
:try_start_70
invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
:cond_73
:goto_73
:try_end_73
.catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_79
if-eqz v5, :cond_78
:try_start_75
invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
:goto_78
:cond_78
:try_end_78
.catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_95
throw v8
:catch_79
move-exception v2
const-string/jumbo v9, "EntityUtils"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "IOException: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_73
:catch_95
move-exception v2
const-string/jumbo v9, "EntityUtils"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "IOException: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_78
:catch_b1
move-exception v2
const-string/jumbo v8, "EntityUtils"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "IOException: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_59
:catch_cd
move-exception v2
const-string/jumbo v8, "EntityUtils"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "IOException: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_5e
:catch_ea
move-exception v2
const-string/jumbo v8, "EntityUtils"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "IOException: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_65
:catch_107
move-exception v2
const-string/jumbo v8, "EntityUtils"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "IOException: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6a
:catchall_124
move-exception v8
move-object v3, v4
goto/16 :goto_6e
:catchall_128
move-exception v8
move-object v3, v4
move-object v5, v6
goto/16 :goto_6e
:catch_12d
move-exception v2
goto/16 :goto_3a
:catch_130
move-exception v2
move-object v3, v4
goto/16 :goto_3a
.end method
.method public static b(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;
.registers 18
sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
move/from16 v0, p1
int-to-long v12, v0
invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v10
const/4 v7, 0x0
const/4 v4, 0x0
:try_start_b
new-instance v2, Ljava/io/File;
move-object/from16 v0, p2
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v11
if-nez v11, :cond_1b
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
:cond_1b
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v11
invoke-static {v11, v10}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
:try_end_22
.catchall {:try_start_b .. :try_end_22} :catchall_86
.catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_180
move-result-object v6
if-nez v6, :cond_31
const/4 v2, 0x0
if-eqz v4, :cond_2b
:try_start_28
invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
:goto_2b
:cond_2b
:try_end_2b
.catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_103
if-eqz v7, :cond_30
:try_start_2d
invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
:goto_30
:cond_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_120
return-object v2
:cond_31
:try_start_31
new-instance v5, Ljava/io/BufferedInputStream;
invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_36
:try_end_36
.catchall {:try_start_31 .. :try_end_36} :catchall_86
.catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_180
new-instance v8, Ljava/io/BufferedOutputStream;
new-instance v11, Ljava/io/FileOutputStream;
invoke-direct {v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_40
.catchall {:try_start_36 .. :try_end_40} :catchall_177
.catch Ljava/io/IOException; {:try_start_36 .. :try_end_40} :catch_183
const/16 v11, 0x400
:try_start_42
new-array v1, v11, [B
:goto_44
invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I
move-result v9
const/4 v11, -0x1
if-eq v9, v11, :cond_79
const/4 v11, 0x0
invoke-virtual {v8, v1, v11, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
:try_end_4f
.catchall {:try_start_42 .. :try_end_4f} :catchall_17b
.catch Ljava/io/IOException; {:try_start_42 .. :try_end_4f} :catch_50
goto :goto_44
:catch_50
move-exception v3
move-object v4, v5
move-object v7, v8
:goto_53
:try_start_53
const-string/jumbo v11, "EntityUtils"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "IOException: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_6d
.catchall {:try_start_53 .. :try_end_6d} :catchall_86
if-eqz v4, :cond_72
:try_start_6f
invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
:cond_72
:goto_72
:try_end_72
.catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_ca
if-eqz v7, :cond_77
:try_start_74
invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
:cond_77
:try_end_77
.catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_e6
:goto_77
const/4 v2, 0x0
goto :goto_30
:cond_79
if-eqz v5, :cond_7e
:try_start_7b
invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
:try_end_7e
.catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_13d
:goto_7e
:cond_7e
if-eqz v8, :cond_83
:try_start_80
invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
:goto_83
:try_end_83
.catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_15a
:cond_83
move-object v4, v5
move-object v7, v8
goto :goto_30
:catchall_86
move-exception v11
:goto_87
if-eqz v4, :cond_8c
:try_start_89
invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
:goto_8c
:try_end_8c
.catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_92
:cond_8c
if-eqz v7, :cond_91
:try_start_8e
invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
:goto_91
:cond_91
:try_end_91
.catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_ae
throw v11
:catch_92
move-exception v3
const-string/jumbo v12, "EntityUtils"
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v14, "IOException: "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8c
:catch_ae
move-exception v3
const-string/jumbo v12, "EntityUtils"
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v14, "IOException: "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v12, v13}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_91
:catch_ca
move-exception v3
const-string/jumbo v11, "EntityUtils"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "IOException: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_72
:catch_e6
move-exception v3
const-string/jumbo v11, "EntityUtils"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "IOException: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_77
:catch_103
move-exception v3
const-string/jumbo v11, "EntityUtils"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "IOException: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2b
:catch_120
move-exception v3
const-string/jumbo v11, "EntityUtils"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "IOException: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_30
:catch_13d
move-exception v3
const-string/jumbo v11, "EntityUtils"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "IOException: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_7e
:catch_15a
move-exception v3
const-string/jumbo v11, "EntityUtils"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "IOException: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_83
:catchall_177
move-exception v11
move-object v4, v5
goto/16 :goto_87
:catchall_17b
move-exception v11
move-object v4, v5
move-object v7, v8
goto/16 :goto_87
:catch_180
move-exception v3
goto/16 :goto_53
:catch_183
move-exception v3
move-object v4, v5
goto/16 :goto_53
.end method