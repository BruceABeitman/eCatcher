.class final Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$2;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;Landroid/graphics/drawable/shapes/Shape;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;
invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
return-void
.end method
.method public final getIntrinsicHeight()I
.registers 3
const/high16 v0, 0x40c0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 3
const/high16 v0, 0x40c0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v0
return v0
.end method