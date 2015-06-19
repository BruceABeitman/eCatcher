.class public final Lcom/instagram/api/g/d;
.super Ljava/lang/Object;
.source "EndpointStats.java"
.field private final a:Ljava/lang/String;
.field private b:I
.field private c:I
.field private d:J
.field private e:J
.field private f:J
.field private g:J
.field private h:J
.field private i:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
const-wide/16 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/api/g/d;->a:Ljava/lang/String;
iput v2, p0, Lcom/instagram/api/g/d;->b:I
iput v2, p0, Lcom/instagram/api/g/d;->c:I
iput-wide v0, p0, Lcom/instagram/api/g/d;->d:J
iput-wide v0, p0, Lcom/instagram/api/g/d;->e:J
iput-wide v0, p0, Lcom/instagram/api/g/d;->f:J
iput-wide v0, p0, Lcom/instagram/api/g/d;->g:J
iput-wide v0, p0, Lcom/instagram/api/g/d;->h:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;
return-void
.end method
.method private a()J
.registers 3
iget-wide v0, p0, Lcom/instagram/api/g/d;->d:J
invoke-direct {p0, v0, v1}, Lcom/instagram/api/g/d;->a(J)J
move-result-wide v0
return-wide v0
.end method
.method private a(J)J
.registers 5
iget v0, p0, Lcom/instagram/api/g/d;->b:I
if-nez v0, :cond_7
const-wide/16 v0, 0x0
:goto_6
return-wide v0
:cond_7
iget v0, p0, Lcom/instagram/api/g/d;->b:I
int-to-long v0, v0
div-long v0, p1, v0
goto :goto_6
.end method
.method private b()J
.registers 3
iget-wide v0, p0, Lcom/instagram/api/g/d;->e:J
invoke-direct {p0, v0, v1}, Lcom/instagram/api/g/d;->a(J)J
move-result-wide v0
return-wide v0
.end method
.method private c()J
.registers 3
iget-wide v0, p0, Lcom/instagram/api/g/d;->f:J
invoke-direct {p0, v0, v1}, Lcom/instagram/api/g/d;->a(J)J
move-result-wide v0
return-wide v0
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;)V
.registers 7
const-wide/16 v3, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
iget-wide v0, p0, Lcom/instagram/api/g/d;->h:J
cmp-long v0, v0, v3
if-lez v0, :cond_12
const-string v0, "bytes_down"
iget-wide v1, p0, Lcom/instagram/api/g/d;->h:J
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
:cond_12
iget-wide v0, p0, Lcom/instagram/api/g/d;->g:J
cmp-long v0, v0, v3
if-lez v0, :cond_1f
const-string v0, "bytes_up"
iget-wide v1, p0, Lcom/instagram/api/g/d;->g:J
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
:cond_1f
invoke-direct {p0}, Lcom/instagram/api/g/d;->a()J
move-result-wide v0
cmp-long v0, v0, v3
if-lez v0, :cond_30
const-string v0, "upload_duration_ms"
invoke-direct {p0}, Lcom/instagram/api/g/d;->a()J
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
:cond_30
invoke-direct {p0}, Lcom/instagram/api/g/d;->b()J
move-result-wide v0
cmp-long v0, v0, v3
if-lez v0, :cond_41
const-string v0, "server_latency_ms"
invoke-direct {p0}, Lcom/instagram/api/g/d;->b()J
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
:cond_41
invoke-direct {p0}, Lcom/instagram/api/g/d;->c()J
move-result-wide v0
cmp-long v0, v0, v3
if-lez v0, :cond_52
const-string v0, "download_duration_ms"
invoke-direct {p0}, Lcom/instagram/api/g/d;->c()J
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
:cond_52
iget v0, p0, Lcom/instagram/api/g/d;->c:I
if-lez v0, :cond_5d
const-string v0, "failure_count"
iget v1, p0, Lcom/instagram/api/g/d;->c:I
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V
:cond_5d
iget-object v0, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;
if-eqz v0, :cond_68
const-string v0, "last_exception"
iget-object v1, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
:cond_68
const-string v0, "hit_count"
iget v1, p0, Lcom/instagram/api/g/d;->b:I
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V
const-string v0, "key"
iget-object v1, p0, Lcom/instagram/api/g/d;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method
.method public final a(Lcom/instagram/api/g/i;)V
.registers 6
iget-wide v0, p0, Lcom/instagram/api/g/d;->d:J
invoke-virtual {p1}, Lcom/instagram/api/g/i;->l()J
move-result-wide v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/instagram/api/g/d;->d:J
iget-wide v0, p0, Lcom/instagram/api/g/d;->e:J
invoke-virtual {p1}, Lcom/instagram/api/g/i;->m()J
move-result-wide v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/instagram/api/g/d;->e:J
iget-wide v0, p0, Lcom/instagram/api/g/d;->f:J
invoke-virtual {p1}, Lcom/instagram/api/g/i;->n()J
move-result-wide v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/instagram/api/g/d;->f:J
iget-wide v0, p0, Lcom/instagram/api/g/d;->g:J
invoke-virtual {p1}, Lcom/instagram/api/g/i;->i()J
move-result-wide v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/instagram/api/g/d;->g:J
iget-wide v0, p0, Lcom/instagram/api/g/d;->h:J
invoke-virtual {p1}, Lcom/instagram/api/g/i;->j()J
move-result-wide v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/instagram/api/g/d;->h:J
iget v0, p0, Lcom/instagram/api/g/d;->b:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/api/g/d;->b:I
return-void
.end method
.method public final a(Ljava/lang/Exception;)V
.registers 3
iget v0, p0, Lcom/instagram/api/g/d;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/api/g/d;->c:I
invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/api/g/d;->i:Ljava/lang/String;
return-void
.end method