.class public final Lcom/squareup/okhttp/internal/http/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final g:[B
.field private static final h:[B
.field private final a:Lcom/squareup/okhttp/h;
.field private final b:Lcom/squareup/okhttp/g;
.field private final c:Lcom/squareup/okhttp/internal/a/c;
.field private final d:Lcom/squareup/okhttp/internal/a/b;
.field private e:I
.field private f:I
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [B
fill-array-data v0, :array_12
sput-object v0, Lcom/squareup/okhttp/internal/http/h;->g:[B
const/4 v0, 0x5
new-array v0, v0, [B
fill-array-data v0, :array_1e
sput-object v0, Lcom/squareup/okhttp/internal/http/h;->h:[B
return-void
:array_1e
.array-data 0x1
0x30t
0xdt
0xat
0xdt
0xat
.end array-data
:array_12
.array-data 0x1
0x30t
0x31t
0x32t
0x33t
0x34t
0x35t
0x36t
0x37t
0x38t
0x39t
0x61t
0x62t
0x63t
0x64t
0x65t
0x66t
.end array-data
.end method
.method public constructor <init>(Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/a/c;Lcom/squareup/okhttp/internal/a/b;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->f:I
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/h;->a:Lcom/squareup/okhttp/h;
iput-object p2, p0, Lcom/squareup/okhttp/internal/http/h;->b:Lcom/squareup/okhttp/g;
iput-object p3, p0, Lcom/squareup/okhttp/internal/http/h;->c:Lcom/squareup/okhttp/internal/a/c;
iput-object p4, p0, Lcom/squareup/okhttp/internal/http/h;->d:Lcom/squareup/okhttp/internal/a/b;
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/http/h;I)I
.registers 2
iput p1, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
return p1
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/b;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->d:Lcom/squareup/okhttp/internal/a/b;
return-object v0
.end method
.method static synthetic b(Lcom/squareup/okhttp/internal/http/h;)I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
return v0
.end method
.method static synthetic c(Lcom/squareup/okhttp/internal/http/h;)I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->f:I
return v0
.end method
.method static synthetic d(Lcom/squareup/okhttp/internal/http/h;)I
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->f:I
return v0
.end method
.method static synthetic e(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/g;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->b:Lcom/squareup/okhttp/g;
return-object v0
.end method
.method static synthetic f(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/h;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->a:Lcom/squareup/okhttp/h;
return-object v0
.end method
.method static synthetic g(Lcom/squareup/okhttp/internal/http/h;)Lcom/squareup/okhttp/internal/a/c;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->c:Lcom/squareup/okhttp/internal/a/c;
return-object v0
.end method
.method static synthetic h()[B
.registers 1
sget-object v0, Lcom/squareup/okhttp/internal/http/h;->h:[B
return-object v0
.end method
.method static synthetic i()[B
.registers 1
sget-object v0, Lcom/squareup/okhttp/internal/http/h;->g:[B
return-object v0
.end method
.method public final a(J)Lcom/squareup/okhttp/internal/a/o;
.registers 6
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x1
if-eq v0, v1, :cond_1c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x2
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
new-instance v0, Lcom/squareup/okhttp/internal/http/l;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/l;-><init>(Lcom/squareup/okhttp/internal/http/h;JB)V
return-object v0
.end method
.method public final a(Ljava/net/CacheRequest;)Lcom/squareup/okhttp/internal/a/p;
.registers 5
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x4
if-eq v0, v1, :cond_1c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x5
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
new-instance v0, Lcom/squareup/okhttp/internal/http/n;
invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/n;-><init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;)V
return-object v0
.end method
.method public final a(Ljava/net/CacheRequest;J)Lcom/squareup/okhttp/internal/a/p;
.registers 7
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x4
if-eq v0, v1, :cond_1c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x5
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
new-instance v0, Lcom/squareup/okhttp/internal/http/m;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/m;-><init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;J)V
return-object v0
.end method
.method public final a(Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/p;)Lcom/squareup/okhttp/internal/a/p;
.registers 6
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x4
if-eq v0, v1, :cond_1c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x5
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
new-instance v0, Lcom/squareup/okhttp/internal/http/k;
invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/k;-><init>(Lcom/squareup/okhttp/internal/http/h;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/p;)V
return-object v0
.end method
.method public final a()V
.registers 3
const/4 v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->f:I
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
if-nez v0, :cond_11
const/4 v0, 0x0
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->f:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->a:Lcom/squareup/okhttp/h;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/h;->b:Lcom/squareup/okhttp/g;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/g;)V
:cond_11
return-void
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/ag;)V
.registers 5
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x1
if-eq v0, v1, :cond_1c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x3
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->d:Lcom/squareup/okhttp/internal/a/b;
invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/ag;->a(Lcom/squareup/okhttp/internal/a/b;)V
return-void
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)V
.registers 6
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
if-eqz v0, :cond_1b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->d:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0, p2}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
const-string v1, "\r\n"
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
const/4 v0, 0x0
:goto_27
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v1
if-ge v0, v1, :cond_4d
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/h;->d:Lcom/squareup/okhttp/internal/a/b;
invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v1
const-string v2, ": "
invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v1
invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v1
const-string v2, "\r\n"
invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_4d
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->d:Lcom/squareup/okhttp/internal/a/b;
const-string v1, "\r\n"
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
const/4 v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
return-void
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/f;)V
.registers 4
:goto_0
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->c:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_10
invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
goto :goto_0
:cond_10
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->b:Lcom/squareup/okhttp/g;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/g;->b(Ljava/lang/Object;)V
return-void
.end method
.method public final a(Lcom/squareup/okhttp/internal/a/p;)Z
.registers 5
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->b:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->e()Ljava/net/Socket;
move-result-object v1
:try_start_6
invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
move-result v2
const/16 v0, 0x64
invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V
:try_start_f
:try_end_f
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_1c
invoke-static {p1}, Lcom/squareup/okhttp/internal/o;->a(Lcom/squareup/okhttp/internal/a/p;)Z
:try_end_12
.catchall {:try_start_f .. :try_end_12} :catchall_17
move-result v0
:try_start_13
invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
:goto_16
return v0
:catchall_17
move-exception v0
invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
throw v0
:try_end_1c
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_1c
:catch_1c
move-exception v0
const/4 v0, 0x0
goto :goto_16
.end method
.method public final b()V
.registers 2
const/4 v0, 0x2
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->f:I
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
if-nez v0, :cond_f
const/4 v0, 0x6
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->b:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->close()V
:cond_f
return-void
.end method
.method public final c()Z
.registers 3
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x6
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->d:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
return-void
.end method
.method public final e()Lcom/squareup/okhttp/internal/http/ab;
.registers 5
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x1
if-eq v0, v1, :cond_21
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x3
if-eq v0, v1, :cond_21
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/h;->c:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/squareup/okhttp/internal/http/ak;
invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/ak;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/squareup/okhttp/internal/http/ab;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/ab;-><init>()V
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/ak;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
sget-object v2, Lcom/squareup/okhttp/internal/http/t;->e:Ljava/lang/String;
sget-object v3, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
iget-object v3, v3, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/http/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
new-instance v2, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/f;)V
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/ab;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ak;->c()I
move-result v1
const/16 v2, 0x64
if-eq v1, v2, :cond_21
const/4 v1, 0x4
iput v1, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
return-object v0
.end method
.method public final f()Lcom/squareup/okhttp/internal/a/o;
.registers 4
iget v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
const/4 v1, 0x1
if-eq v0, v1, :cond_1c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "state: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x2
iput v0, p0, Lcom/squareup/okhttp/internal/http/h;->e:I
new-instance v0, Lcom/squareup/okhttp/internal/http/j;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/j;-><init>(Lcom/squareup/okhttp/internal/http/h;B)V
return-object v0
.end method
.method public final g()V
.registers 4
const/4 v0, 0x0
const-wide/16 v1, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/net/CacheRequest;J)Lcom/squareup/okhttp/internal/a/p;
return-void
.end method