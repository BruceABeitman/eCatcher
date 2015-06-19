.class public final Landroid/support/v4/view/a/a;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"
.field public static final a:Landroid/support/v4/view/a/c;
.field public final b:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/a/f;
invoke-direct {v0}, Landroid/support/v4/view/a/f;-><init>()V
sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
:goto_d
return-void
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_1c
new-instance v0, Landroid/support/v4/view/a/e;
invoke-direct {v0}, Landroid/support/v4/view/a/e;-><init>()V
sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
goto :goto_d
:cond_1c
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_2a
new-instance v0, Landroid/support/v4/view/a/d;
invoke-direct {v0}, Landroid/support/v4/view/a/d;-><init>()V
sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
goto :goto_d
:cond_2a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_38
new-instance v0, Landroid/support/v4/view/a/b;
invoke-direct {v0}, Landroid/support/v4/view/a/b;-><init>()V
sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
goto :goto_d
:cond_38
new-instance v0, Landroid/support/v4/view/a/g;
invoke-direct {v0}, Landroid/support/v4/view/a/g;-><init>()V
sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
goto :goto_d
.end method
.method public constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
return-void
.end method
.method public static a(Landroid/support/v4/view/a/a;)Landroid/support/v4/view/a/a;
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_10
new-instance v0, Landroid/support/v4/view/a/a;
invoke-direct {v0, v1}, Landroid/support/v4/view/a/a;-><init>(Ljava/lang/Object;)V
:goto_f
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public final a()I
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final a(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;I)V
return-void
.end method
.method public final a(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Z)V
return-void
.end method
.method public final b(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public final b(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public final b(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public final b(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->d(Ljava/lang/Object;Z)V
return-void
.end method
.method public final b()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->k(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final c(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public final c(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public final c(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public final c(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->h(Ljava/lang/Object;Z)V
return-void
.end method
.method public final c()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->l(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final d(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public final d(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->i(Ljava/lang/Object;Z)V
return-void
.end method
.method public final d()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->s(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final e(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->g(Ljava/lang/Object;Z)V
return-void
.end method
.method public final e()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->t(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Landroid/support/v4/view/a/a;
iget-object v2, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
if-nez v2, :cond_21
iget-object v2, p1, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
iget-object v3, p1, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final f(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Z)V
return-void
.end method
.method public final f()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->p(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final g(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->e(Ljava/lang/Object;Z)V
return-void
.end method
.method public final g()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->i(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final h(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Z)V
return-void
.end method
.method public final h()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->m(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public final i()Z
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->j(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final j()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final k()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final l()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final m()V
.registers 3
sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v1, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->q(Ljava/lang/Object;)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 5
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->a(Landroid/graphics/Rect;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "; boundsInParent: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->c(Landroid/graphics/Rect;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "; boundsInScreen: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "; packageName: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->j()Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v0, "; className: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->k()Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v0, "; text: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v3, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v0, "; contentDescription: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->l()Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v0, "; viewId: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v3, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->u(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "; checkable: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v3, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->g(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; checked: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v3, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->h(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; focusable: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->b()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; focused: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->c()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; selected: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->f()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; clickable: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->g()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; longClickable: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->h()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; enabled: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->i()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v0, "; password: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v3, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->n(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "; scrollable: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/c;
iget-object v3, p0, Landroid/support/v4/view/a/a;->b:Ljava/lang/Object;
invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->o(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "; ["
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/support/v4/view/a/a;->a()I
move-result v0
:goto_128
if-eqz v0, :cond_17b
const/4 v1, 0x1
invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I
move-result v3
shl-int v3, v1, v3
xor-int/lit8 v1, v3, -0x1
and-int/2addr v1, v0
sparse-switch v3, :sswitch_data_186
const-string v0, "ACTION_UNKNOWN"
:goto_139
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v1, :cond_143
const-string v0, ", "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_143
move v0, v1
goto :goto_128
:sswitch_145
const-string v0, "ACTION_FOCUS"
goto :goto_139
:sswitch_148
const-string v0, "ACTION_CLEAR_FOCUS"
goto :goto_139
:sswitch_14b
const-string v0, "ACTION_SELECT"
goto :goto_139
:sswitch_14e
const-string v0, "ACTION_CLEAR_SELECTION"
goto :goto_139
:sswitch_151
const-string v0, "ACTION_CLICK"
goto :goto_139
:sswitch_154
const-string v0, "ACTION_LONG_CLICK"
goto :goto_139
:sswitch_157
const-string v0, "ACTION_ACCESSIBILITY_FOCUS"
goto :goto_139
:sswitch_15a
const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"
goto :goto_139
:sswitch_15d
const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"
goto :goto_139
:sswitch_160
const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"
goto :goto_139
:sswitch_163
const-string v0, "ACTION_NEXT_HTML_ELEMENT"
goto :goto_139
:sswitch_166
const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"
goto :goto_139
:sswitch_169
const-string v0, "ACTION_SCROLL_FORWARD"
goto :goto_139
:sswitch_16c
const-string v0, "ACTION_SCROLL_BACKWARD"
goto :goto_139
:sswitch_16f
const-string v0, "ACTION_CUT"
goto :goto_139
:sswitch_172
const-string v0, "ACTION_COPY"
goto :goto_139
:sswitch_175
const-string v0, "ACTION_PASTE"
goto :goto_139
:sswitch_178
const-string v0, "ACTION_SET_SELECTION"
goto :goto_139
:cond_17b
const-string v0, "]"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
nop
:sswitch_data_186
.sparse-switch
0x1 -> :sswitch_145
0x2 -> :sswitch_148
0x4 -> :sswitch_14b
0x8 -> :sswitch_14e
0x10 -> :sswitch_151
0x20 -> :sswitch_154
0x40 -> :sswitch_157
0x80 -> :sswitch_15a
0x100 -> :sswitch_15d
0x200 -> :sswitch_160
0x400 -> :sswitch_163
0x800 -> :sswitch_166
0x1000 -> :sswitch_169
0x2000 -> :sswitch_16c
0x4000 -> :sswitch_172
0x8000 -> :sswitch_175
0x10000 -> :sswitch_16f
0x20000 -> :sswitch_178
.end sparse-switch
.end method