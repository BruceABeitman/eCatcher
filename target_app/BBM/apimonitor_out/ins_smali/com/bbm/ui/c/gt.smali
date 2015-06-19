.class final Lcom/bbm/ui/c/gt;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Lcom/bbm/util/bx;
.field final synthetic a:Lcom/bbm/util/b/d;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;Lcom/bbm/util/b/d;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/gt;->c:Lcom/bbm/ui/c/fu;
iput-object p2, p0, Lcom/bbm/ui/c/gt;->a:Lcom/bbm/util/b/d;
iput-object p3, p0, Lcom/bbm/ui/c/gt;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/d/fd;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/c/gt;->a:Lcom/bbm/util/b/d;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/bbm/ui/c/gt;->a:Lcom/bbm/util/b/d;
iget-object v1, p0, Lcom/bbm/ui/c/gt;->b:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
:cond_b
if-eqz p1, :cond_18
iget-object v0, p0, Lcom/bbm/ui/c/gt;->c:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->c(Lcom/bbm/ui/c/fu;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_18
iget-object v0, p0, Lcom/bbm/ui/c/gt;->c:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->d(Lcom/bbm/ui/c/fu;)Z
iget-object v0, p0, Lcom/bbm/ui/c/gt;->c:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->e(Lcom/bbm/ui/c/fu;)V
return-void
.end method