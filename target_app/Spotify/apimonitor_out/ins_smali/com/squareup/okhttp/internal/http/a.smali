.class public final Lcom/squareup/okhttp/internal/http/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final d:Lcom/squareup/okhttp/internal/http/aa;
.field private static final e:Lcom/squareup/okhttp/internal/http/ak;
.field public final a:Lcom/squareup/okhttp/internal/http/u;
.field public final b:Lcom/squareup/okhttp/internal/http/z;
.field public final c:Lcom/squareup/okhttp/ResponseSource;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/squareup/okhttp/internal/http/a$1;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/a$1;-><init>()V
sput-object v0, Lcom/squareup/okhttp/internal/http/a;->d:Lcom/squareup/okhttp/internal/http/aa;
:try_start_7
new-instance v0, Lcom/squareup/okhttp/internal/http/ak;
const-string v1, "HTTP/1.1 504 Gateway Timeout"
invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/ak;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/squareup/okhttp/internal/http/a;->e:Lcom/squareup/okhttp/internal/http/ak;
:try_end_10
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/a;->a:Lcom/squareup/okhttp/internal/http/u;
iput-object p2, p0, Lcom/squareup/okhttp/internal/http/a;->b:Lcom/squareup/okhttp/internal/http/z;
iput-object p3, p0, Lcom/squareup/okhttp/internal/http/a;->c:Lcom/squareup/okhttp/ResponseSource;
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;)V
return-void
.end method
.method static synthetic a()Lcom/squareup/okhttp/internal/http/aa;
.registers 1
sget-object v0, Lcom/squareup/okhttp/internal/http/a;->d:Lcom/squareup/okhttp/internal/http/aa;
return-object v0
.end method
.method public static a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/u;)Z
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v1
const/16 v2, 0xc8
if-eq v1, v2, :cond_1a
const/16 v2, 0xcb
if-eq v1, v2, :cond_1a
const/16 v2, 0x12c
if-eq v1, v2, :cond_1a
const/16 v2, 0x12d
if-eq v1, v2, :cond_1a
const/16 v2, 0x19a
if-eq v1, v2, :cond_1a
:goto_19
:cond_19
return v0
:cond_1a
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/z;->l()Lcom/squareup/okhttp/f;
move-result-object v1
const-string v2, "Authorization"
invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_39
invoke-virtual {v1}, Lcom/squareup/okhttp/f;->e()Z
move-result v2
if-nez v2, :cond_39
invoke-virtual {v1}, Lcom/squareup/okhttp/f;->f()Z
move-result v2
if-nez v2, :cond_39
invoke-virtual {v1}, Lcom/squareup/okhttp/f;->d()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_19
:cond_39
invoke-virtual {v1}, Lcom/squareup/okhttp/f;->b()Z
move-result v1
if-nez v1, :cond_19
const/4 v0, 0x1
goto :goto_19
.end method
.method static synthetic b()Lcom/squareup/okhttp/internal/http/ak;
.registers 1
sget-object v0, Lcom/squareup/okhttp/internal/http/a;->e:Lcom/squareup/okhttp/internal/http/ak;
return-object v0
.end method