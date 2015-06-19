.class public Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;
.super Ljava/io/DataInputStream;
.source "HybiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codebutler/android_websockets/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HappyDataInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readBytes(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->readFully([B)V

    return-object v0
.end method
