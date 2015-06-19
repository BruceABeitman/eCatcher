.class public Lcom/twidroid/ui/c/d;
.super Lcom/twidroid/ui/c/a;
.source "SourceFile"
.field private p:Ljava/lang/String;
.field private q:Landroid/view/View$OnClickListener;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Lcom/twidroid/ui/c/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
iput-object v0, p0, Lcom/twidroid/ui/c/d;->p:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/ui/c/d;->q:Landroid/view/View$OnClickListener;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Lcom/twidroid/ui/c/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
iput-object p2, p0, Lcom/twidroid/ui/c/d;->p:Ljava/lang/String;
iput-object p3, p0, Lcom/twidroid/ui/c/d;->q:Landroid/view/View$OnClickListener;
return-void
.end method
.method public b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/c/d;->p:Ljava/lang/String;
return-object v0
.end method
.method public e()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public f()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/c/d;->q:Landroid/view/View$OnClickListener;
if-nez v0, :cond_8
iget-object v0, p0, Lcom/twidroid/ui/c/d;->p:Ljava/lang/String;
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public u_()Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/c/d;->q:Landroid/view/View$OnClickListener;
return-object v0
.end method