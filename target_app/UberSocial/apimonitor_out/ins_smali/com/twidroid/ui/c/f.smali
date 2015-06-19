.class public Lcom/twidroid/ui/c/f;
.super Lcom/twidroid/ui/c/a;
.source "SourceFile"
.field private p:I
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/c/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/c/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
invoke-virtual {p0, p3}, Lcom/twidroid/ui/c/f;->a(I)V
return-void
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/twidroid/ui/c/f;->p:I
return-void
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/twidroid/ui/c/f;->p:I
return v0
.end method
.method public e()Z
.registers 2
const/4 v0, 0x0
return v0
.end method