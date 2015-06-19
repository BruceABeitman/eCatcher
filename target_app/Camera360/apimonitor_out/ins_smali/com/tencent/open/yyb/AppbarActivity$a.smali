.class  Lcom/tencent/open/yyb/AppbarActivity$a;
.super Landroid/os/AsyncTask;
.source "ProGuard"
.field private a:Lcom/tencent/open/yyb/AppbarActivity$b;
.method public constructor <init>(Lcom/tencent/open/yyb/AppbarActivity$b;)V
.registers 2
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity$a;->a:Lcom/tencent/open/yyb/AppbarActivity$b;
return-void
.end method
.method protected a([B)V
.registers 3
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$a;->a:Lcom/tencent/open/yyb/AppbarActivity$b;
invoke-interface {v0, p1}, Lcom/tencent/open/yyb/AppbarActivity$b;->a([B)V
return-void
.end method
.method protected varargs a([Ljava/lang/String;)[B
.registers 8
const/4 v1, 0x0
:try_start_1
new-instance v0, Ljava/net/URL;
const/4 v2, 0x0
aget-object v2, p1, v2
invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_9
.catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_9} :catch_41
:try_start_9
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
:try_end_f
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_47
const/16 v2, 0x1388
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
:try_start_14
const-string/jumbo v2, "GET"
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
:try_start_1a
:try_end_1a
.catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_1a} :catch_4d
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_1d
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_53
move-result-object v2
:try_start_1e
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
const/16 v3, 0xc8
if-ne v0, v3, :cond_3f
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/16 v3, 0x400
new-array v3, v3, [B
:goto_2f
invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_59
const/4 v5, 0x0
invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_3a
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_3a} :catch_3b
goto :goto_2f
:catch_3b
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:cond_3f
move-object v0, v1
:goto_40
return-object v0
:catch_41
move-exception v0
invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
move-object v0, v1
goto :goto_40
:catch_47
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
move-object v0, v1
goto :goto_40
:catch_4d
move-exception v0
invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V
move-object v0, v1
goto :goto_40
:catch_53
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
move-object v0, v1
goto :goto_40
:cond_59
:try_start_59
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_62
.catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_3b
move-result-object v0
goto :goto_40
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$a;->a([Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, [B
invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$a;->a([B)V
return-void
.end method