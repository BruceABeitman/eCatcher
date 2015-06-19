.class abstract Lcom/google/b/f/a/j;
.super Ljava/lang/Object;
.source "Futures.java"
.implements Lcom/google/b/f/a/l;
.field private static final a:Ljava/util/logging/Logger;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/b/f/a/j;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/google/b/f/a/j;->a:Ljava/util/logging/Logger;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/google/b/f/a/j;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.registers 8
const-string v0, "Runnable was null."
invoke-static {p1, v0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Executor was null."
invoke-static {p2, v0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_a
invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:goto_d
:try_end_d
.catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_e
return-void
:catch_e
move-exception v0
sget-object v1, Lcom/google/b/f/a/j;->a:Ljava/util/logging/Logger;
sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "RuntimeException while executing runnable "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " with executor "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
.end method
.method public cancel(Z)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public abstract get()Ljava/lang/Object;
.end method
.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.registers 5
invoke-static {p3}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/google/b/f/a/j;->get()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isCancelled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isDone()Z
.registers 2
const/4 v0, 0x1
return v0
.end method