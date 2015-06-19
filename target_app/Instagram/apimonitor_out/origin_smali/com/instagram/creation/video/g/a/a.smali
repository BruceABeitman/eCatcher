.class public final Lcom/instagram/creation/video/g/a/a;
.super Lcom/instagram/creation/video/g/a/f;
.source "CodecNotSupportedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/g/a/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/creation/video/g/a/a;
    .registers 4

    new-instance v0, Lcom/instagram/creation/video/g/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported codec for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/creation/video/g/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
