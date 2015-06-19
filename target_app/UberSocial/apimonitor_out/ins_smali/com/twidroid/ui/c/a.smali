.class public abstract Lcom/twidroid/ui/c/a;
.super Lcom/twidroid/ui/c/h;
.source "SourceFile"
.field protected a:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p2}, Lcom/twidroid/ui/c/h;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/twidroid/ui/c/a;->a:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public a()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/c/a;->a:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/c/a;->a:Landroid/graphics/drawable/Drawable;
return-object p0
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method