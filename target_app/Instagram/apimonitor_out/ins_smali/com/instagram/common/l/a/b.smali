.class public final Lcom/instagram/common/l/a/b;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"
.field private a:Ljava/util/List;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/common/l/a/b;-><init>()V
return-void
.end method
.method public static a()Lcom/instagram/common/l/a/b;
.registers 1
sget-object v0, Lcom/instagram/common/l/a/c;->a:Lcom/instagram/common/l/a/b;
return-object v0
.end method
.method public final a(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/l/a/a;
invoke-interface {v0, p1}, Lcom/instagram/common/l/a/a;->b(Landroid/app/Activity;)V
goto :goto_6
:cond_16
return-void
.end method
.method public final a(Lcom/instagram/common/l/a/a;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_d
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_10
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
goto :goto_6
:cond_10
return-void
.end method
.method public final b(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/l/a/a;
invoke-interface {v0, p1}, Lcom/instagram/common/l/a/a;->a(Landroid/app/Activity;)V
goto :goto_6
:cond_16
return-void
.end method
.method public final b(Lcom/instagram/common/l/a/a;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_d
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/l/a/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_10
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
goto :goto_6
:cond_10
return-void
.end method