.class public final Lch/boye/httpclientandroidlib/util/EncodingUtils;
.super Ljava/lang/Object;
.source "EncodingUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getAsciiBytes(Ljava/lang/String;)[B
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
:try_start_a
const-string v0, "US-ASCII"
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_11
move-result-object v0
return-object v0
:catch_11
move-exception v0
new-instance v0, Ljava/lang/Error;
const-string v1, "HttpClient requires ASCII support"
invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static getAsciiString([B)Ljava/lang/String;
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x0
array-length v1, p0
invoke-static {p0, v0, v1}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getAsciiString([BII)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getAsciiString([BII)Ljava/lang/String;
.registers 5
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
:try_start_a
new-instance v0, Ljava/lang/String;
const-string v1, "US-ASCII"
invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
:try_end_11
.catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_11} :catch_12
return-object v0
:catch_12
move-exception v0
new-instance v0, Ljava/lang/Error;
const-string v1, "HttpClient requires ASCII support"
invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "data may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-eqz p1, :cond_12
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1a
:cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "charset may not be null or empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_1a
:cond_1a
invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_1d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_1d} :catch_1f
move-result-object v0
:goto_1e
return-object v0
:catch_1f
move-exception v0
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
goto :goto_1e
.end method
.method public static getString([BIILjava/lang/String;)Ljava/lang/String;
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-eqz p3, :cond_12
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1a
:cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "charset may not be null or empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_1a
:cond_1a
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
:goto_1f
:try_end_1f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_1f} :catch_20
return-object v0
:catch_20
move-exception v0
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V
goto :goto_1f
.end method
.method public static getString([BLjava/lang/String;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x0
array-length v1, p0
invoke-static {p0, v0, v1, p1}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method