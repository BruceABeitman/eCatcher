.class public final Lcom/bbm/util/fa;
.super Ljava/lang/Object;
.source "Utf8Decoder.java"
.field private final a:Ljava/nio/charset/CharsetDecoder;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "UTF-8"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/fa;->a:Ljava/nio/charset/CharsetDecoder;
iget-object v0, p0, Lcom/bbm/util/fa;->a:Ljava/nio/charset/CharsetDecoder;
sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;
invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
iget-object v0, p0, Lcom/bbm/util/fa;->a:Ljava/nio/charset/CharsetDecoder;
sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;
invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
return-void
.end method
.method public final a([B)Ljava/lang/String;
.registers 12
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/util/fa;->a:Ljava/nio/charset/CharsetDecoder;
invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;
array-length v0, p1
new-array v3, v0, [C
invoke-static {v3}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;
move-result-object v4
invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v5
:cond_12
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v6
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I
move-result v7
invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I
move-result v8
iget-object v9, p0, Lcom/bbm/util/fa;->a:Ljava/nio/charset/CharsetDecoder;
if-nez v6, :cond_5a
move v0, v1
:goto_23
invoke-virtual {v9, v5, v4, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
move-result-object v9
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I
move-result v0
if-eq v7, v0, :cond_5c
invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I
move-result v0
if-ne v8, v0, :cond_5c
move v0, v1
:goto_34
invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->isError()Z
move-result v8
if-nez v8, :cond_3c
if-eqz v0, :cond_4e
:cond_3c
iget-object v0, p0, Lcom/bbm/util/fa;->a:Ljava/nio/charset/CharsetDecoder;
invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->replacement()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I
move-result v0
if-ne v7, v0, :cond_4e
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B
:cond_4e
if-nez v6, :cond_12
new-instance v0, Ljava/lang/String;
invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I
move-result v1
invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V
return-object v0
:cond_5a
move v0, v2
goto :goto_23
:cond_5c
move v0, v2
goto :goto_34
.end method