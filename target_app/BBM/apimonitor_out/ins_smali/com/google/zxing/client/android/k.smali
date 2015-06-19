.class public final Lcom/google/zxing/client/android/k;
.super Ljava/lang/Object;
.source "HttpHelper.java"
.field private static final a:Ljava/lang/String;
.field private static final b:Ljava/util/Collection;
.method static constructor <clinit>()V
.registers 4
const-class v0, Lcom/google/zxing/client/android/k;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v0, Ljava/util/HashSet;
const/16 v1, 0x10
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "amzn.to"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "bit.ly"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "bitly.com"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "fb.me"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "goo.gl"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string v3, "is.gd"
aput-object v3, v1, v2
const/4 v2, 0x6
const-string v3, "j.mp"
aput-object v3, v1, v2
const/4 v2, 0x7
const-string v3, "lnkd.in"
aput-object v3, v1, v2
const/16 v2, 0x8
const-string v3, "ow.ly"
aput-object v3, v1, v2
const/16 v2, 0x9
const-string v3, "R.BEETAGG.COM"
aput-object v3, v1, v2
const/16 v2, 0xa
const-string v3, "r.beetagg.com"
aput-object v3, v1, v2
const/16 v2, 0xb
const-string v3, "SCN.BY"
aput-object v3, v1, v2
const/16 v2, 0xc
const-string v3, "su.pr"
aput-object v3, v1, v2
const/16 v2, 0xd
const-string v3, "t.co"
aput-object v3, v1, v2
const/16 v2, 0xe
const-string v3, "tinyurl.com"
aput-object v3, v1, v2
const/16 v2, 0xf
const-string v3, "tr.im"
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/google/zxing/client/android/k;->b:Ljava/util/Collection;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;Lcom/google/zxing/client/android/m;)Ljava/lang/CharSequence;
.registers 3
const v0, 0x7fffffff
invoke-static {p0, p1, v0}, Lcom/google/zxing/client/android/k;->a(Ljava/lang/String;Lcom/google/zxing/client/android/m;I)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Lcom/google/zxing/client/android/m;I)Ljava/lang/CharSequence;
.registers 5
sget-object v0, Lcom/google/zxing/client/android/l;->a:[I
invoke-virtual {p1}, Lcom/google/zxing/client/android/m;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_18
const-string v0, "text/*,*/*"
:goto_d
invoke-static {p0, v0, p2}, Lcom/google/zxing/client/android/k;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
:pswitch_12
const-string v0, "application/xhtml+xml,text/html,text/*,*/*"
goto :goto_d
:pswitch_15
const-string v0, "application/json,text/*,*/*"
goto :goto_d
:pswitch_data_18
.packed-switch 0x1
:pswitch_12
:pswitch_15
.end packed-switch
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
.registers 8
sget-object v0, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Downloading "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
instance-of v1, v0, Ljava/net/HttpURLConnection;
if-nez v1, :cond_27
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_27
check-cast v0, Ljava/net/HttpURLConnection;
const-string v1, "Accept"
invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Accept-Charset"
const-string v2, "utf-8,*"
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "User-Agent"
const-string v2, "ZXing (Android)"
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:try_start_3c
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
:try_end_3f
.catchall {:try_start_3c .. :try_end_3f} :catchall_5c
.catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_3f} :catch_61
.catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3f} :catch_7c
:try_start_3f
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
:try_end_42
.catchall {:try_start_3f .. :try_end_42} :catchall_5c
.catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_42} :catch_97
move-result v1
const/16 v2, 0xc8
if-eq v1, v2, :cond_b2
:try_start_47
new-instance v2, Ljava/io/IOException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad HTTP response: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
:try_end_5c
.catchall {:try_start_47 .. :try_end_5c} :catchall_5c
:catchall_5c
move-exception v1
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v1
:catch_61
move-exception v1
:try_start_62
sget-object v2, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad URI? "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/IOException;
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v2
:catch_7c
move-exception v1
sget-object v2, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad URI? "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/IOException;
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v2
:catch_97
move-exception v1
sget-object v2, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad URI? "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/IOException;
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v2
:cond_b2
sget-object v1, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Consuming "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {v0, p2}, Lcom/google/zxing/client/android/k;->a(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
:try_end_c9
.catchall {:try_start_62 .. :try_end_c9} :catchall_5c
move-result-object v1
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
return-object v1
.end method
.method private static a(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
.registers 7
const-string v0, "Content-Type"
invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_41
const-string v1, "charset="
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_41
add-int/lit8 v1, v1, 0x8
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_16
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v2, 0x0
:try_start_1c
new-instance v1, Ljava/io/InputStreamReader;
invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v4
invoke-direct {v1, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
:try_end_25
.catchall {:try_start_1c .. :try_end_25} :catchall_50
const/16 v0, 0x400
:try_start_27
new-array v0, v0, [C
:goto_29
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v2
if-ge v2, p1, :cond_44
invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I
move-result v2
if-lez v2, :cond_44
const/4 v4, 0x0
invoke-virtual {v3, v0, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
:try_end_39
.catchall {:try_start_27 .. :try_end_39} :catchall_3a
goto :goto_29
:catchall_3a
move-exception v0
:goto_3b
if-eqz v1, :cond_40
:try_start_3d
invoke-virtual {v1}, Ljava/io/Reader;->close()V
:try_end_40
.catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4c
.catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_40} :catch_4e
:goto_40
:cond_40
throw v0
:cond_41
const-string v0, "UTF-8"
goto :goto_16
:cond_44
:try_start_44
invoke-virtual {v1}, Ljava/io/Reader;->close()V
:try_end_47
.catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48
.catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_47} :catch_4a
:goto_47
return-object v3
:catch_48
move-exception v0
goto :goto_47
:catch_4a
move-exception v0
goto :goto_47
:catch_4c
move-exception v1
goto :goto_40
:catch_4e
move-exception v1
goto :goto_40
:catchall_50
move-exception v0
move-object v1, v2
goto :goto_3b
.end method
.method public static a(Ljava/net/URI;)Ljava/net/URI;
.registers 6
const/4 v2, 0x0
sget-object v0, Lcom/google/zxing/client/android/k;->b:Ljava/util/Collection;
invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_e
:goto_d
return-object p0
:cond_e
invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
instance-of v1, v0, Ljava/net/HttpURLConnection;
if-nez v1, :cond_20
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_20
check-cast v0, Ljava/net/HttpURLConnection;
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const-string v1, "HEAD"
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const-string v1, "User-Agent"
const-string v2, "ZXing (Android)"
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:try_start_34
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
:try_start_37
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_5d
.catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_37} :catch_42
.catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_37} :catch_62
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
:try_end_3a
.catchall {:try_start_37 .. :try_end_3a} :catchall_5d
.catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3a} :catch_7d
move-result v1
packed-switch v1, :pswitch_data_ae
:pswitch_3e
:goto_3e
:cond_3e
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
goto :goto_d
:catch_42
move-exception v1
:try_start_43
sget-object v2, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad URI? "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/IOException;
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v2
:try_end_5d
.catchall {:try_start_43 .. :try_end_5d} :catchall_5d
:catchall_5d
move-exception v1
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v1
:catch_62
move-exception v1
:try_start_63
sget-object v2, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad URI? "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/IOException;
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v2
:catch_7d
move-exception v1
sget-object v2, Lcom/google/zxing/client/android/k;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad URI? "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/IOException;
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v2
:pswitch_98
const-string v1, "Location"
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
:try_end_9d
.catchall {:try_start_63 .. :try_end_9d} :catchall_5d
move-result-object v2
if-eqz v2, :cond_3e
:try_start_a0
new-instance v1, Ljava/net/URI;
invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
:try_end_a5
.catchall {:try_start_a0 .. :try_end_a5} :catchall_5d
.catch Ljava/net/URISyntaxException; {:try_start_a0 .. :try_end_a5} :catch_ab
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
move-object p0, v1
goto/16 :goto_d
:catch_ab
move-exception v1
goto :goto_3e
nop
:pswitch_data_ae
.packed-switch 0x12c
:pswitch_98
:pswitch_98
:pswitch_98
:pswitch_98
:pswitch_3e
:pswitch_3e
:pswitch_3e
:pswitch_98
.end packed-switch
.end method