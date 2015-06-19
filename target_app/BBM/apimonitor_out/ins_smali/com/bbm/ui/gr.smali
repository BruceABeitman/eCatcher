.class final Lcom/bbm/ui/gr;
.super Ljava/lang/Object;
.source "StoreItemView.java"
.implements Lcom/bbm/ui/gv;
.field final synthetic a:Z
.field final synthetic b:Lcom/bbm/ui/StoreItemView;
.method constructor <init>(Lcom/bbm/ui/StoreItemView;Z)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/gr;->b:Lcom/bbm/ui/StoreItemView;
iput-boolean p2, p0, Lcom/bbm/ui/gr;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/d/fd;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/gr;->b:Lcom/bbm/ui/StoreItemView;
invoke-static {v0}, Lcom/bbm/ui/StoreItemView;->a(Lcom/bbm/ui/StoreItemView;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_18
if-nez p1, :cond_19
iget-object v0, p0, Lcom/bbm/ui/gr;->b:Lcom/bbm/ui/StoreItemView;
invoke-static {v0}, Lcom/bbm/ui/StoreItemView;->b(Lcom/bbm/ui/StoreItemView;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_18
:cond_18
return-void
:cond_19
iget-object v0, p1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
iget-boolean v1, p0, Lcom/bbm/ui/gr;->a:Z
if-eqz v1, :cond_25
iget-object v1, p0, Lcom/bbm/ui/gr;->b:Lcom/bbm/ui/StoreItemView;
invoke-static {v1, v0}, Lcom/bbm/ui/StoreItemView;->a(Lcom/bbm/ui/StoreItemView;Landroid/graphics/drawable/Drawable;)V
goto :goto_18
:cond_25
iget-object v1, p0, Lcom/bbm/ui/gr;->b:Lcom/bbm/ui/StoreItemView;
invoke-static {v1}, Lcom/bbm/ui/StoreItemView;->b(Lcom/bbm/ui/StoreItemView;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_18
.end method