.class Ljavax/mail/internet/MimeUtility$1NullInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
