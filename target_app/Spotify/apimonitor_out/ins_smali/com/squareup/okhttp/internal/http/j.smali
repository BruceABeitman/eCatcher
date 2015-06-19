.class final Lcom/squareup/okhttp/internal/http/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a/o;
.field final synthetic a:Lcom/squareup/okhttp/internal/http/h;
.field private final b:[B
.field private c:Z
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/h;)V
.registers 3
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/j;->a:Lcom/squareup/okhttp/internal/http/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x12
new-array v0, v0, [B
fill-array-data v0, :array_10
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/j;->b:[B
return-void
nop
:array_10
.array-data 0x1
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0x0t
0xdt
0xat
.end array-data
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/h;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/j;-><init>(Lcom/squareup/okhttp/internal/http/h;)V
return-void
.end method
.method private a(J)V
.registers 8
const/16 v0, 0x10
:cond_2
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/j;->b:[B
add-int/lit8 v0, v0, -0x1
invoke-static {}, Lcom/squareup/okhttp/internal/http/h;->i()[B
move-result-object v2
const-wide/16 v3, 0xf
and-long/2addr v3, p1
long-to-int v3, v3
aget-byte v2, v2, v3
aput-byte v2, v1, v0
const/4 v1, 0x4
ushr-long/2addr p1, v1
const-wide/16 v1, 0x0
cmp-long v1, p1, v1
if-nez v1, :cond_2
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/j;->a:Lcom/squareup/okhttp/internal/http/h;
invoke-static {v1}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v1
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/j;->b:[B
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/j;->b:[B
array-length v3, v3
sub-int/2addr v3, v0
invoke-interface {v1, v2, v0, v3}, Lcom/squareup/okhttp/internal/a/b;->a([BII)Lcom/squareup/okhttp/internal/a/b;
return-void
.end method
.method public final declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/j;->c:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_11
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/j;->a:Lcom/squareup/okhttp/internal/http/h;
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
:try_end_10
.catchall {:try_start_7 .. :try_end_10} :catchall_11
goto :goto_5
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
.registers 6
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/j;->c:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const-wide/16 v0, 0x0
cmp-long v0, p2, v0
if-nez v0, :cond_13
:goto_12
return-void
:cond_13
invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/http/j;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/j;->a:Lcom/squareup/okhttp/internal/http/h;
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/i;J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/j;->a:Lcom/squareup/okhttp/internal/http/h;
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
const-string v1, "\r\n"
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
goto :goto_12
.end method
.method public final declared-synchronized close()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/j;->c:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1e
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:cond_7
const/4 v0, 0x1
:try_start_8
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/j;->c:Z
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/j;->a:Lcom/squareup/okhttp/internal/http/h;
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
invoke-static {}, Lcom/squareup/okhttp/internal/http/h;->h()[B
move-result-object v1
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a([B)Lcom/squareup/okhttp/internal/a/b;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/j;->a:Lcom/squareup/okhttp/internal/http/h;
const/4 v1, 0x3
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/h;I)I
:try_end_1d
.catchall {:try_start_8 .. :try_end_1d} :catchall_1e
goto :goto_5
:catchall_1e
move-exception v0
monitor-exit p0
throw v0
.end method