.class public final Lcom/bbm/i/b;
.super Lcom/bbm/d/b/f;
.source "SuggestedFriendsComputedList.java"
.field private final a:Lcom/bbm/d;
.field private final b:Lcom/bbm/j/r;
.field private final d:Lcom/bbm/util/cr;
.field private f:Z
.field private g:Z
.field private h:Lcom/bbm/j/r;
.field private final i:Z
.method public constructor <init>(Lcom/bbm/j/r;Lcom/bbm/d;)V
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
iget-object v0, v1, Lcom/bbm/Alaska;->e:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/i/a;
if-nez v0, :cond_24
new-instance v0, Lcom/bbm/i/a;
invoke-static {}, Lcom/bbm/Alaska;->x()Lcom/bbm/j/r;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-direct {v0, v2, v3}, Lcom/bbm/i/a;-><init>(Lcom/bbm/j/r;Lcom/bbm/d/a;)V
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v2, v1, Lcom/bbm/Alaska;->e:Ljava/lang/ref/WeakReference;
:cond_24
invoke-direct {p0, p1, v0, p2}, Lcom/bbm/i/b;-><init>(Lcom/bbm/j/r;Lcom/bbm/j/r;Lcom/bbm/d;)V
return-void
.end method
.method private constructor <init>(Lcom/bbm/j/r;Lcom/bbm/j/r;Lcom/bbm/d;)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
new-instance v0, Lcom/bbm/util/cr;
const-string v1, ""
invoke-static {v1}, Lcom/bbm/util/dd;->a(Ljava/lang/String;)Lcom/bbm/util/dd;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/i/b;->d:Lcom/bbm/util/cr;
iput-boolean v2, p0, Lcom/bbm/i/b;->f:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/i/b;->g:Z
iput-object p2, p0, Lcom/bbm/i/b;->h:Lcom/bbm/j/r;
iput-object p1, p0, Lcom/bbm/i/b;->b:Lcom/bbm/j/r;
iput-object p3, p0, Lcom/bbm/i/b;->a:Lcom/bbm/d;
iput-boolean v2, p0, Lcom/bbm/i/b;->i:Z
return-void
.end method
.method private a(Ljava/util/List;)Ljava/util/List;
.registers 8
iget-object v0, p0, Lcom/bbm/i/b;->d:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/dd;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_11
:cond_11
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_3b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/iceberg/j;
iget-object v4, v1, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/util/dd;->b(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_11
iget-object v4, v1, Lcom/bbm/iceberg/j;->e:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_37
iget-object v4, v1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;
const-string v5, ""
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_11
:cond_37
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_3b
return-object v2
.end method
.method private static b(Ljava/util/List;)Ljava/util/List;
.registers 8
const/4 v1, 0x0
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v3
new-array v4, v3, [Ljava/text/CollationKey;
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;
move-result-object v6
move v2, v1
:goto_11
if-ge v2, v3, :cond_2c
invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/j;
iget-object v0, v0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;
invoke-virtual {v6, v0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
move-result-object v0
aput-object v0, v4, v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_11
:cond_2c
new-instance v0, Lcom/bbm/i/c;
invoke-direct {v0, v4}, Lcom/bbm/i/c;-><init>([Ljava/text/CollationKey;)V
invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V
:goto_3c
if-ge v1, v3, :cond_53
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3c
:cond_53
return-object v2
.end method
.method protected final a()Ljava/util/List;
.registers 7
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/i/b;->b:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/bbm/i/b;->a:Lcom/bbm/d;
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->n()Z
move-result v1
if-eqz v1, :cond_19
move-object v0, v2
:goto_18
return-object v0
:cond_19
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-boolean v3, p0, Lcom/bbm/i/b;->g:Z
if-eqz v3, :cond_2e
iget-object v1, p0, Lcom/bbm/i/b;->h:Lcom/bbm/j/r;
invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-direct {p0, v1}, Lcom/bbm/i/b;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v1
:cond_2e
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_37
:cond_37
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/j;
invoke-virtual {v0}, Lcom/bbm/iceberg/j;->a()Z
move-result v5
if-nez v5, :cond_37
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_37
:cond_4d
invoke-direct {p0, v3}, Lcom/bbm/i/b;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iget-boolean v3, p0, Lcom/bbm/i/b;->g:Z
if-eqz v3, :cond_6d
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_6d
iget-boolean v3, p0, Lcom/bbm/i/b;->i:Z
if-eqz v3, :cond_63
invoke-static {v1}, Lcom/bbm/i/b;->b(Ljava/util/List;)Ljava/util/List;
move-result-object v1
:cond_63
new-instance v3, Lcom/bbm/ui/gp;
sget-object v4, Lcom/bbm/ui/c/hj;->b:Lcom/bbm/ui/c/hj;
invoke-direct {v3, v1, v4}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_6d
iget-boolean v1, p0, Lcom/bbm/i/b;->f:Z
if-nez v1, :cond_89
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_89
iget-boolean v1, p0, Lcom/bbm/i/b;->i:Z
if-eqz v1, :cond_7f
invoke-static {v0}, Lcom/bbm/i/b;->b(Ljava/util/List;)Ljava/util/List;
move-result-object v0
:cond_7f
new-instance v1, Lcom/bbm/ui/gp;
sget-object v3, Lcom/bbm/ui/c/hj;->a:Lcom/bbm/ui/c/hj;
invoke-direct {v1, v0, v3}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_89
move-object v0, v2
goto :goto_18
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/i/b;->f:Z
iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->c()V
return-void
.end method
.method public final h()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/i/b;->g:Z
iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->c()V
return-void
.end method