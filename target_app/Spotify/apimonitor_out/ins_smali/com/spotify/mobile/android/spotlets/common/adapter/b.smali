.class public abstract Lcom/spotify/mobile/android/spotlets/common/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/common/adapter/d;
.field private final a:Ljava/util/HashSet;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/b;->a:Ljava/util/HashSet;
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/b;->a:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/common/adapter/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;->notifyDataSetChanged()V
goto :goto_6
:cond_16
return-void
.end method
.method final a(Lcom/spotify/mobile/android/spotlets/common/adapter/a;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/b;->a:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method final b(Lcom/spotify/mobile/android/spotlets/common/adapter/a;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/b;->a:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
return-void
.end method