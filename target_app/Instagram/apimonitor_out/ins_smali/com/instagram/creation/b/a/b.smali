.class public Lcom/instagram/creation/b/a/b;
.super Ljava/lang/Object;
.source "PendingMedia.java"
.implements Lcom/instagram/model/a/b;
.field private A:Ljava/lang/String;
.field private B:Lcom/instagram/model/people/b;
.field private C:Ljava/lang/String;
.field private D:Ljava/util/List;
.field private E:Lcom/instagram/creation/b/a/a;
.field private F:Ljava/util/List;
.field private G:Z
.field private H:Lcom/instagram/creation/b/a/g;
.field private volatile a:Lcom/instagram/creation/b/a/d;
.field private volatile b:Lcom/instagram/creation/b/a/d;
.field private c:Lcom/instagram/model/a/a;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:I
.field private h:I
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Z
.field private l:Z
.field private m:Z
.field private n:Z
.field private o:Z
.field private p:Z
.field private q:D
.field private r:D
.field private s:Lcom/instagram/venue/model/Venue;
.field private t:Ljava/lang/String;
.field private u:Ljava/lang/String;
.field private volatile v:Z
.field private volatile w:I
.field private volatile x:Lcom/instagram/creation/b/a/c;
.field private y:I
.field private z:I
.method private constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;
iput-object v0, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;
sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;
iput-object v0, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;
new-instance v0, Lcom/instagram/model/people/b;
invoke-direct {v0}, Lcom/instagram/model/people/b;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/b/a/b;->B:Lcom/instagram/model/people/b;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/creation/b/a/b;->C:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/b/a/b;->D:Ljava/util/List;
new-instance v0, Lcom/instagram/creation/b/a/g;
invoke-direct {v0}, Lcom/instagram/creation/b/a/g;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/b/a/b;->H:Lcom/instagram/creation/b/a/g;
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->f:Ljava/lang/String;
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->A:Ljava/lang/String;
return-void
.end method
.method private P()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->x:Lcom/instagram/creation/b/a/c;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->x:Lcom/instagram/creation/b/a/c;
invoke-interface {v0, p0}, Lcom/instagram/creation/b/a/c;->a(Lcom/instagram/creation/b/a/b;)V
:cond_9
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
.registers 3
new-instance v0, Lcom/instagram/creation/b/a/b;
invoke-direct {v0, p0}, Lcom/instagram/creation/b/a/b;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
iput-object v1, v0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;
return-object v0
.end method
.method public static b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
.registers 3
new-instance v0, Lcom/instagram/creation/b/a/b;
invoke-direct {v0, p0}, Lcom/instagram/creation/b/a/b;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
iput-object v1, v0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;
return-object v0
.end method
.method public final A()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->i:Ljava/lang/String;
return-object v0
.end method
.method public final B()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->j:Ljava/lang/String;
return-object v0
.end method
.method public final C()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->F:Ljava/util/List;
return-object v0
.end method
.method public final D()Lcom/instagram/model/people/b;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->B:Lcom/instagram/model/people/b;
return-object v0
.end method
.method public final E()Z
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->B:Lcom/instagram/model/people/b;
invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final F()Z
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/b;->y:I
if-eqz v0, :cond_a
iget v0, p0, Lcom/instagram/creation/b/a/b;->z:I
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final G()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/b;->y:I
return v0
.end method
.method public final H()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/b;->z:I
return v0
.end method
.method public final I()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->D:Ljava/util/List;
return-object v0
.end method
.method public final J()Lcom/instagram/creation/b/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->E:Lcom/instagram/creation/b/a/a;
return-object v0
.end method
.method public final K()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->C:Ljava/lang/String;
return-object v0
.end method
.method public final L()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->t:Ljava/lang/String;
return-object v0
.end method
.method public final M()Lcom/instagram/creation/b/a/g;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->H:Lcom/instagram/creation/b/a/g;
return-object v0
.end method
.method public final N()Z
.registers 3
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final O()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->G:Z
return v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->f:Ljava/lang/String;
return-object v0
.end method
.method public final a(D)V
.registers 3
iput-wide p1, p0, Lcom/instagram/creation/b/a/b;->q:D
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/b;->g:I
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->E:Lcom/instagram/creation/b/a/a;
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->x:Lcom/instagram/creation/b/a/c;
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;
invoke-direct {p0}, Lcom/instagram/creation/b/a/b;->P()V
return-void
.end method
.method public final a(Lcom/instagram/venue/model/Venue;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->s:Lcom/instagram/venue/model/Venue;
return-void
.end method
.method public final a(Ljava/util/ArrayList;)V
.registers 3
new-instance v0, Lcom/instagram/model/people/b;
invoke-direct {v0, p1}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V
iput-object v0, p0, Lcom/instagram/creation/b/a/b;->B:Lcom/instagram/model/people/b;
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->F:Ljava/util/List;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->k:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->A:Ljava/lang/String;
return-object v0
.end method
.method public final b(D)V
.registers 3
iput-wide p1, p0, Lcom/instagram/creation/b/a/b;->r:D
return-void
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/b;->h:I
return-void
.end method
.method public final b(Lcom/instagram/creation/b/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;
return-void
.end method
.method public final b(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->D:Ljava/util/List;
return-void
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->l:Z
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/b;->g:I
return v0
.end method
.method public final c(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/b;->w:I
invoke-direct {p0}, Lcom/instagram/creation/b/a/b;->P()V
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->A:Ljava/lang/String;
return-void
.end method
.method public final c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->m:Z
return-void
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/b;->h:I
return v0
.end method
.method public final d(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/b;->y:I
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->u:Ljava/lang/String;
return-void
.end method
.method public final d(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->n:Z
return-void
.end method
.method public final e(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/b/a/b;->z:I
return-void
.end method
.method public final e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->d:Ljava/lang/String;
return-void
.end method
.method public final e(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->o:Z
return-void
.end method
.method public final e()Z
.registers 5
const-wide/16 v2, 0x0
iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->q:D
cmpl-double v0, v0, v2
if-eqz v0, :cond_10
iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->r:D
cmpl-double v0, v0, v2
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public final f()V
.registers 3
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/instagram/creation/b/a/b;->q:D
iput-wide v0, p0, Lcom/instagram/creation/b/a/b;->r:D
return-void
.end method
.method public final f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->e:Ljava/lang/String;
return-void
.end method
.method public final f(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->p:Z
return-void
.end method
.method public final g()Ljava/lang/Double;
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->q:D
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
return-object v0
.end method
.method public final g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->i:Ljava/lang/String;
return-void
.end method
.method public final g(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->v:Z
invoke-direct {p0}, Lcom/instagram/creation/b/a/b;->P()V
return-void
.end method
.method public final h()Ljava/lang/Double;
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/b/a/b;->r:D
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
return-object v0
.end method
.method public final h(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->j:Ljava/lang/String;
return-void
.end method
.method public final h(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/b/a/b;->G:Z
return-void
.end method
.method public final i()Lcom/instagram/venue/model/Venue;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->s:Lcom/instagram/venue/model/Venue;
return-object v0
.end method
.method public final i(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->C:Ljava/lang/String;
return-void
.end method
.method public final j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->d:Ljava/lang/String;
return-object v0
.end method
.method public final j(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/b;->t:Ljava/lang/String;
return-void
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->e:Ljava/lang/String;
return-object v0
.end method
.method public final l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->u:Ljava/lang/String;
return-object v0
.end method
.method public final m()Lcom/instagram/model/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;
return-object v0
.end method
.method public final n()Z
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->s:Lcom/instagram/venue/model/Venue;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final o()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final p()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->k:Z
return v0
.end method
.method public final q()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->o:Z
return v0
.end method
.method public final r()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->l:Z
return v0
.end method
.method public final s()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->m:Z
return v0
.end method
.method public final t()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->n:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "Media type:"
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;
sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
if-ne v0, v2, :cond_54
const-string v0, "Photo"
:goto_f
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\nServer Status: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\nTarget Status: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/b/a/b;->c:Lcom/instagram/model/a/a;
sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
if-ne v1, v2, :cond_4f
const-string v1, "\nSession name: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/b/a/b;->C:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "\nRendered Video Path: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/b/a/b;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_4f
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_54
const-string v0, "Video"
goto :goto_f
.end method
.method public final u()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->p:Z
return v0
.end method
.method public final v()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/b/a/b;->v:Z
return v0
.end method
.method public final w()I
.registers 2
iget v0, p0, Lcom/instagram/creation/b/a/b;->w:I
return v0
.end method
.method public final x()Lcom/instagram/creation/b/a/c;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->x:Lcom/instagram/creation/b/a/c;
return-object v0
.end method
.method public final y()Lcom/instagram/creation/b/a/d;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->a:Lcom/instagram/creation/b/a/d;
return-object v0
.end method
.method public final z()Lcom/instagram/creation/b/a/d;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/b;->b:Lcom/instagram/creation/b/a/d;
return-object v0
.end method