.class public final Lcom/instagram/android/directshare/c/r;
.super Ljava/lang/Object;
.source "InboxStore.java"
.implements Lcom/instagram/android/feed/e/d;
.implements Lcom/instagram/common/c/a;
.field private a:Z
.field private b:Lcom/instagram/common/a/a/m;
.field private c:Lcom/instagram/feed/f/a;
.field private d:Ljava/util/Set;
.field private e:I
.field private f:Ljava/util/Set;
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/common/a/a/q;
invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V
iput-object v0, p0, Lcom/instagram/android/directshare/c/r;->b:Lcom/instagram/common/a/a/m;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/directshare/c/r;->d:Ljava/util/Set;
new-instance v0, Ljava/util/TreeSet;
new-instance v1, Lcom/instagram/android/directshare/c/s;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/s;-><init>(Lcom/instagram/android/directshare/c/r;)V
invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
iput-object v0, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
new-instance v0, Lcom/instagram/common/c/j;
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "InboxFragment.REFRESH_INBOX"
invoke-interface {v0, v1, p0}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "InboxFragment.ADD_MEDIA_TO_INBOX"
invoke-interface {v0, v1, p0}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "InboxFragment.REMOVE_MEDIA_FROM_INBOX"
invoke-interface {v0, v1, p0}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/directshare/c/r;-><init>()V
return-void
.end method
.method public static a()Lcom/instagram/android/directshare/c/r;
.registers 1
sget-object v0, Lcom/instagram/android/directshare/c/u;->a:Lcom/instagram/android/directshare/c/r;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/directshare/c/r;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/c/r;->c:Lcom/instagram/feed/f/a;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/android/directshare/c/r;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->d:Ljava/util/Set;
return-object v0
.end method
.method private a(Z)V
.registers 6
iget-object v1, p0, Lcom/instagram/android/directshare/c/r;->b:Lcom/instagram/common/a/a/m;
new-instance v2, Lcom/instagram/f/a/a/l;
if-eqz p1, :cond_19
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->c:Lcom/instagram/feed/f/a;
:goto_8
invoke-direct {v2, v0}, Lcom/instagram/f/a/a/l;-><init>(Lcom/instagram/feed/f/a;)V
new-instance v0, Lcom/instagram/android/directshare/c/t;
const/4 v3, 0x0
invoke-direct {v0, p0, p1, v3}, Lcom/instagram/android/directshare/c/t;-><init>(Lcom/instagram/android/directshare/c/r;ZB)V
invoke-virtual {v2, v0}, Lcom/instagram/f/a/a/l;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
move-result-object v0
invoke-interface {v1, v0}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
return-void
:cond_19
const/4 v0, 0x0
goto :goto_8
.end method
.method static synthetic a(Lcom/instagram/android/directshare/c/r;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/directshare/c/r;->a:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/android/directshare/c/r;)Lcom/instagram/feed/f/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->c:Lcom/instagram/feed/f/a;
return-object v0
.end method
.method private b(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
const/4 v0, 0x1
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method private c(Ljava/lang/String;)Z
.registers 3
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/feed/d/l;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private static k()V
.registers 2
new-instance v0, Landroid/content/Intent;
const-string v1, "InboxFragment.UPDATE_INBOX"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/instagram/android/directshare/c/r;->e:I
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 4
const-string v0, "InboxFragment.REFRESH_INBOX"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/r;->i()V
:goto_f
:cond_f
return-void
:cond_10
const-string v0, "InboxFragment.ADD_MEDIA_TO_INBOX"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
const-string v0, "mediaId"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/r;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
invoke-static {}, Lcom/instagram/android/directshare/c/r;->k()V
goto :goto_f
:cond_2c
const-string v0, "InboxFragment.REMOVE_MEDIA_FROM_INBOX"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "mediaId"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/r;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
invoke-static {}, Lcom/instagram/android/directshare/c/r;->k()V
goto :goto_f
.end method
.method public final a(Lcom/instagram/api/k/a/h;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->d:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/r;->a:Z
if-eqz v0, :cond_c
invoke-virtual {p1}, Lcom/instagram/api/k/a/h;->a()V
:cond_c
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/r;->c(Ljava/lang/String;)Z
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final b(Lcom/instagram/api/k/a/h;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->d:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->c:Lcom/instagram/feed/f/a;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final c()Z
.registers 3
iget v0, p0, Lcom/instagram/android/directshare/c/r;->e:I
if-eqz v0, :cond_10
iget v0, p0, Lcom/instagram/android/directshare/c/r;->e:I
iget-object v1, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v1
if-ge v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public final d()Z
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->c:Lcom/instagram/feed/f/a;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->c:Lcom/instagram/feed/f/a;
invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;
move-result-object v0
sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;
if-eq v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/r;->a:Z
return v0
.end method
.method public final f()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object v0
.end method
.method public final g()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/directshare/c/r;->c:Lcom/instagram/feed/f/a;
return-void
.end method
.method public final h()Z
.registers 4
const/4 v0, 0x0
iget v1, p0, Lcom/instagram/android/directshare/c/r;->e:I
if-nez v1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
iget-object v1, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v1
iget v2, p0, Lcom/instagram/android/directshare/c/r;->e:I
if-le v1, v2, :cond_5
iget-object v1, p0, Lcom/instagram/android/directshare/c/r;->f:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_29
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
iget v2, p0, Lcom/instagram/android/directshare/c/r;->e:I
if-lt v0, v2, :cond_26
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_29
const/4 v0, 0x1
goto :goto_5
.end method
.method public final i()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/r;->a(Z)V
return-void
.end method
.method public final j()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/r;->a(Z)V
return-void
.end method