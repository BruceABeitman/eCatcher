.class public Lcom/ubermedia/b/i;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/net/Uri;ILcom/ubermedia/b/k;Landroid/content/Context;)V
.registers 10
const/4 v5, 0x0
if-eqz p0, :cond_42
invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_42
new-instance v0, Lcom/ubermedia/b/j;
invoke-direct {v0, p3, p2}, Lcom/ubermedia/b/j;-><init>(Landroid/content/Context;Lcom/ubermedia/b/k;)V
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ec_tmp_img_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v5
const/4 v2, 0x1
aput-object p0, v1, v2
const/4 v2, 0x2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/ubermedia/b/j;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:goto_41
return-void
:cond_42
const-string v0, "Can\'t process an image"
invoke-static {p3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_41
.end method
.method public static a(Landroid/net/Uri;[Ljava/lang/String;ZLandroid/content/Context;Lcom/ubermedia/b/k;)V
.registers 16
invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "content://com.android.gallery3d.provider"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_fb
invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "com.android.gallery3d"
const-string v2, "com.google.android.gallery3d"
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
:goto_1c
const/4 v6, 0x0
:try_start_1d
invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object v2, p1
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_32
move-result-object v0
:goto_29
const/4 v2, 0x0
const/4 v3, -0x1
const/4 v4, 0x0
if-nez v0, :cond_35
invoke-static {v1, v3, p4, p3}, Lcom/ubermedia/b/i;->a(Landroid/net/Uri;ILcom/ubermedia/b/k;Landroid/content/Context;)V
:goto_31
:cond_31
return-void
:catch_32
move-exception v0
move-object v0, v6
goto :goto_29
:cond_35
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
array-length v5, p1
if-lez v5, :cond_48
const/4 v5, 0x0
aget-object v5, p1, v5
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v5
if-ltz v5, :cond_48
invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
:cond_48
array-length v5, p1
const/4 v6, 0x2
if-le v5, v6, :cond_59
const/4 v5, 0x2
aget-object v5, p1, v5
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v5
if-ltz v5, :cond_59
invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v3
:cond_59
array-length v5, p1
const/4 v6, 0x3
if-le v5, v6, :cond_6a
const/4 v5, 0x3
aget-object v5, p1, v5
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v5
if-ltz v5, :cond_6a
invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v4
:cond_6a
invoke-interface {v0}, Landroid/database/Cursor;->close()V
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v5, "content://com.google.android.gallery3d"
invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7d
invoke-static {v1, v3, p4, p3}, Lcom/ubermedia/b/i;->a(Landroid/net/Uri;ILcom/ubermedia/b/k;Landroid/content/Context;)V
goto :goto_31
:cond_7d
if-eqz v2, :cond_85
move-object v0, p4
move v5, p2
invoke-interface/range {v0 .. v5}, Lcom/ubermedia/b/k;->a(Landroid/net/Uri;Ljava/lang/String;IIZ)V
goto :goto_31
:cond_85
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x13
if-lt v0, v2, :cond_31
invoke-static {v1}, Lcom/ubermedia/b/i;->b(Landroid/net/Uri;)Z
move-result v0
if-eqz v0, :cond_94
invoke-static {v1, v3, p4, p3}, Lcom/ubermedia/b/i;->a(Landroid/net/Uri;ILcom/ubermedia/b/k;Landroid/content/Context;)V
:cond_94
invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
:try_start_98
const-string v2, ":"
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v5, 0x1
aget-object v0, v2, v5
:try_end_a1
.catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a1} :catch_f9
:goto_a1
const/4 v2, 0x1
new-array v7, v2, [Ljava/lang/String;
const/4 v2, 0x0
const-string v5, "_data"
aput-object v5, v7, v2
const-string v8, "_id=?"
invoke-static {v1}, Lcom/ubermedia/b/i;->a(Landroid/net/Uri;)Z
move-result v2
if-eqz v2, :cond_f1
const-string v2, "content://downloads/public_downloads"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v6
:goto_c3
invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v5
const/4 v2, 0x1
new-array v9, v2, [Ljava/lang/String;
const/4 v2, 0x0
aput-object v0, v9, v2
const/4 v10, 0x0
invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
const-string v2, ""
const/4 v5, 0x0
aget-object v5, v7, v5
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v5
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v6
if-eqz v6, :cond_e5
invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
:cond_e5
invoke-interface {v0}, Landroid/database/Cursor;->close()V
if-eqz v2, :cond_f4
move-object v0, p4
move v5, p2
invoke-interface/range {v0 .. v5}, Lcom/ubermedia/b/k;->a(Landroid/net/Uri;Ljava/lang/String;IIZ)V
goto/16 :goto_31
:cond_f1
sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
goto :goto_c3
:cond_f4
invoke-interface {p4}, Lcom/ubermedia/b/k;->a()V
goto/16 :goto_31
:catch_f9
move-exception v2
goto :goto_a1
:cond_fb
move-object v1, p0
goto/16 :goto_1c
.end method
.method public static a(Landroid/net/Uri;)Z
.registers 3
const-string v0, "com.android.providers.downloads.documents"
invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static b(Landroid/net/Uri;)Z
.registers 3
invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v0
const-string v1, "com.google.android.apps.docs"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method