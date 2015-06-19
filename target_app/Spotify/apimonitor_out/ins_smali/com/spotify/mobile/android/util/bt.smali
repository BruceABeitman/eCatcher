.class public final Lcom/spotify/mobile/android/util/bt;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
.registers 3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_a
invoke-static {v0, p1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
return-object p0
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method public static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Iterable;
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
instance-of v0, p0, Ljava/util/Collection;
if-eqz v0, :cond_17
move-object v0, p0
check-cast v0, Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
move-result v0
:goto_10
if-nez v0, :cond_25
move v0, v1
:goto_13
invoke-static {v0, p1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
return-object p0
:cond_17
invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_23
move v0, v1
goto :goto_10
:cond_23
move v0, v2
goto :goto_10
:cond_25
move v0, v2
goto :goto_13
.end method
.method public static a(Ljava/lang/String;)V
.registers 3
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
if-eq v0, v1, :cond_b
return-void
:cond_b
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static b(Ljava/lang/String;)V
.registers 3
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
if-ne v0, v1, :cond_b
return-void
:cond_b
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method