.class final Lcom/squareup/okhttp/d;
.super Lcom/squareup/okhttp/internal/http/aa;
.source "SourceFile"
.field private final a:Lcom/squareup/okhttp/internal/h;
.field private final b:Ljava/io/InputStream;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.method public constructor <init>(Lcom/squareup/okhttp/internal/h;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/aa;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/d;->a:Lcom/squareup/okhttp/internal/h;
iput-object p2, p0, Lcom/squareup/okhttp/d;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/squareup/okhttp/d;->d:Ljava/lang/String;
new-instance v0, Lcom/squareup/okhttp/d$1;
const/4 v1, 0x1
invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/h;->a(I)Ljava/io/InputStream;
move-result-object v1
invoke-direct {v0, p0, v1, p1}, Lcom/squareup/okhttp/d$1;-><init>(Lcom/squareup/okhttp/d;Ljava/io/InputStream;Lcom/squareup/okhttp/internal/h;)V
iput-object v0, p0, Lcom/squareup/okhttp/d;->b:Ljava/io/InputStream;
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/d;)Lcom/squareup/okhttp/internal/h;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/d;->a:Lcom/squareup/okhttp/internal/h;
return-object v0
.end method
.method public final a()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/d;->b:Ljava/io/InputStream;
return-object v0
.end method