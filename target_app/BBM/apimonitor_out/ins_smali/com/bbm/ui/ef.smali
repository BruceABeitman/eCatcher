.class public abstract Lcom/bbm/ui/ef;
.super Lcom/bbm/ui/dy;
.source "ObservableValueAdapter.java"
.implements Landroid/widget/ListAdapter;
.field private final b:Lcom/bbm/j/r;
.field private c:Ljava/util/List;
.field private d:Z
.field private final e:Landroid/os/Handler;
.field private final f:Lcom/bbm/ui/gb;
.field private final g:Lcom/bbm/j/h;
.field private final h:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/bbm/j/r;)V
.registers 4
invoke-direct {p0}, Lcom/bbm/ui/dy;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/ef;->d:Z
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/ui/ef;->e:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/gb;
invoke-direct {v0}, Lcom/bbm/ui/gb;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/ef;->f:Lcom/bbm/ui/gb;
new-instance v0, Lcom/bbm/ui/eg;
invoke-direct {v0, p0}, Lcom/bbm/ui/eg;-><init>(Lcom/bbm/ui/ef;)V
iput-object v0, p0, Lcom/bbm/ui/ef;->g:Lcom/bbm/j/h;
new-instance v0, Lcom/bbm/ui/eh;
invoke-direct {v0, p0}, Lcom/bbm/ui/eh;-><init>(Lcom/bbm/ui/ef;)V
iput-object v0, p0, Lcom/bbm/ui/ef;->h:Ljava/lang/Runnable;
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/bbm/ui/ef;->b:Lcom/bbm/j/r;
iget-object v0, p0, Lcom/bbm/ui/ef;->b:Lcom/bbm/j/r;
iget-object v1, p0, Lcom/bbm/ui/ef;->g:Lcom/bbm/j/h;
invoke-interface {v0, v1}, Lcom/bbm/j/r;->a(Lcom/bbm/j/h;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/ef;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/ef;->d:Z
return v0
.end method
.method static synthetic a(Lcom/bbm/ui/ef;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/ef;->d:Z
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/ef;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ef;->h:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/ef;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ef;->e:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/ef;)Ljava/util/List;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/ef;->c:Ljava/util/List;
return-object v0
.end method
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public a()Ljava/util/List;
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ef;->c:Ljava/util/List;
if-nez v0, :cond_30
iget-object v0, p0, Lcom/bbm/ui/ef;->b:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iput-object v0, p0, Lcom/bbm/ui/ef;->c:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/bbm/ui/ef;->c:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_19
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_2b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/bbm/ui/ef;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_19
:cond_2b
iget-object v1, p0, Lcom/bbm/ui/ef;->f:Lcom/bbm/ui/gb;
invoke-virtual {v1, v0}, Lcom/bbm/ui/gb;->a(Ljava/util/List;)V
:cond_30
iget-object v0, p0, Lcom/bbm/ui/ef;->c:Ljava/util/List;
return-object v0
.end method
.method public getCount()I
.registers 2
invoke-virtual {p0}, Lcom/bbm/ui/ef;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/bbm/ui/ef;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/ef;->a()Ljava/util/List;
iget-object v0, p0, Lcom/bbm/ui/ef;->f:Lcom/bbm/ui/gb;
iget-object v0, v0, Lcom/bbm/ui/gb;->a:[J
array-length v0, v0
if-ge p1, v0, :cond_c
if-gez p1, :cond_f
:cond_c
const-wide/16 v0, -0x1
:goto_e
return-wide v0
:cond_f
iget-object v0, p0, Lcom/bbm/ui/ef;->f:Lcom/bbm/ui/gb;
iget-object v0, v0, Lcom/bbm/ui/gb;->a:[J
aget-wide v0, v0, p1
goto :goto_e
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method