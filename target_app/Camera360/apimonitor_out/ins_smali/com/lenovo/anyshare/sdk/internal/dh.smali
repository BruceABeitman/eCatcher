.class public Lcom/lenovo/anyshare/sdk/internal/dh;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"
.method public static a(Ljava/lang/String;)[B
.registers 3
:try_start_0
sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;
invoke-virtual {v1}, Landroid/util/Xml$Encoding;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v1
:goto_a
return-object v1
:catch_b
move-exception v0
const/4 v1, 0x0
goto :goto_a
.end method