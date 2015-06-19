.class public abstract Lcom/loopj/android/http/w;
.super Lcom/loopj/android/http/e;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-string v0, "UTF-8"
invoke-direct {p0, v0}, Lcom/loopj/android/http/w;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/loopj/android/http/e;-><init>()V
invoke-virtual {p0, p1}, Lcom/loopj/android/http/w;->a(Ljava/lang/String;)V
return-void
.end method
.method public static a([BLjava/lang/String;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
if-nez p0, :cond_14
move-object v1, v0
:goto_4
if-eqz v1, :cond_23
:try_start_6
const-string v2, "\ufeff"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_23
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
new-instance v1, Ljava/lang/String;
invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_19
.catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_19} :catch_1a
goto :goto_4
:catch_1a
move-exception v1
const-string v2, "TextHttpResponseHandler"
const-string v3, "Encoding response into string failed"
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_13
:cond_23
move-object v0, v1
goto :goto_13
.end method
.method public abstract a(ILjava/lang/String;)V
.end method
.method public abstract a(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method
.method public a(I[Lorg/apache/http/Header;[B)V
.registers 5
invoke-virtual {p0}, Lcom/loopj/android/http/w;->b()Ljava/lang/String;
move-result-object v0
invoke-static {p3, v0}, Lcom/loopj/android/http/w;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/w;->a(ILjava/lang/String;)V
return-void
.end method
.method public a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.registers 6
invoke-virtual {p0}, Lcom/loopj/android/http/w;->b()Ljava/lang/String;
move-result-object v0
invoke-static {p3, v0}, Lcom/loopj/android/http/w;->a([BLjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0, p4}, Lcom/loopj/android/http/w;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method