.class public final Lcom/lenovo/anyshare/sdk/internal/cz;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"
.method public static a([B)Ljava/lang/String;
.registers 4
:try_start_0
new-instance v1, Ljava/lang/String;
sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;
invoke-virtual {v2}, Landroid/util/Xml$Encoding;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:goto_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c
return-object v1
:catch_c
move-exception v0
const/4 v1, 0x0
goto :goto_b
.end method