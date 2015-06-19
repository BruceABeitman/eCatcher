.class public final Lcom/squareup/okhttp/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a;
.field  a:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
return-void
.end method
.method private static e(I)I
.registers 6
if-ltz p0, :cond_6
const/16 v0, 0x3f
if-le p0, v0, :cond_1c
:cond_6
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "input must be between 0 and 63: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
return p0
.end method
.method public final a()V
.registers 3
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
return-void
.end method
.method public final a(I)V
.registers 7
iget-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
const-wide/16 v2, 0x1
invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->e(I)I
move-result v4
shl-long/2addr v2, v4
or-long/2addr v0, v2
iput-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
return-void
.end method
.method public final b()Lcom/squareup/okhttp/internal/a;
.registers 3
new-instance v0, Lcom/squareup/okhttp/internal/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/c;-><init>(Lcom/squareup/okhttp/internal/b;B)V
return-object v0
.end method
.method public final b(I)V
.registers 7
iget-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
const-wide/16 v2, 0x1
invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->e(I)I
move-result v4
shl-long/2addr v2, v4
xor-long/2addr v0, v2
iput-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
return-void
.end method
.method public final c(I)Z
.registers 7
const-wide/16 v3, 0x1
iget-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->e(I)I
move-result v2
shr-long/2addr v0, v2
and-long/2addr v0, v3
cmp-long v0, v0, v3
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public final d(I)V
.registers 5
iget-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->e(I)I
move-result v2
shl-long/2addr v0, v2
iput-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lcom/squareup/okhttp/internal/b;->a:J
invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method