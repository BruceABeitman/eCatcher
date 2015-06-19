.class public Lcom/facebook/katana/service/api/FacebookAlbum;
.super Ljava/lang/Object;
.source "FacebookAlbum.java"
.field public static final TYPE_MOBILE:Ljava/lang/String; = "mobile"
.field public static final TYPE_NORMAL:Ljava/lang/String; = "normal"
.field public static final TYPE_PROFILE:Ljava/lang/String; = "profile"
.field public static final TYPE_WALL:Ljava/lang/String; = "wall"
.field private final mAlbumCoverPhotoId:Ljava/lang/String;
.field private mAlbumCoverPhotoUrl:Ljava/lang/String;
.field private final mAlbumId:Ljava/lang/String;
.field private mCoverChanged:Z
.field private final mCreated:J
.field private final mDescription:Ljava/lang/String;
.field private final mImageBytes:[B
.field private final mLink:Ljava/lang/String;
.field private final mLocation:Ljava/lang/String;
.field private final mModified:J
.field private final mName:Ljava/lang/String;
.field private final mOwner:J
.field private final mSize:I
.field private final mType:Ljava/lang/String;
.field private final mVisibility:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
.registers 21
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mCoverChanged:Z
iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumId:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumCoverPhotoId:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumCoverPhotoUrl:Ljava/lang/String;
iput-wide p4, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mOwner:J
iput-object p6, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mName:Ljava/lang/String;
iput-wide p7, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mCreated:J
iput-wide p9, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mModified:J
iput-object p11, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mDescription:Ljava/lang/String;
iput-object p12, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mLocation:Ljava/lang/String;
move-object/from16 v0, p13
move-object v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mLink:Ljava/lang/String;
move/from16 v0, p14
move-object v1, p0
iput v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mSize:I
move-object/from16 v0, p15
move-object v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mVisibility:Ljava/lang/String;
move-object/from16 v0, p16
move-object v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mType:Ljava/lang/String;
move-object/from16 v0, p17
move-object v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mImageBytes:[B
return-void
.end method
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 25
invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V
const/16 v22, 0x0
move/from16 v0, v22
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mCoverChanged:Z
const/4 v3, 0x0
const-wide/16 v16, -0x1
const/4 v15, 0x0
const/4 v7, 0x0
const/4 v12, 0x0
const/4 v11, 0x0
const/4 v4, 0x0
const/16 v21, 0x0
const/16 v20, 0x0
const-wide/16 v5, -0x1
const-wide/16 v13, -0x1
const/16 v18, -0x1
const/4 v8, -0x1
const/4 v9, 0x0
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v19
:goto_23
sget-object v22, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v19
move-object/from16 v1, v22
if-ne v0, v1, :cond_37
if-lez v8, :cond_14e
new-instance v22, Lcom/facebook/katana/service/api/FacebookApiException;
move-object/from16 v0, v22
move v1, v8
move-object v2, v9
invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V
throw v22
:cond_37
sget-object v22, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v19
move-object/from16 v1, v22
if-ne v0, v1, :cond_ed
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
const-string v22, "aid"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_57
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
:cond_52
:goto_52
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v19
goto :goto_23
:cond_57
const-string v22, "cover_pid"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_67
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_52
:cond_67
const-string v22, "name"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_77
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v15
goto :goto_52
:cond_77
const-string v22, "description"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_87
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v7
goto :goto_52
:cond_87
const-string v22, "location"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_97
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v12
goto :goto_52
:cond_97
const-string v22, "link"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_a7
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v11
goto :goto_52
:cond_a7
const-string v22, "visible"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_b7
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v21
goto :goto_52
:cond_b7
const-string v22, "type"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_c7
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v20
goto :goto_52
:cond_c7
const-string v22, "error_msg"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_d8
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v9
goto/16 :goto_52
:cond_d8
const-string v22, "owner"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_52
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v22
invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v16
goto/16 :goto_52
:cond_ed
sget-object v22, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v19
move-object/from16 v1, v22
if-ne v0, v1, :cond_52
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
const-string v22, "owner"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_10a
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v16
goto/16 :goto_52
:cond_10a
const-string v22, "created"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_11b
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v5
goto/16 :goto_52
:cond_11b
const-string v22, "modified"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_12c
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v13
goto/16 :goto_52
:cond_12c
const-string v22, "size"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_13d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v18
goto/16 :goto_52
:cond_13d
const-string v22, "error_code"
move-object v0, v10
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_52
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v8
goto/16 :goto_52
:cond_14e
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumId:Ljava/lang/String;
move-wide/from16 v0, v16
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookAlbum;->mOwner:J
move-object v0, v15
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mName:Ljava/lang/String;
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumCoverPhotoId:Ljava/lang/String;
move-wide v0, v5
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookAlbum;->mCreated:J
move-wide v0, v13
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookAlbum;->mModified:J
move-object v0, v7
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mDescription:Ljava/lang/String;
move-object v0, v12
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mLocation:Ljava/lang/String;
move-object v0, v11
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mLink:Ljava/lang/String;
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mSize:I
move-object/from16 v0, v21
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mVisibility:Ljava/lang/String;
if-nez v20, :cond_19b
const-string v22, "normal"
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mType:Ljava/lang/String;
:goto_192
const/16 v22, 0x0
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mImageBytes:[B
return-void
:cond_19b
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookAlbum;->mType:Ljava/lang/String;
goto :goto_192
.end method
.method public static readFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/service/api/FacebookAlbum;
.registers 20
const/4 v6, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Lcom/facebook/katana/service/api/FacebookAlbum$AlbumQuery;->ALBUM_PROJECTION:[Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object/from16 v1, p1
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object p0
invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z
move-result p1
if-eqz p1, :cond_6e
new-instance v0, Lcom/facebook/katana/service/api/FacebookAlbum;
const/16 p1, 0x0
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 p1, 0x2
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/16 p1, 0x3
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/16 p1, 0x1
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
const/16 p1, 0x7
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const/16 p1, 0x5
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v7
const/16 p1, 0x6
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
const/16 p1, 0x8
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v11
const/16 p1, 0x9
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v12
const/4 v13, 0x0
const/16 p1, 0xa
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getInt(I)I
move-result v14
const/16 p1, 0xb
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v15
const/16 p1, 0xc
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v16
const/16 p1, 0x4
invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v17
invoke-direct/range {v0 .. v17}, Lcom/facebook/katana/service/api/FacebookAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
:goto_6a
invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V
return-object v0
:cond_6e
move-object v0, v6
goto :goto_6a
.end method
.method public static readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;
.registers 4
sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v1
return-object v1
.end method
.method public getAlbumId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumId:Ljava/lang/String;
return-object v0
.end method
.method public getCoverPhotoId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumCoverPhotoId:Ljava/lang/String;
return-object v0
.end method
.method public getCoverPhotoUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumCoverPhotoUrl:Ljava/lang/String;
return-object v0
.end method
.method public getCreated()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mCreated:J
return-wide v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mDescription:Ljava/lang/String;
return-object v0
.end method
.method public getImageBytes()[B
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mImageBytes:[B
return-object v0
.end method
.method public getLink()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mLink:Ljava/lang/String;
return-object v0
.end method
.method public getLocation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mLocation:Ljava/lang/String;
return-object v0
.end method
.method public getModified()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mModified:J
return-wide v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getOwner()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mOwner:J
return-wide v0
.end method
.method public getSize()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mSize:I
return v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mType:Ljava/lang/String;
return-object v0
.end method
.method public getVisibility()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mVisibility:Ljava/lang/String;
return-object v0
.end method
.method public hasCoverChanged()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mCoverChanged:Z
return v0
.end method
.method public setCoverChanged(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mCoverChanged:Z
return-void
.end method
.method public setCoverPhotoUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookAlbum;->mAlbumCoverPhotoUrl:Ljava/lang/String;
return-void
.end method