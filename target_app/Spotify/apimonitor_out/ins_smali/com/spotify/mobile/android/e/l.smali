.class public Lcom/spotify/mobile/android/e/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/Collection;
.field private b:Z
.field private final c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashSet;
const/16 v1, 0x8
invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/e/l;->a:Ljava/util/Collection;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/e/l;->b:Z
iput-object p1, p0, Lcom/spotify/mobile/android/e/l;->c:Ljava/lang/String;
return-void
.end method
.method protected a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/e/o;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/e/l;->a:Ljava/util/Collection;
invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public b()V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/e/l;->b:Z
if-eqz v0, :cond_5
:cond_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/e/l;->b:Z
iget-object v0, p0, Lcom/spotify/mobile/android/e/l;->a:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/e/o;
invoke-interface {v0}, Lcom/spotify/mobile/android/e/o;->a()V
goto :goto_e
.end method
.method public c()V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/e/l;->b:Z
if-nez v0, :cond_5
:cond_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/e/l;->b:Z
iget-object v0, p0, Lcom/spotify/mobile/android/e/l;->a:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/e/o;
invoke-interface {v0}, Lcom/spotify/mobile/android/e/o;->b()V
goto :goto_e
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/e/l;->b:Z
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/e/l;->b:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method