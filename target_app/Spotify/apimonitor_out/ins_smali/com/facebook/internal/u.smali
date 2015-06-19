.class final Lcom/facebook/internal/u;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"
.field  a:Ljava/net/HttpURLConnection;
.method constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
.registers 4
const/16 v0, 0x2000
invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
iput-object p2, p0, Lcom/facebook/internal/u;->a:Ljava/net/HttpURLConnection;
return-void
.end method
.method public final close()V
.registers 2
invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V
iget-object v0, p0, Lcom/facebook/internal/u;->a:Ljava/net/HttpURLConnection;
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/net/URLConnection;)V
return-void
.end method