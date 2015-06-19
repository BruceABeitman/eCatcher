.class public final Lcom/squareup/okhttp/internal/http/w;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/net/URL;
.field private b:Ljava/lang/String;
.field private c:Lcom/squareup/okhttp/internal/http/f;
.field private d:Lcom/squareup/okhttp/internal/http/v;
.field private e:Ljava/lang/Object;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "GET"
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->b:Ljava/lang/String;
new-instance v0, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->c:Lcom/squareup/okhttp/internal/http/f;
return-void
.end method
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/u;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/u;->a(Lcom/squareup/okhttp/internal/http/u;)Ljava/net/URL;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->a:Ljava/net/URL;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/u;->b(Lcom/squareup/okhttp/internal/http/u;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->b:Ljava/lang/String;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/u;->c(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/v;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->d:Lcom/squareup/okhttp/internal/http/v;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/u;->d(Lcom/squareup/okhttp/internal/http/u;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->e:Ljava/lang/Object;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/u;->e(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->b()Lcom/squareup/okhttp/internal/http/f;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->c:Lcom/squareup/okhttp/internal/http/f;
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/u;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/w;-><init>(Lcom/squareup/okhttp/internal/http/u;)V
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/http/w;)Ljava/net/URL;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->a:Ljava/net/URL;
return-object v0
.end method
.method static synthetic b(Lcom/squareup/okhttp/internal/http/w;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->b:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/squareup/okhttp/internal/http/w;)Lcom/squareup/okhttp/internal/http/f;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->c:Lcom/squareup/okhttp/internal/http/f;
return-object v0
.end method
.method static synthetic d(Lcom/squareup/okhttp/internal/http/w;)Lcom/squareup/okhttp/internal/http/v;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->d:Lcom/squareup/okhttp/internal/http/v;
return-object v0
.end method
.method static synthetic e(Lcom/squareup/okhttp/internal/http/w;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->e:Ljava/lang/Object;
return-object v0
.end method
.method public final a()Lcom/squareup/okhttp/internal/http/u;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->a:Ljava/net/URL;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "url == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
new-instance v0, Lcom/squareup/okhttp/internal/http/u;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/u;-><init>(Lcom/squareup/okhttp/internal/http/w;B)V
return-object v0
.end method
.method public final a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
.registers 4
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_10
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "method == null || method.length() == 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/w;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->d:Lcom/squareup/okhttp/internal/http/v;
return-object p0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->c:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
return-object p0
.end method
.method public final a(Ljava/net/URL;)Lcom/squareup/okhttp/internal/http/w;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "url == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/w;->a:Ljava/net/URL;
return-object p0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/w;->c:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
return-object p0
.end method