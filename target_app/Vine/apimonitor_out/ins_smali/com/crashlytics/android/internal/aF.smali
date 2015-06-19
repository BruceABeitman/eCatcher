.class public final Lcom/crashlytics/android/internal/aF;
.super Ljava/io/BufferedOutputStream;
.source "SourceFile"
.field private final a:Ljava/nio/charset/CharsetEncoder;
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
.registers 5
invoke-direct {p0, p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
invoke-static {p2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;
move-result-object v0
iput-object v0, p0, Lcom/crashlytics/android/internal/aF;->a:Ljava/nio/charset/CharsetEncoder;
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/crashlytics/android/internal/aF;
.registers 5
iget-object v0, p0, Lcom/crashlytics/android/internal/aF;->a:Ljava/nio/charset/CharsetEncoder;
invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
invoke-super {p0, v1, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
return-object p0
.end method