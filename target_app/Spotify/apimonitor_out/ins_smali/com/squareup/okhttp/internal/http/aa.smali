.class public abstract Lcom/squareup/okhttp/internal/http/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Closeable;
.field private a:Lcom/squareup/okhttp/internal/a/p;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract a()Ljava/io/InputStream;
.end method
.method public final b()Lcom/squareup/okhttp/internal/a/p;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/aa;->a:Lcom/squareup/okhttp/internal/a/p;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/aa;->a()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/a/p;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/aa;->a:Lcom/squareup/okhttp/internal/a/p;
goto :goto_4
.end method
.method public close()V
.registers 2
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/aa;->a()Ljava/io/InputStream;
move-result-object v0
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method