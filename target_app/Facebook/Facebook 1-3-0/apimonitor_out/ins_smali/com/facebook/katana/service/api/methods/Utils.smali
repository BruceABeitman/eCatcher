.class  Lcom/facebook/katana/service/api/methods/Utils;
.super Ljava/lang/Object;
.source "Utils.java"
.field private static final ALBUM_PROJECTION:[Ljava/lang/String; = null
.field private static final SNIPPET_LENGTH:I = 0x3c
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "size"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/service/api/methods/Utils;->ALBUM_PROJECTION:[Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static buildSnippet(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/16 v2, 0x3c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v2, :cond_16
const/4 v1, 0x0
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:goto_d
const-string v1, "\n"
const-string v2, " "
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
:cond_16
move-object v0, p0
goto :goto_d
.end method
.method public static setAlbumsSize(Landroid/content/Context;Ljava/lang/String;I)V
.registers 12
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/facebook/katana/service/api/methods/Utils;->ALBUM_PROJECTION:[Ljava/lang/String;
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_31
const/4 v2, 0x0
invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v7
if-eq v7, p2, :cond_31
new-instance v8, Landroid/content/ContentValues;
invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V
const-string v2, "size"
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:cond_31
invoke-interface {v6}, Landroid/database/Cursor;->close()V
return-void
.end method