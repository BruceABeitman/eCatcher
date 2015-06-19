.class public Lcom/facebook/katana/util/RingtoneUtils;
.super Ljava/lang/Object;
.source "RingtoneUtils.java"
.field private static final FILENAME:Ljava/lang/String; = "/sdcard/media/audio/notifications/facebook_ringtone_pop.m4a"
.field private static final PATH:Ljava/lang/String; = "/sdcard/media/audio/notifications"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createFacebookRingtone(Landroid/content/Context;)Landroid/net/Uri;
.registers 10
new-instance v6, Ljava/io/File;
const-string v0, "/sdcard/media/audio/notifications/facebook_ringtone_pop.m4a"
invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_3d
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
const-string v1, "pop.m4a"
invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
invoke-virtual {v1}, Ljava/io/InputStream;->available()I
move-result v0
new-array v0, v0, [B
invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
new-instance v1, Ljava/io/File;
const-string v2, "/sdcard/media/audio/notifications"
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
new-instance v1, Ljava/io/FileOutputStream;
const-string v2, "/sdcard/media/audio/notifications/facebook_ringtone_pop.m4a"
invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:cond_3d
const/4 v7, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const/4 v2, 0x0
const-string v3, "_data=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
const-string v8, "/sdcard/media/audio/notifications/facebook_ringtone_pop.m4a"
aput-object v8, v4, v5
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_9e
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_9c
const-string v1, "_id"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
move-object v2, v7
:cond_63
sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
if-eqz v2, :cond_94
move-object v1, v2
:goto_7d
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_80
if-nez v1, :cond_93
new-instance v0, Landroid/content/Intent;
const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
:cond_93
return-object v1
:cond_94
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v3
if-nez v3, :cond_63
move-object v1, v2
goto :goto_7d
:cond_9c
move-object v1, v7
goto :goto_7d
:cond_9e
move-object v1, v7
goto :goto_80
.end method
.method public static deleteFacebookRingtone(Landroid/content/Context;)V
.registers 7
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const-string v2, "_data=?"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
const-string v5, "/sdcard/media/audio/notifications/facebook_ringtone_pop.m4a"
aput-object v5, v3, v4
invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method