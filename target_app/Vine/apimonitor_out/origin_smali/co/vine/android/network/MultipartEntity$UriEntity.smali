.class public Lco/vine/android/network/MultipartEntity$UriEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lco/vine/android/network/MultipartEntity$Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/network/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriEntity"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lco/vine/android/network/MultipartEntity$UriEntity;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
