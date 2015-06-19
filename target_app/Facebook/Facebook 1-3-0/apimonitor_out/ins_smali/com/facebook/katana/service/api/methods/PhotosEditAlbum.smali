.class public Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosEditAlbum.java"
.field private final mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 16
const-string v2, "GET"
const-string v3, "photos.editAlbum"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
move-object v5, p9
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mContext:Landroid/content/Context;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v1, "call_id"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v1, "name"
invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v1, "aid"
invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p6, :cond_44
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v1, "location"
invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_44
if-eqz p7, :cond_4d
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v1, "description"
invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4d
if-eqz p8, :cond_56
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v1, "visible"
invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_56
return-void
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 10
const/4 v5, 0x0
const-string v7, "name"
const-string v6, "location"
const-string v4, "description"
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string v2, "name"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v3, "name"
invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "description"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v3, "description"
invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "location"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v3, "location"
invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "visibility"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v4, "visible"
invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v3, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mParams:Ljava/util/Map;
const-string v4, "aid"
invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosEditAlbum;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method