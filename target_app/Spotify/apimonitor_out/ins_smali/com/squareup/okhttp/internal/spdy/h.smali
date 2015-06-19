.class public final Lcom/squareup/okhttp/internal/spdy/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/spdy/aa;
.field private static final a:Lcom/squareup/okhttp/internal/a/d;
.method static constructor <clinit>()V
.registers 1
const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/spdy/h;->a:Lcom/squareup/okhttp/internal/a/d;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a()Lcom/squareup/okhttp/internal/a/d;
.registers 1
sget-object v0, Lcom/squareup/okhttp/internal/spdy/h;->a:Lcom/squareup/okhttp/internal/a/d;
return-object v0
.end method
.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
.registers 4
new-instance v0, Ljava/io/IOException;
invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
.registers 4
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a(Lcom/squareup/okhttp/internal/a/c;Z)Lcom/squareup/okhttp/internal/spdy/a;
.registers 4
new-instance v0, Lcom/squareup/okhttp/internal/spdy/j;
invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/j;-><init>(Lcom/squareup/okhttp/internal/a/c;Z)V
return-object v0
.end method
.method public final a(Lcom/squareup/okhttp/internal/a/b;Z)Lcom/squareup/okhttp/internal/spdy/c;
.registers 4
new-instance v0, Lcom/squareup/okhttp/internal/spdy/k;
invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/k;-><init>(Lcom/squareup/okhttp/internal/a/b;Z)V
return-object v0
.end method