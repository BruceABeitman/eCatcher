.class final Lcom/instagram/common/analytics/aj;
.super Lcom/instagram/common/a/a/a;
.source "SendAnalyticsRequest.java"
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V
iput-object p1, p0, Lcom/instagram/common/analytics/aj;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/common/analytics/aj;->c:Ljava/lang/String;
return-void
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string v0, "UTF-8"
invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v2, Ljava/util/zip/DeflaterOutputStream;
invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v2, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
const/4 v1, 0x2
invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a()Lcom/instagram/common/a/c/b;
.registers 4
new-instance v0, Lcom/instagram/common/a/c/b;
invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V
const-string v1, "method"
const-string v2, "logging.clientevent"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "format"
const-string v2, "json"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "access_token"
iget-object v2, p0, Lcom/instagram/common/analytics/aj;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_1a
const-string v1, "message"
iget-object v2, p0, Lcom/instagram/common/analytics/aj;->b:Ljava/lang/String;
invoke-static {v2}, Lcom/instagram/common/analytics/aj;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "compressed"
const-string v2, "1"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_2c
:try_end_2c
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_2c} :catch_2d
return-object v0
:catch_2d
move-exception v1
const-string v1, "message"
iget-object v2, p0, Lcom/instagram/common/analytics/aj;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2c
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final c_()Ljava/lang/String;
.registers 2
const-string v0, "https://logger.instagram.com/method/logging.clientevent"
return-object v0
.end method