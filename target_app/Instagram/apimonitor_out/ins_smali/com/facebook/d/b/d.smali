.class public Lcom/facebook/d/b/d;
.super Lcom/facebook/d/b/a;
.source "FbErrorReporterImpl.java"
.field public static final a:La/a/a;
.field private static final b:Ljava/lang/String;
.field private static i:Z
.field private final c:La/a/a;
.field private final d:La/a/a;
.field private final e:Ljava/util/concurrent/ExecutorService;
.field private final f:Ljava/util/Random;
.field private final g:La/a/a;
.field private final h:Z
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const-class v0, Lcom/facebook/d/b/d;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/d/b/d;->b:Ljava/lang/String;
new-instance v0, Lcom/facebook/d/b/f;
invoke-direct {v0, v1}, Lcom/facebook/d/b/f;-><init>(B)V
sput-object v0, Lcom/facebook/d/b/d;->a:La/a/a;
sput-boolean v1, Lcom/facebook/d/b/d;->i:Z
return-void
.end method
.method public constructor <init>(La/a/a;La/a/a;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;)V
.registers 11
sget-object v5, Lcom/facebook/d/b/d;->a:La/a/a;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/d/b/d;-><init>(La/a/a;La/a/a;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;La/a/a;)V
return-void
.end method
.method private constructor <init>(La/a/a;La/a/a;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;La/a/a;)V
.registers 7
invoke-direct {p0}, Lcom/facebook/d/b/a;-><init>()V
iput-object p1, p0, Lcom/facebook/d/b/d;->c:La/a/a;
iput-object p2, p0, Lcom/facebook/d/b/d;->d:La/a/a;
iput-object p3, p0, Lcom/facebook/d/b/d;->e:Ljava/util/concurrent/ExecutorService;
iput-object p4, p0, Lcom/facebook/d/b/d;->f:Ljava/util/Random;
iput-object p5, p0, Lcom/facebook/d/b/d;->g:La/a/a;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/d/b/d;->h:Z
return-void
.end method
.method static synthetic a(Lcom/facebook/d/b/d;)La/a/a;
.registers 2
iget-object v0, p0, Lcom/facebook/d/b/d;->g:La/a/a;
return-object v0
.end method
.method private a(Ljava/lang/String;IZ)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/facebook/d/b/d;->d:La/a/a;
invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/facebook/d/b/d;->c:La/a/a;
invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;
move-result-object v0
sget-object v3, Lcom/facebook/d/g/b;->a:Lcom/facebook/d/g/b;
if-ne v0, v3, :cond_21
:cond_1a
move v0, v2
:goto_1b
if-nez v0, :cond_20
if-eqz p3, :cond_23
move-object p1, v1
:goto_20
:cond_20
return-object p1
:cond_21
const/4 v0, 0x0
goto :goto_1b
:cond_23
iget-object v0, p0, Lcom/facebook/d/b/d;->f:Ljava/util/Random;
invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
move-result v0
rem-int/2addr v0, p2
if-eqz v0, :cond_2e
move-object p1, v1
goto :goto_20
:cond_2e
if-eq p2, v2, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " [freq="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
goto :goto_20
.end method
.method static synthetic b(Lcom/facebook/d/b/d;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/d/b/d;->h:Z
return v0
.end method
.method public final a(Lcom/facebook/d/b/g;)V
.registers 7
sget-boolean v0, Lcom/facebook/d/b/d;->i:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/facebook/d/b/d;->c:La/a/a;
invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;
move-result-object v0
sget-object v1, Lcom/facebook/d/g/b;->a:Lcom/facebook/d/g/b;
if-eq v0, v1, :cond_1d
iget-object v0, p0, Lcom/facebook/d/b/d;->d:La/a/a;
invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_81
:cond_1d
const/4 v0, 0x1
:goto_1e
invoke-virtual {p1}, Lcom/facebook/d/b/g;->d()Z
move-result v1
if-eqz v1, :cond_83
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/facebook/d/b/d;->g:La/a/a;
invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/a/i;
const-string v1, "soft_error_message"
invoke-virtual {p1}, Lcom/facebook/d/b/g;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
sget-object v1, Lcom/facebook/d/b/d;->b:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "category: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/facebook/d/b/g;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " message:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/facebook/d/b/g;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Soft error FAILING HARDER: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/facebook/d/b/g;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/facebook/d/b/g;->c()Ljava/lang/Throwable;
move-result-object v3
invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v0, v2, v1}, Lcom/facebook/a/i;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
goto :goto_4
:cond_81
const/4 v0, 0x0
goto :goto_1e
:cond_83
invoke-virtual {p1}, Lcom/facebook/d/b/g;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/facebook/d/b/g;->e()I
move-result v1
invoke-virtual {p1}, Lcom/facebook/d/b/g;->f()Z
move-result v2
invoke-direct {p0, v0, v1, v2}, Lcom/facebook/d/b/d;->a(Ljava/lang/String;IZ)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {p1}, Lcom/facebook/d/b/g;->b()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/facebook/d/b/i;
invoke-virtual {p1}, Lcom/facebook/d/b/g;->c()Ljava/lang/Throwable;
move-result-object v3
invoke-direct {v2, v1, v3}, Lcom/facebook/d/b/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v3, p0, Lcom/facebook/d/b/d;->e:Ljava/util/concurrent/ExecutorService;
new-instance v4, Lcom/facebook/d/b/e;
invoke-direct {v4, p0, v0, v1, v2}, Lcom/facebook/d/b/e;-><init>(Lcom/facebook/d/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto/16 :goto_4
.end method