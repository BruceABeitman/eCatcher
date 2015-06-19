.class public Ldroidbox/apimonitor/Helper;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static elapsedRealtime()Ljava/lang/String;
.registers 3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static log(Ljava/lang/String;)V
.registers 3
const-string v0, "\n"
const-string v1, "\\\\n"
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
const-string v0, "\r"
const-string v1, "\\\\r"
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
const-string v0, "DBox"
invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
.registers 5
if-nez p0, :cond_5
const-string v3, "null"
:goto_4
return-object v3
:cond_5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z
move-result v3
if-eqz v3, :cond_3e
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "{"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v1
const/4 v0, 0x0
:goto_1b
if-lt v0, v1, :cond_27
const-string v3, "}"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_4
:cond_27
invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v3, v1, -0x1
if-ge v0, v3, :cond_3b
const-string v3, ", "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3b
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_3e
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_4
.end method