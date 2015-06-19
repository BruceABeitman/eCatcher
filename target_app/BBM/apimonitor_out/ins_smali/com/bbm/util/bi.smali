.class public final Lcom/bbm/util/bi;
.super Ljava/lang/Object;
.source "FileTransferUtil.java"
.method public static a(Landroid/content/Context;)Ljava/io/File;
.registers 4
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
const-string v2, "tmp/transfer"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v1
const-string v2, "file"
invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_54
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4c
:goto_4b
return-object v0
:cond_4c
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/bbm/util/bj;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4b
:cond_54
const-string v2, "text/x-vcard"
invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_83
invoke-static {p0, p1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_83
if-eqz v1, :cond_81
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v2
const-string v3, "http"
invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_80
const-string v3, "https"
invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_81
:cond_80
const/4 v0, 0x1
:cond_81
if-eqz v0, :cond_88
:cond_83
invoke-static {p0, p1}, Lcom/bbm/util/bi;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
goto :goto_4b
:cond_88
move-object v0, v1
goto :goto_4b
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/d/ex;)Ljava/lang/String;
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v2, p1, Lcom/bbm/d/ex;->b:Ljava/lang/String;
const v0, 0x7f0e036a
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f0e036b
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
const-string v3, "audio/amr"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3e
const v0, 0x7f0e036c
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f0e036d
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:cond_28
:goto_28
iget-boolean v2, p1, Lcom/bbm/d/ex;->g:Z
if-eqz v2, :cond_9d
iget-object v2, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v3, Lcom/bbm/d/ez;->d:Lcom/bbm/d/ez;
if-ne v2, v3, :cond_6c
const v0, 0x7f0e0357
new-array v2, v5, [Ljava/lang/Object;
aput-object v1, v2, v4
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_3d
return-object v0
:cond_3e
const-string v3, "text/x-vcard"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_55
const v0, 0x7f0e0368
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f0e0369
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_28
:cond_55
const-string v3, "text/x-vcalendar"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_28
const v0, 0x7f0e0366
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f0e0367
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_28
:cond_6c
iget-object v1, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v2, Lcom/bbm/d/ez;->c:Lcom/bbm/d/ez;
if-ne v1, v2, :cond_7d
iget-object v0, p1, Lcom/bbm/d/ex;->a:Lcom/bbm/d/ey;
invoke-virtual {v0}, Lcom/bbm/d/ey;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3d
:cond_7d
iget-object v1, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v2, Lcom/bbm/d/ez;->b:Lcom/bbm/d/ez;
if-ne v1, v2, :cond_8f
const v1, 0x7f0e0358
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_3d
:cond_8f
iget-object v0, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v1, Lcom/bbm/d/ez;->a:Lcom/bbm/d/ez;
if-ne v0, v1, :cond_e3
const v0, 0x7f0e034e
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_3d
:cond_9d
iget-object v2, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v3, Lcom/bbm/d/ez;->d:Lcom/bbm/d/ez;
if-ne v2, v3, :cond_af
const v0, 0x7f0e0362
new-array v2, v5, [Ljava/lang/Object;
aput-object v1, v2, v4
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_3d
:cond_af
iget-object v1, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v2, Lcom/bbm/d/ez;->c:Lcom/bbm/d/ez;
if-ne v1, v2, :cond_c1
iget-object v0, p1, Lcom/bbm/d/ex;->a:Lcom/bbm/d/ey;
invoke-virtual {v0}, Lcom/bbm/d/ey;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_3d
:cond_c1
iget-object v1, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v2, Lcom/bbm/d/ez;->b:Lcom/bbm/d/ez;
if-ne v1, v2, :cond_d4
const v1, 0x7f0e035f
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_3d
:cond_d4
iget-object v0, p1, Lcom/bbm/d/ex;->i:Lcom/bbm/d/ez;
sget-object v1, Lcom/bbm/d/ez;->a:Lcom/bbm/d/ez;
if-ne v0, v1, :cond_e3
const v0, 0x7f0e0365
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_3d
:cond_e3
const-string v0, ""
goto/16 :goto_3d
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/d/fs;)Ljava/lang/String;
.registers 5
const v2, 0x7f0e035a
iget-boolean v0, p1, Lcom/bbm/d/fs;->h:Z
if-eqz v0, :cond_4b
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_15
const v0, 0x7f0e0356
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_14
return-object v0
:cond_15
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->b:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_20
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_20
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_2e
const v0, 0x7f0e0359
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_2e
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_8f
iget-boolean v0, p1, Lcom/bbm/d/fs;->m:Z
if-eqz v0, :cond_40
const v0, 0x7f0e0352
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_40
iget-object v0, p1, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
invoke-virtual {v0}, Lcom/bbm/d/ft;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_4b
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_59
const v0, 0x7f0e0365
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_59
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->b:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_64
invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_64
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_72
const v0, 0x7f0e0361
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_72
iget-object v0, p1, Lcom/bbm/d/fs;->l:Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
if-ne v0, v1, :cond_8f
iget-boolean v0, p1, Lcom/bbm/d/fs;->m:Z
if-eqz v0, :cond_84
const v0, 0x7f0e0353
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_84
iget-object v0, p1, Lcom/bbm/d/fs;->j:Lcom/bbm/d/ft;
invoke-virtual {v0}, Lcom/bbm/d/ft;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_14
:cond_8f
const-string v0, ""
goto :goto_14
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-eqz p0, :cond_11a
const-string v0, "GeneralFailure"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
const v0, 0x7f0e0342
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_11
return-object v0
:cond_12
const-string v0, "LocalUnsupported"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
const v0, 0x7f0e0344
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_22
const-string v0, "RemoteUnsupported"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32
const v0, 0x7f0e0349
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_32
const-string v0, "Declined"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
const v0, 0x7f0e033f
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_42
const-string v0, "LocalCancel"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_52
const v0, 0x7f0e0343
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_52
const-string v0, "RemoteCancel"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_62
const v0, 0x7f0e0346
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_62
const-string v0, "Expired"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_72
const v0, 0x7f0e0340
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_72
const-string v0, "TooLarge"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_82
const v0, 0x7f0e034b
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_82
const-string v0, "WriteError"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_92
const v0, 0x7f0e034d
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_92
const-string v0, "FileNotFound"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a3
const v0, 0x7f0e0341
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_a3
const-string v0, "AccessDenied"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b4
const v0, 0x7f0e033d
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_b4
const-string v0, "ReadError"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c5
const v0, 0x7f0e0345
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_c5
const-string v0, "Timeout"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d6
const v0, 0x7f0e034a
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_d6
const-string v0, "RemoteInterrupted"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e7
const v0, 0x7f0e0348
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_e7
const-string v0, "TooMany"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f8
const v0, 0x7f0e034c
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_f8
const-string v0, "ConversationEnded"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_109
const v0, 0x7f0e033e
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_109
const-string v0, "RemoteIdentityChanged"
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11a
const v0, 0x7f0e0347
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_11
:cond_11a
const-string v0, ""
goto/16 :goto_11
.end method
.method private static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.registers 9
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_6a
const/4 v0, 0x0
:goto_10
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_a8
const-string v2, "."
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_86
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_33
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v2
const/16 v3, 0x400
new-array v3, v3, [B
:goto_5f
invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_9e
invoke-virtual {v1, v3, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
goto :goto_5f
:cond_6a
const-string v1, "text/x-vcard"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_7a
const-string v1, "text/vcard"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7d
:cond_7a
const-string v0, ".vcf"
goto :goto_10
:cond_7d
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_86
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_33
:cond_9e
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
return-object v0
:cond_a8
move-object v0, v1
goto :goto_33
.end method