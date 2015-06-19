.class public final Lcom/lenovo/anyshare/sdk/internal/ah;
.super Ljava/lang/Object;
.source "Assert.java"
.method public static a(III)V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-lt p0, p1, :cond_28
if-ge p0, p2, :cond_28
move v0, v1
:goto_7
const-string/jumbo v3, "value = %d, range = [%d, %d)"
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v4, v1
const/4 v1, 0x2
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v4, v1
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_28
move v0, v2
goto :goto_7
.end method
.method public static a(Ljava/lang/Object;)V
.registers 3
if-nez p0, :cond_8
const/4 v0, 0x1
:goto_3
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_8
const/4 v0, 0x0
goto :goto_3
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 5
const-string/jumbo v0, "first = %s, second = %s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
const/4 v2, 0x1
aput-object p1, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
.registers 4
if-nez p0, :cond_7
if-nez p1, :cond_7
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
:cond_7
if-eqz p0, :cond_b
if-nez p1, :cond_c
:goto_b
:cond_b
return-void
:cond_c
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
goto :goto_b
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
.registers 3
if-eqz p0, :cond_7
const/4 v0, 0x1
:goto_3
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_7
const/4 v0, 0x0
goto :goto_3
.end method
.method public static a(Ljava/lang/String;)V
.registers 3
if-nez p0, :cond_5
const-string/jumbo p0, "invoke trace"
:cond_5
const-string/jumbo v0, "ASSERTION-FAILED"
new-instance v1, Ljava/lang/Exception;
invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
invoke-static {v0, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
if-eqz p0, :cond_11
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
:goto_d
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_d
.end method
.method public static a(Z)V
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
.end method
.method public static a(ZLjava/lang/String;)V
.registers 2
if-nez p0, :cond_5
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
:cond_5
return-void
.end method
.method public static b(Ljava/lang/Object;)V
.registers 3
if-eqz p0, :cond_8
const/4 v0, 0x1
:goto_3
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_8
const/4 v0, 0x0
goto :goto_3
.end method
.method public static b(Ljava/lang/String;)V
.registers 4
if-eqz p0, :cond_21
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_21
const/4 v0, 0x1
:goto_9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "value = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_21
const/4 v0, 0x0
goto :goto_9
.end method
.method public static b(Z)V
.registers 3
if-nez p0, :cond_8
const/4 v0, 0x1
:goto_3
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_8
const/4 v0, 0x0
goto :goto_3
.end method
.method public static b(ZLjava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
.end method
.method public static c(Ljava/lang/String;)V
.registers 4
if-eqz p0, :cond_25
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_25
const/4 v0, 0x1
:goto_d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "value = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(ZLjava/lang/String;)V
return-void
:cond_25
const/4 v0, 0x0
goto :goto_d
.end method