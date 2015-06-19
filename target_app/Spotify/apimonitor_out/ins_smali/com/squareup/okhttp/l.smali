.class public final Lcom/squareup/okhttp/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/l;->a:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/l;
.registers 6
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "ISO-8859-1"
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->b()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/squareup/okhttp/l;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Basic "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/squareup/okhttp/l;-><init>(Ljava/lang/String;)V
:try_end_39
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_39} :catch_3a
return-object v1
:catch_3a
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/l;->a:Ljava/lang/String;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/squareup/okhttp/l;
if-eqz v0, :cond_12
check-cast p1, Lcom/squareup/okhttp/l;
iget-object v0, p1, Lcom/squareup/okhttp/l;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/squareup/okhttp/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/l;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/l;->a:Ljava/lang/String;
return-object v0
.end method