.class public Lcom/facebook/e/c/k;
.super Ljava/lang/Object;
.source "Tracer.java"
.field private static a:Lcom/facebook/e/c/o;
.field private static final b:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/facebook/e/c/b;
invoke-direct {v0}, Lcom/facebook/e/c/b;-><init>()V
sput-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;
new-instance v0, Lcom/facebook/e/c/l;
invoke-direct {v0}, Lcom/facebook/e/c/l;-><init>()V
sput-object v0, Lcom/facebook/e/c/k;->b:Ljava/lang/ThreadLocal;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()V
.registers 0
invoke-static {}, Lcom/facebook/e/c/k;->b()J
return-void
.end method
.method public static a(Ljava/lang/String;)V
.registers 2
const/4 v0, 0x0
invoke-static {v0, p0}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
sget-object v0, Lcom/facebook/e/c/k;->b:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/e/c/m;
iget-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z
if-eqz v1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-virtual {v1}, Lcom/facebook/e/c/c;->a()I
move-result v1
const/16 v2, 0x64
if-lt v1, v2, :cond_27
const-class v1, Lcom/facebook/e/c/k;
const-string v2, "Tracer stack overflow. There is probably a missing stopTracer somewhere."
invoke-static {v1, v2}, Lcom/facebook/e/a/a;->b(Ljava/lang/Class;Ljava/lang/String;)V
iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-virtual {v1}, Lcom/facebook/e/c/c;->c()V
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z
goto :goto_c
:cond_27
sget-object v1, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;
invoke-interface {v1}, Lcom/facebook/e/c/o;->a()Z
move-result v1
if-eqz v1, :cond_58
sget-object v1, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;
invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/e/c/d;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v1, p1, v2, v3}, Lcom/facebook/e/c/d;->a(Ljava/lang/String;Ljava/lang/String;Z)I
move-result v2
int-to-long v2, v2
invoke-virtual {v1}, Lcom/facebook/e/c/d;->a()J
move-result-wide v4
iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-virtual {v1, v2, v3}, Lcom/facebook/e/c/c;->a(J)V
iget-object v0, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-virtual {v0, v4, v5}, Lcom/facebook/e/c/c;->a(J)V
:goto_4c
sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;
invoke-interface {v0}, Lcom/facebook/e/c/o;->b()Z
move-result v0
if-eqz v0, :cond_c
invoke-static {p1}, Lcom/facebook/systrace/b;->a(Ljava/lang/String;)V
goto :goto_c
:cond_58
iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
sget v2, Lcom/facebook/e/c/d;->b:I
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Lcom/facebook/e/c/c;->a(J)V
iget-object v0, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-static {}, Lcom/facebook/e/c/n;->a()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/facebook/e/c/c;->a(J)V
goto :goto_4c
.end method
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 2
invoke-static {p0, p1}, Lcom/facebook/e/c/k;->c(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method private static b()J
.registers 9
const-wide/16 v2, -0x1
sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;
invoke-interface {v0}, Lcom/facebook/e/c/o;->b()Z
move-result v0
if-eqz v0, :cond_d
invoke-static {}, Lcom/facebook/systrace/b;->a()V
:cond_d
sget-object v0, Lcom/facebook/e/c/k;->b:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/e/c/m;
iget-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z
if-eqz v1, :cond_1b
move-wide v0, v2
:goto_1a
:cond_1a
return-wide v0
:cond_1b
iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-virtual {v1}, Lcom/facebook/e/c/c;->a()I
move-result v1
const/4 v4, 0x2
if-ge v1, v4, :cond_30
const-class v1, Lcom/facebook/e/c/k;
const-string v4, "Tracer stack underflow. There\'s an extra stopTracer somewhere."
invoke-static {v1, v4}, Lcom/facebook/e/a/a;->b(Ljava/lang/Class;Ljava/lang/String;)V
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/facebook/e/c/m;->b:Z
move-wide v0, v2
goto :goto_1a
:cond_30
iget-object v1, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-virtual {v1}, Lcom/facebook/e/c/c;->b()J
move-result-wide v4
iget-object v0, v0, Lcom/facebook/e/c/m;->a:Lcom/facebook/e/c/c;
invoke-virtual {v0}, Lcom/facebook/e/c/c;->b()J
move-result-wide v0
long-to-int v1, v0
sget v0, Lcom/facebook/e/c/d;->b:I
if-eq v1, v0, :cond_5a
sget-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/e/c/d;
const-wide/16 v6, 0x0
const/4 v8, 0x0
invoke-virtual {v0, v1, v6, v7, v8}, Lcom/facebook/e/c/d;->a(IJZ)J
move-result-wide v0
:goto_50
cmp-long v2, v0, v2
if-nez v2, :cond_1a
invoke-static {}, Lcom/facebook/e/c/n;->a()J
move-result-wide v0
sub-long/2addr v0, v4
goto :goto_1a
:cond_5a
move-wide v0, v2
goto :goto_50
.end method
.method public static b(Ljava/lang/String;)V
.registers 2
sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;
invoke-interface {v0}, Lcom/facebook/e/c/o;->a()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/e/c/d;
invoke-virtual {v0, p0}, Lcom/facebook/e/c/d;->a(Ljava/lang/String;)V
:cond_13
return-void
.end method
.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 3
sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;
invoke-interface {v0}, Lcom/facebook/e/c/o;->a()Z
move-result v0
if-eqz v0, :cond_f
invoke-static {p0, p1}, Lcom/facebook/d/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;)V
:cond_f
return-void
.end method
.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 3
sget-object v0, Lcom/facebook/e/c/k;->a:Lcom/facebook/e/c/o;
invoke-interface {v0}, Lcom/facebook/e/c/o;->a()Z
move-result v0
if-nez v0, :cond_e
invoke-static {}, Lcom/facebook/systrace/b;->b()Z
move-result v0
if-eqz v0, :cond_12
:cond_e
invoke-static {p0, p1}, Lcom/facebook/d/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object p0
:cond_12
const/4 v0, 0x0
invoke-static {v0, p0}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method