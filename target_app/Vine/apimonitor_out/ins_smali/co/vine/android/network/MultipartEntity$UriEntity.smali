.class public Lco/vine/android/network/MultipartEntity$UriEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"
.implements Lco/vine/android/network/MultipartEntity$Entity;
.field private final mContext:Landroid/content/Context;
.field private final mUri:Landroid/net/Uri;
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mUri:Landroid/net/Uri;
iput-object p1, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mContext:Landroid/content/Context;
return-void
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 3
iget-object v0, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mUri:Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 7
iget-object v3, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
iget-object v4, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mUri:Landroid/net/Uri;
invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v1
const/16 v3, 0x1000
new-array v0, v3, [B
:goto_10
invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
move-result v2
if-lez v2, :cond_1b
const/4 v3, 0x0
invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
goto :goto_10
:cond_1b
return-void
.end method