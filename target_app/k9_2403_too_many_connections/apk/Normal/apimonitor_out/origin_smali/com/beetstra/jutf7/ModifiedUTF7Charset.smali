.class Lcom/beetstra/jutf7/ModifiedUTF7Charset;
.super Lcom/beetstra/jutf7/UTF7StyleCharset;
.source "ModifiedUTF7Charset.java"


# static fields
.field private static final MODIFIED_BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method canEncodeDirectly(C)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/beetstra/jutf7/ModifiedUTF7Charset;->shift()B

    move-result v0

    if-ne p1, v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x20

    if-lt p1, v0, :cond_13

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    move v0, v1

    goto :goto_8
.end method

.method shift()B
    .registers 2

    const/16 v0, 0x26

    return v0
.end method

.method unshift()B
    .registers 2

    const/16 v0, 0x2d

    return v0
.end method
