.class public final Lcom/spotify/mobile/android/ui/activity/upsell/i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/activity/upsell/c;
.implements Lcom/spotify/mobile/android/ui/activity/upsell/g;
.implements Lcom/spotify/mobile/android/ui/activity/upsell/k;
.field private final a:Landroid/content/Context;
.field private final b:Ljava/util/List;
.field private c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
.field private d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
.field private e:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->e:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->a:Landroid/content/Context;
return-void
.end method
.method public final a()V
.registers 3
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/f;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/f;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->a(Lcom/spotify/mobile/android/ui/activity/upsell/g;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->a()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/activity/upsell/b;)V
.registers 3
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/activity/upsell/o;Z)V
.registers 5
if-eqz p2, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
const-string v0, "inapp"
iget-object v1, p1, Lcom/spotify/mobile/android/ui/activity/upsell/o;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/b;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->a:Landroid/content/Context;
invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/b;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/o;)V
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->a(Lcom/spotify/mobile/android/ui/activity/upsell/c;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->a()V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->e:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_23
:goto_23
return-void
:cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_23
.end method
.method public final a(Ljava/util/ArrayList;)V
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_d
:goto_d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/o;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_1f
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_50
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/activity/upsell/o;
iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/upsell/o;->b:Ljava/lang/String;
iget-object v6, v0, Lcom/spotify/mobile/android/ui/activity/upsell/o;->b:Ljava/lang/String;
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
move v1, v2
:goto_36
const-string v5, "Got purchase to register (%s), already scheduled? %s"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
iget-object v7, v0, Lcom/spotify/mobile/android/ui/activity/upsell/o;->b:Ljava/lang/String;
aput-object v7, v6, v3
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
aput-object v7, v6, v2
invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
if-nez v1, :cond_d
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_50
move v1, v3
goto :goto_36
:cond_52
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
if-nez v0, :cond_65
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/j;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->a:Landroid/content/Context;
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/k;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->a()V
goto :goto_8
:cond_65
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->b()V
goto :goto_8
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->b()V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->c()V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->b()V
goto :goto_1d
:cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public final c()Lcom/spotify/mobile/android/ui/activity/upsell/o;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->b:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/o;
goto :goto_9
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->c()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->d:Lcom/spotify/mobile/android/ui/activity/upsell/j;
:cond_c
return-void
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/i;->c:Lcom/spotify/mobile/android/ui/activity/upsell/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->d()V
goto :goto_4
.end method