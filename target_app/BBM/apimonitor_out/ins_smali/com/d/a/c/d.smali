.class public final Lcom/d/a/c/d;
.super Ljava/lang/Object;
.source "L.java"
.field private static volatile a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/d/a/c/d;->a:Z
return-void
.end method
.method private static varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 9
sget-boolean v0, Lcom/d/a/c/d;->a:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
array-length v0, p3
if-lez v0, :cond_2e
invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_c
if-nez p1, :cond_14
:goto_e
sget-object v1, Lcom/d/a/b/f;->a:Ljava/lang/String;
invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
goto :goto_4
:cond_14
if-nez v0, :cond_1a
invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
:cond_1a
invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
const-string v2, "%1$s\n%2$s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v0, v3, v4
const/4 v0, 0x1
aput-object v1, v3, v0
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_2e
move-object v0, p2
goto :goto_c
.end method
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x3
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/d/a/c/d;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public static a(Ljava/lang/Throwable;)V
.registers 4
const/4 v0, 0x6
const/4 v1, 0x0
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, p0, v1, v2}, Lcom/d/a/c/d;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x4
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/d/a/c/d;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x5
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/d/a/c/d;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x6
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/d/a/c/d;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method