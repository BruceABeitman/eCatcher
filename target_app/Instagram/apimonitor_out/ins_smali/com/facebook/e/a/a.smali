.class public final Lcom/facebook/e/a/a;
.super Ljava/lang/Object;
.source "BLog.java"
.field private static a:Lcom/facebook/e/a/b;
.field private static volatile b:I
.field private static final c:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x5
sput v0, Lcom/facebook/e/a/a;->b:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/facebook/e/a/a;->c:Ljava/util/List;
return-void
.end method
.method public static a(I)V
.registers 3
sput p0, Lcom/facebook/e/a/a;->b:I
sget-object v0, Lcom/facebook/e/a/a;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_8
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_12
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
goto :goto_8
:cond_12
return-void
.end method
.method public static a(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
sget v0, Lcom/facebook/e/a/a;->b:I
if-gt v0, p0, :cond_a
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v0, :cond_b
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
:cond_a
:goto_a
return-void
:cond_b
invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
goto :goto_a
.end method
.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
.registers 4
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_e
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v0, :cond_f
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
:cond_e
:goto_e
return-void
:cond_f
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_e
.end method
.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_e
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v0, :cond_f
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
:cond_e
:goto_e
return-void
:cond_f
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_e
.end method
.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_12
invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v1, :cond_13
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
:cond_12
:goto_12
return-void
:cond_13
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_12
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_b
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v0, :cond_c
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
:goto_b
:cond_b
return-void
:cond_c
invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_b
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v0, :cond_c
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
:goto_b
:cond_b
return-void
:cond_c
invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_b
.end method
.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_f
invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v1, :cond_10
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
:goto_f
:cond_f
return-void
:cond_10
invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_f
.end method
.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
.registers 4
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_e
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v0, :cond_f
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
:cond_e
:goto_e
return-void
:cond_f
invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_e
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sget v0, Lcom/facebook/e/a/a;->b:I
const/4 v1, 0x6
if-gt v0, v1, :cond_b
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
if-eqz v0, :cond_c
sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;
:goto_b
:cond_b
return-void
:cond_c
invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b
.end method
.method public static b(I)Z
.registers 2
sget v0, Lcom/facebook/e/a/a;->b:I
if-lt p0, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method