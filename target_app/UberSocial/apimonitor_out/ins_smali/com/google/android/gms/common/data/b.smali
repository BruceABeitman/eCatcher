.class public final Lcom/google/android/gms/common/data/b;
.super Ljava/lang/Object;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/google/android/gms/common/data/a;)Ljava/util/ArrayList;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-virtual {p0}, Lcom/google/android/gms/common/data/a;->a()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
:try_start_9
invoke-virtual {p0}, Lcom/google/android/gms/common/data/a;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/data/g;
invoke-interface {v0}, Lcom/google/android/gms/common/data/g;->i()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_20
.catchall {:try_start_9 .. :try_end_20} :catchall_21
goto :goto_d
:catchall_21
move-exception v0
invoke-virtual {p0}, Lcom/google/android/gms/common/data/a;->b()V
throw v0
:cond_26
invoke-virtual {p0}, Lcom/google/android/gms/common/data/a;->b()V
return-object v1
.end method
.method public static b(Lcom/google/android/gms/common/data/a;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/common/data/a;->e()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_10
const-string v1, "next_page_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public static c(Lcom/google/android/gms/common/data/a;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/common/data/a;->e()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_10
const-string v1, "prev_page_token"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method