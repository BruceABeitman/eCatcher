.class public Lcom/tencent/qzone/Albums;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method public addAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qzone/Albums$AlbumSecurity;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 13
invoke-virtual {p0}, Lcom/tencent/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v0, "albumname"
if-nez p1, :cond_c
const-string/jumbo p1, ""
:cond_c
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "albumdesc"
if-nez p2, :cond_17
const-string/jumbo p2, ""
:cond_17
invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "priv"
if-nez p3, :cond_51
sget-object v0, Lcom/tencent/qzone/Albums$AlbumSecurity;->publicToAll:Lcom/tencent/qzone/Albums$AlbumSecurity;
invoke-virtual {v0}, Lcom/tencent/qzone/Albums$AlbumSecurity;->getSecurity()Ljava/lang/String;
move-result-object v0
:goto_25
invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "question"
if-nez p4, :cond_30
const-string/jumbo p4, ""
:cond_30
invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "answer"
if-nez p5, :cond_3b
const-string/jumbo p5, ""
:cond_3b
invoke-virtual {v3, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p6}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/qzone/Albums;->mContext:Landroid/content/Context;
const-string/jumbo v2, "photo/add_album"
const-string/jumbo v4, "POST"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
:cond_51
invoke-virtual {p3}, Lcom/tencent/qzone/Albums$AlbumSecurity;->getSecurity()Ljava/lang/String;
move-result-object v0
goto :goto_25
.end method
.method public listAlbum(Lcom/tencent/tauth/IUiListener;)V
.registers 8
invoke-virtual {p0}, Lcom/tencent/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/qzone/Albums;->mContext:Landroid/content/Context;
const-string/jumbo v2, "photo/list_album"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method
.method public listPhotos(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 9
invoke-virtual {p0}, Lcom/tencent/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v0, "albumid"
if-nez p1, :cond_c
const-string/jumbo p1, ""
:cond_c
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p2}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/qzone/Albums;->mContext:Landroid/content/Context;
const-string/jumbo v2, "photo/list_photo"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method
.method public uploadPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
.registers 13
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p6}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
:try_start_5
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/16 v2, 0x400
new-array v2, v2, [B
:goto_13
invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_24
const/4 v4, 0x0
invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_1e
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_1e} :catch_1f
goto :goto_13
:catch_1f
move-exception v0
invoke-virtual {v5, v0}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->onIOException(Ljava/io/IOException;)V
:goto_23
return-void
:cond_24
:try_start_24
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_2d
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_1f
move-result-object v0
invoke-virtual {p0}, Lcom/tencent/qzone/Albums;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "picture"
invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
const-string/jumbo v0, "photodesc"
if-nez p2, :cond_45
const-string/jumbo p2, ""
:cond_45
invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "title"
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p3, :cond_5f
const-string/jumbo v0, "albumid"
if-nez p3, :cond_5c
const-string/jumbo p3, ""
:cond_5c
invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_5f
const-string/jumbo v0, "x"
if-nez p4, :cond_67
const-string/jumbo p4, ""
:cond_67
invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "y"
if-nez p5, :cond_72
const-string/jumbo p5, ""
:cond_72
invoke-virtual {v3, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/qzone/Albums;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/qzone/Albums;->mContext:Landroid/content/Context;
const-string/jumbo v2, "photo/upload_pic"
const-string/jumbo v4, "POST"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
goto :goto_23
.end method