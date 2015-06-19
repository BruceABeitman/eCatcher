.class final Lcom/instagram/android/feed/ui/b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BoundedDrawable.java"
.field  a:Landroid/graphics/drawable/Drawable;
.field  b:I
.field private c:Z
.field private d:Z
.method constructor <init>(Lcom/instagram/android/feed/ui/b;Lcom/instagram/android/feed/ui/a;Landroid/content/res/Resources;)V
.registers 5
invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
if-eqz p1, :cond_1d
if-eqz p3, :cond_1e
iget-object v0, p1, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
:goto_13
iget-object v0, p0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/ui/b;->d:Z
iput-boolean v0, p0, Lcom/instagram/android/feed/ui/b;->c:Z
:cond_1d
return-void
:cond_1e
iget-object v0, p1, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
goto :goto_13
.end method
.method final a()Z
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/instagram/android/feed/ui/b;->c:Z
if-nez v0, :cond_12
iget-object v0, p0, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v0
if-eqz v0, :cond_15
move v0, v1
:goto_e
iput-boolean v0, p0, Lcom/instagram/android/feed/ui/b;->d:Z
iput-boolean v1, p0, Lcom/instagram/android/feed/ui/b;->c:Z
:cond_12
iget-boolean v0, p0, Lcom/instagram/android/feed/ui/b;->d:Z
return v0
:cond_15
const/4 v0, 0x0
goto :goto_e
.end method
.method public final getChangingConfigurations()I
.registers 2
iget v0, p0, Lcom/instagram/android/feed/ui/b;->b:I
return v0
.end method
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
.registers 4
new-instance v0, Lcom/instagram/android/feed/ui/a;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/feed/ui/a;-><init>(Lcom/instagram/android/feed/ui/b;Landroid/content/res/Resources;B)V
return-object v0
.end method
.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.registers 4
new-instance v0, Lcom/instagram/android/feed/ui/a;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/instagram/android/feed/ui/a;-><init>(Lcom/instagram/android/feed/ui/b;Landroid/content/res/Resources;B)V
return-object v0
.end method