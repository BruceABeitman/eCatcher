.class public final Lcom/squareup/okhttp/internal/http/ak;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:I
.field private final c:I
.field private final d:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 9
const/16 v6, 0x20
const/16 v1, 0x9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "HTTP/1."
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_52
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lt v0, v1, :cond_1d
const/16 v0, 0x8
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
if-eq v0, v6, :cond_32
:cond_1d
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected status line: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_32
const/4 v0, 0x7
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
add-int/lit8 v0, v0, -0x30
if-ltz v0, :cond_3d
if-le v0, v1, :cond_5c
:cond_3d
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected status line: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_52
const-string v0, "ICY "
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_79
const/4 v0, 0x0
const/4 v1, 0x4
:cond_5c
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v3, v1, 0x3
if-ge v2, v3, :cond_8e
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected status line: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_79
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected status line: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8e
add-int/lit8 v2, v1, 0x3
:try_start_90
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_97
.catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_97} :catch_bf
move-result v3
const-string v2, ""
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
add-int/lit8 v5, v1, 0x3
if-le v4, v5, :cond_e4
add-int/lit8 v2, v1, 0x3
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v2, v6, :cond_d5
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected status line: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:catch_bf
move-exception v0
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected status line: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d5
add-int/lit8 v1, v1, 0x4
invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
:goto_db
iput-object v1, p0, Lcom/squareup/okhttp/internal/http/ak;->d:Ljava/lang/String;
iput v3, p0, Lcom/squareup/okhttp/internal/http/ak;->c:I
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ak;->a:Ljava/lang/String;
iput v0, p0, Lcom/squareup/okhttp/internal/http/ak;->b:I
return-void
:cond_e4
move-object v1, v2
goto :goto_db
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ak;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()I
.registers 3
iget v0, p0, Lcom/squareup/okhttp/internal/http/ak;->b:I
const/4 v1, -0x1
if-eq v0, v1, :cond_8
iget v0, p0, Lcom/squareup/okhttp/internal/http/ak;->b:I
:goto_7
return v0
:cond_8
const/4 v0, 0x1
goto :goto_7
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/internal/http/ak;->c:I
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ak;->d:Ljava/lang/String;
return-object v0
.end method