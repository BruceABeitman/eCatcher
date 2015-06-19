.class final Lcom/c/a/i;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"
.field final synthetic a:Lcom/c/a/h;
.method constructor <init>(Lcom/c/a/h;I)V
.registers 3
iput-object p1, p0, Lcom/c/a/i;->a:Lcom/c/a/h;
invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 6
iget v0, p0, Lcom/c/a/i;->count:I
if-lez v0, :cond_27
iget-object v0, p0, Lcom/c/a/i;->buf:[B
iget v1, p0, Lcom/c/a/i;->count:I
add-int/lit8 v1, v1, -0x1
aget-byte v0, v0, v1
const/16 v1, 0xd
if-ne v0, v1, :cond_27
iget v0, p0, Lcom/c/a/i;->count:I
add-int/lit8 v0, v0, -0x1
:try_start_14
:goto_14
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lcom/c/a/i;->buf:[B
const/4 v3, 0x0
iget-object v4, p0, Lcom/c/a/i;->a:Lcom/c/a/h;
invoke-static {v4}, Lcom/c/a/h;->a(Lcom/c/a/h;)Ljava/nio/charset/Charset;
move-result-object v4
invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
:try_end_26
.catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_26} :catch_2a
return-object v1
:cond_27
iget v0, p0, Lcom/c/a/i;->count:I
goto :goto_14
:catch_2a
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method