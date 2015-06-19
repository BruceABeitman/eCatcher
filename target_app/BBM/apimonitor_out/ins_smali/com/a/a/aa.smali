.class public final Lcom/a/a/aa;
.super Ljava/io/BufferedReader;
.source "VCardParserImpl_V21.java"
.field private a:J
.field private b:Z
.field private c:Ljava/lang/String;
.method public constructor <init>(Ljava/io/Reader;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 8
iget-boolean v0, p0, Lcom/a/a/aa;->b:Z
if-nez v0, :cond_1c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-wide v5, p0, Lcom/a/a/aa;->a:J
sub-long v0, v3, v0
add-long/2addr v0, v5
iput-wide v0, p0, Lcom/a/a/aa;->a:J
iput-object v2, p0, Lcom/a/a/aa;->c:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/a/a/aa;->b:Z
:cond_1c
iget-object v0, p0, Lcom/a/a/aa;->c:Ljava/lang/String;
return-object v0
.end method
.method public final readLine()Ljava/lang/String;
.registers 8
iget-boolean v0, p0, Lcom/a/a/aa;->b:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/a/a/aa;->c:Ljava/lang/String;
const/4 v1, 0x0
iput-object v1, p0, Lcom/a/a/aa;->c:Ljava/lang/String;
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/a/a/aa;->b:Z
:goto_c
return-object v0
:cond_d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-wide v5, p0, Lcom/a/a/aa;->a:J
sub-long v1, v3, v1
add-long/2addr v1, v5
iput-wide v1, p0, Lcom/a/a/aa;->a:J
goto :goto_c
.end method