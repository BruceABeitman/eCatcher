.class public Lco/vine/android/network/MultipartEntity$ByteArrayEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"
.implements Lco/vine/android/network/MultipartEntity$Entity;
.field private final mValue:[B
.method public constructor <init>([B)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;->mValue:[B
return-void
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;->mValue:[B
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 3
iget-object v0, p0, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;->mValue:[B
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
return-void
.end method