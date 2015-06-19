.class public final Lcom/squareup/okhttp/internal/http/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/squareup/okhttp/internal/http/u;
.field private b:Lcom/squareup/okhttp/internal/http/ak;
.field private c:Lcom/squareup/okhttp/i;
.field private d:Lcom/squareup/okhttp/internal/http/f;
.field private e:Lcom/squareup/okhttp/internal/http/aa;
.field private f:Lcom/squareup/okhttp/internal/http/z;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->d:Lcom/squareup/okhttp/internal/http/f;
return-void
.end method
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/z;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/z;->b(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->a:Lcom/squareup/okhttp/internal/http/u;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/z;->c(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/ak;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/z;->d(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/i;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->c:Lcom/squareup/okhttp/i;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/z;->e(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->b()Lcom/squareup/okhttp/internal/http/f;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->d:Lcom/squareup/okhttp/internal/http/f;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/z;->f(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->e:Lcom/squareup/okhttp/internal/http/aa;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/z;->g(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->f:Lcom/squareup/okhttp/internal/http/z;
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/z;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/ab;-><init>(Lcom/squareup/okhttp/internal/http/z;)V
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/u;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->a:Lcom/squareup/okhttp/internal/http/u;
return-object v0
.end method
.method static synthetic b(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/ak;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->b:Lcom/squareup/okhttp/internal/http/ak;
return-object v0
.end method
.method static synthetic c(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/i;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->c:Lcom/squareup/okhttp/i;
return-object v0
.end method
.method static synthetic d(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/f;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->d:Lcom/squareup/okhttp/internal/http/f;
return-object v0
.end method
.method static synthetic e(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/aa;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->e:Lcom/squareup/okhttp/internal/http/aa;
return-object v0
.end method
.method static synthetic f(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/z;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->f:Lcom/squareup/okhttp/internal/http/z;
return-object v0
.end method
.method public final a(Lcom/squareup/okhttp/ResponseSource;)Lcom/squareup/okhttp/internal/http/ab;
.registers 5
sget-object v0, Lcom/squareup/okhttp/internal/http/t;->d:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ab;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/ak;->c()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/squareup/okhttp/i;)Lcom/squareup/okhttp/internal/http/ab;
.registers 2
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ab;->c:Lcom/squareup/okhttp/i;
return-object p0
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/aa;)Lcom/squareup/okhttp/internal/http/ab;
.registers 2
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ab;->e:Lcom/squareup/okhttp/internal/http/aa;
return-object p0
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/ak;)Lcom/squareup/okhttp/internal/http/ab;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "statusLine == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ab;->b:Lcom/squareup/okhttp/internal/http/ak;
return-object p0
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/ab;
.registers 3
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/e;->b()Lcom/squareup/okhttp/internal/http/f;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->d:Lcom/squareup/okhttp/internal/http/f;
return-object p0
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/ab;
.registers 2
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ab;->a:Lcom/squareup/okhttp/internal/http/u;
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
.registers 4
:try_start_0
new-instance v0, Lcom/squareup/okhttp/internal/http/ak;
invoke-direct {v0, p1}, Lcom/squareup/okhttp/internal/http/ak;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/ak;)Lcom/squareup/okhttp/internal/http/ab;
:try_end_8
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a
move-result-object v0
return-object v0
:catch_a
move-exception v0
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->d:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
return-object p0
.end method
.method public final a()Lcom/squareup/okhttp/internal/http/z;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->a:Lcom/squareup/okhttp/internal/http/u;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "request == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->b:Lcom/squareup/okhttp/internal/http/ak;
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "statusLine == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
new-instance v0, Lcom/squareup/okhttp/internal/http/z;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/z;-><init>(Lcom/squareup/okhttp/internal/http/ab;B)V
return-object v0
.end method
.method public final b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->d:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
return-object p0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ab;->d:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
return-object p0
.end method