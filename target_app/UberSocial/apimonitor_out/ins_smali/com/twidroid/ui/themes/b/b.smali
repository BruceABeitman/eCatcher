.class public Lcom/twidroid/ui/themes/b/b;
.super Lcom/twidroid/ui/themes/b/c;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
.registers 10
invoke-direct/range {p0 .. p7}, Lcom/twidroid/ui/themes/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
iput-object p8, p0, Lcom/twidroid/ui/themes/b/b;->a:Ljava/lang/String;
iput-object p9, p0, Lcom/twidroid/ui/themes/b/b;->b:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/b/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/themes/b/b;->a:Ljava/lang/String;
return-void
.end method
.method public b()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/b/b;->b:Landroid/graphics/drawable/Drawable;
return-object v0
.end method