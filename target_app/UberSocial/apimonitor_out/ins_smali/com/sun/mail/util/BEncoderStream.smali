.class public Lcom/sun/mail/util/BEncoderStream;
.super Lcom/sun/mail/util/BASE64EncoderStream;
.source "SourceFile"
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 3
const v0, 0x7fffffff
invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
return-void
.end method
.method public static encodedLength([B)I
.registers 2
array-length v0, p0
add-int/lit8 v0, v0, 0x2
div-int/lit8 v0, v0, 0x3
mul-int/lit8 v0, v0, 0x4
return v0
.end method