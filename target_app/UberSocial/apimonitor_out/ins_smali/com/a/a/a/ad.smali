.class final Lcom/a/a/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/a/a/a/ac;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.registers 3
invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
return-object v0
.end method