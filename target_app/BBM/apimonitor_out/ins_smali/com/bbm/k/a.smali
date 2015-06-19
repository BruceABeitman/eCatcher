.class public final Lcom/bbm/k/a;
.super Ljava/lang/Object;
.source "GroupsCalendarProvider.java"
.field final a:Lcom/bbm/g/am;
.field  b:Lcom/bbm/j/w;
.field  c:Ljava/util/HashMap;
.field final d:Lcom/bbm/g/f;
.field  e:Lcom/bbm/util/cj;
.field  f:Lcom/bbm/util/cj;
.field private final g:Lcom/bbm/d/b/c;
.field private final h:Lcom/bbm/k/i;
.field private final i:Lcom/bbm/d/b/l;
.field private final j:Lcom/bbm/d/b/i;
.field private final k:Lcom/bbm/d/b/c;
.field private final l:Lcom/bbm/k/h;
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/k/a;->a:Lcom/bbm/g/am;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/k/a;->c:Ljava/util/HashMap;
new-instance v0, Lcom/bbm/k/d;
invoke-direct {v0, p0}, Lcom/bbm/k/d;-><init>(Lcom/bbm/k/a;)V
iput-object v0, p0, Lcom/bbm/k/a;->e:Lcom/bbm/util/cj;
new-instance v0, Lcom/bbm/k/e;
invoke-direct {v0, p0}, Lcom/bbm/k/e;-><init>(Lcom/bbm/k/a;)V
iput-object v0, p0, Lcom/bbm/k/a;->f:Lcom/bbm/util/cj;
const-string v0, "GroupsCalendarProvider constructor"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/g/f;
invoke-direct {v0, p1, p2}, Lcom/bbm/g/f;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V
iput-object v0, p0, Lcom/bbm/k/a;->d:Lcom/bbm/g/f;
iget-object v0, p0, Lcom/bbm/k/a;->a:Lcom/bbm/g/am;
invoke-virtual {v0}, Lcom/bbm/g/am;->e()Lcom/bbm/j/w;
move-result-object v0
iput-object v0, p0, Lcom/bbm/k/a;->b:Lcom/bbm/j/w;
new-instance v0, Lcom/bbm/d/b/c;
iget-object v1, p0, Lcom/bbm/k/a;->b:Lcom/bbm/j/w;
invoke-direct {v0, v1}, Lcom/bbm/d/b/c;-><init>(Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/k/a;->g:Lcom/bbm/d/b/c;
new-instance v0, Lcom/bbm/k/i;
invoke-direct {v0, p0}, Lcom/bbm/k/i;-><init>(Lcom/bbm/k/a;)V
iput-object v0, p0, Lcom/bbm/k/a;->h:Lcom/bbm/k/i;
iget-object v0, p0, Lcom/bbm/k/a;->g:Lcom/bbm/d/b/c;
iget-object v1, p0, Lcom/bbm/k/a;->h:Lcom/bbm/k/i;
invoke-virtual {v0, v1}, Lcom/bbm/d/b/c;->a(Lcom/bbm/d/b/e;)V
new-instance v0, Lcom/bbm/k/b;
iget-object v1, p0, Lcom/bbm/k/a;->g:Lcom/bbm/d/b/c;
invoke-direct {v0, p0, v1}, Lcom/bbm/k/b;-><init>(Lcom/bbm/k/a;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/k/a;->i:Lcom/bbm/d/b/l;
new-instance v0, Lcom/bbm/d/b/i;
iget-object v1, p0, Lcom/bbm/k/a;->i:Lcom/bbm/d/b/l;
invoke-direct {v0, v1}, Lcom/bbm/d/b/i;-><init>(Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/k/a;->j:Lcom/bbm/d/b/i;
new-instance v0, Lcom/bbm/d/b/c;
iget-object v1, p0, Lcom/bbm/k/a;->j:Lcom/bbm/d/b/i;
invoke-direct {v0, v1}, Lcom/bbm/d/b/c;-><init>(Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/k/a;->k:Lcom/bbm/d/b/c;
new-instance v0, Lcom/bbm/k/h;
invoke-direct {v0, p0}, Lcom/bbm/k/h;-><init>(Lcom/bbm/k/a;)V
iput-object v0, p0, Lcom/bbm/k/a;->l:Lcom/bbm/k/h;
iget-object v0, p0, Lcom/bbm/k/a;->k:Lcom/bbm/d/b/c;
iget-object v1, p0, Lcom/bbm/k/a;->l:Lcom/bbm/k/h;
invoke-virtual {v0, v1}, Lcom/bbm/d/b/c;->a(Lcom/bbm/d/b/e;)V
return-void
.end method