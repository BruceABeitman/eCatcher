.class public final Lcom/instagram/common/q/b;
.super Ljava/lang/Object;
.source "NotificationController.java"
.field private final a:Ljava/util/concurrent/Executor;
.field private final b:Ljava/util/Map;
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/q/b;->a:Ljava/util/concurrent/Executor;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/common/q/b;->b:Ljava/util/Map;
return-void
.end method
.method public static a()Lcom/instagram/common/q/b;
.registers 2
new-instance v0, Lcom/instagram/common/q/b;
invoke-static {}, Lcom/instagram/common/q/j;->a()Ljava/util/concurrent/Executor;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/q/b;-><init>(Ljava/util/concurrent/Executor;)V
return-object v0
.end method
.method static synthetic a(Lcom/instagram/common/q/b;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/common/q/b;->b:Ljava/util/Map;
return-object v0
.end method
.method private c(Ljava/lang/String;)Lcom/instagram/common/q/a;
.registers 5
iget-object v0, p0, Lcom/instagram/common/q/b;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/q/a;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "category "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1}, Lcom/instagram/common/q/b;->c(Ljava/lang/String;)Lcom/instagram/common/q/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/q/b;->a:Ljava/util/concurrent/Executor;
new-instance v2, Lcom/instagram/common/q/f;
invoke-direct {v2, p0, v0}, Lcom/instagram/common/q/f;-><init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/instagram/common/q/i;Lcom/instagram/common/analytics/d;)V
.registers 6
new-instance v0, Lcom/instagram/common/q/a;
invoke-static {}, Lcom/instagram/common/q/k;->a()Landroid/support/v4/app/bx;
move-result-object v1
invoke-direct {v0, v1, p2, p3}, Lcom/instagram/common/q/a;-><init>(Landroid/support/v4/app/bx;Lcom/instagram/common/q/i;Lcom/instagram/common/analytics/d;)V
iget-object v1, p0, Lcom/instagram/common/q/b;->b:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0, p1}, Lcom/instagram/common/q/b;->c(Ljava/lang/String;)Lcom/instagram/common/q/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/q/b;->a:Ljava/util/concurrent/Executor;
new-instance v2, Lcom/instagram/common/q/d;
invoke-direct {v2, p0, v0, p2}, Lcom/instagram/common/q/d;-><init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;Ljava/lang/String;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/q/c/a;)V
.registers 7
invoke-direct {p0, p1}, Lcom/instagram/common/q/b;->c(Ljava/lang/String;)Lcom/instagram/common/q/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/q/b;->a:Ljava/util/concurrent/Executor;
new-instance v2, Lcom/instagram/common/q/c;
invoke-direct {v2, p0, v0, p2, p3}, Lcom/instagram/common/q/c;-><init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;Ljava/lang/String;Lcom/instagram/common/q/c/a;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/q/b;->a:Ljava/util/concurrent/Executor;
new-instance v1, Lcom/instagram/common/q/h;
invoke-direct {v1, p0}, Lcom/instagram/common/q/h;-><init>(Lcom/instagram/common/q/b;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1}, Lcom/instagram/common/q/b;->c(Ljava/lang/String;)Lcom/instagram/common/q/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/q/b;->a:Ljava/util/concurrent/Executor;
new-instance v2, Lcom/instagram/common/q/g;
invoke-direct {v2, p0, v0}, Lcom/instagram/common/q/g;-><init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0, p1}, Lcom/instagram/common/q/b;->c(Ljava/lang/String;)Lcom/instagram/common/q/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/q/b;->a:Ljava/util/concurrent/Executor;
new-instance v2, Lcom/instagram/common/q/e;
invoke-direct {v2, p0, v0, p2}, Lcom/instagram/common/q/e;-><init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;Ljava/lang/String;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method