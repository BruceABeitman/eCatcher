.class public final Lcom/instagram/creation/photo/gallery/f;
.super Lcom/instagram/creation/photo/gallery/b;
.source "ImageList.java"
.implements Lcom/instagram/creation/photo/gallery/d;
.field static final g:[Ljava/lang/String;
.field private static final h:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v5, [Ljava/lang/String;
const-string v1, "image/jpeg"
aput-object v1, v0, v2
const-string v1, "image/png"
aput-object v1, v0, v3
const-string v1, "image/gif"
aput-object v1, v0, v4
sput-object v0, Lcom/instagram/creation/photo/gallery/f;->h:[Ljava/lang/String;
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
const-string v1, "_id"
aput-object v1, v0, v2
const-string v1, "_data"
aput-object v1, v0, v3
const-string v1, "datetaken"
aput-object v1, v0, v4
const-string v1, "mini_thumb_magic"
aput-object v1, v0, v5
const/4 v1, 0x4
const-string v2, "orientation"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "title"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "mime_type"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "date_modified"
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/creation/photo/gallery/f;->g:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/creation/photo/gallery/b;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
return-void
.end method
.method private f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/f;->e:Ljava/lang/String;
if-nez v0, :cond_7
const-string v0, "(mime_type in (?, ?, ?))"
:goto_6
return-object v0
:cond_7
const-string v0, "(mime_type in (?, ?, ?)) AND bucket_id = ?"
goto :goto_6
.end method
.method private g()[Ljava/lang/String;
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/f;->e:Ljava/lang/String;
if-eqz v0, :cond_16
sget-object v0, Lcom/instagram/creation/photo/gallery/f;->h:[Ljava/lang/String;
array-length v1, v0
add-int/lit8 v0, v1, 0x1
new-array v0, v0, [Ljava/lang/String;
sget-object v2, Lcom/instagram/creation/photo/gallery/f;->h:[Ljava/lang/String;
invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/f;->e:Ljava/lang/String;
aput-object v2, v0, v1
:goto_15
return-object v0
:cond_16
sget-object v0, Lcom/instagram/creation/photo/gallery/f;->h:[Ljava/lang/String;
goto :goto_15
.end method
.method protected final a(Landroid/database/Cursor;)Lcom/instagram/creation/photo/gallery/a;
.registers 18
const/4 v1, 0x0
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
const/4 v1, 0x1
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
const/4 v1, 0x2
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v12
const-wide/16 v1, 0x0
cmp-long v1, v12, v1
if-nez v1, :cond_26
const/4 v1, 0x7
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const-wide/16 v6, 0x3e8
mul-long v12, v1, v6
:cond_26
const/4 v1, 0x3
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
const/4 v1, 0x4
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v15
const/4 v1, 0x5
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v14
const/4 v1, 0x6
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v11
if-eqz v14, :cond_4a
invoke-virtual {v14}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_4b
:cond_4a
move-object v14, v8
:cond_4b
new-instance v1, Lcom/instagram/creation/photo/gallery/e;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/instagram/creation/photo/gallery/f;->a:Landroid/content/ContentResolver;
invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I
move-result v6
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Lcom/instagram/creation/photo/gallery/f;->a(J)Landroid/net/Uri;
move-result-object v7
move-object/from16 v2, p0
invoke-direct/range {v1 .. v15}, Lcom/instagram/creation/photo/gallery/e;-><init>(Lcom/instagram/creation/photo/gallery/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;I)V
return-object v1
.end method
.method protected final b(Landroid/database/Cursor;)J
.registers 4
const/4 v0, 0x0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v0
return-wide v0
.end method
.method protected final d()Landroid/database/Cursor;
.registers 7
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/f;->a:Landroid/content/ContentResolver;
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/f;->c:Landroid/net/Uri;
sget-object v2, Lcom/instagram/creation/photo/gallery/f;->g:[Ljava/lang/String;
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/f;->f()Ljava/lang/String;
move-result-object v3
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/f;->g()[Ljava/lang/String;
move-result-object v4
invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/f;->e()Ljava/lang/String;
move-result-object v5
invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method