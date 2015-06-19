.class public Lcom/umeng/common/util/a;
.super Ljava/lang/Object;
.source "AESStringUtils.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
.registers 5
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public static a([B)Ljava/lang/String;
.registers 2
const-string/jumbo v0, "ISO-8859-1"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a([BLjava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:try_start_4
:cond_4
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_a
goto :goto_3
:catch_a
move-exception v0
invoke-static {p1, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
move-result-object v0
throw v0
.end method
.method public static a(Ljava/lang/String;)[B
.registers 2
const-string/jumbo v0, "ISO-8859-1"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:try_start_4
:cond_4
invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_7
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9
move-result-object v0
goto :goto_3
:catch_9
move-exception v0
invoke-static {p1, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
move-result-object v0
throw v0
.end method
.method public static b([B)Ljava/lang/String;
.registers 2
const-string/jumbo v0, "US-ASCII"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/String;)[B
.registers 2
const-string/jumbo v0, "US-ASCII"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public static c([B)Ljava/lang/String;
.registers 2
const-string/jumbo v0, "UTF-16"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static c(Ljava/lang/String;)[B
.registers 2
const-string/jumbo v0, "UTF-16"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public static d([B)Ljava/lang/String;
.registers 2
const-string/jumbo v0, "UTF-16BE"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static d(Ljava/lang/String;)[B
.registers 2
const-string/jumbo v0, "UTF-16BE"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public static e([B)Ljava/lang/String;
.registers 2
const-string/jumbo v0, "UTF-16LE"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static e(Ljava/lang/String;)[B
.registers 2
const-string/jumbo v0, "UTF-16LE"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public static f([B)Ljava/lang/String;
.registers 2
const-string/jumbo v0, "UTF-8"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static f(Ljava/lang/String;)[B
.registers 2
const-string/jumbo v0, "UTF-8"
invoke-static {p0, v0}, Lcom/umeng/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method