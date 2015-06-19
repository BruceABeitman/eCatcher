.class final Lcom/spotify/mobile/android/spotlets/artist/view/c/f;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/dg;
.field private final a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/f;->a:Landroid/content/Context;
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
.registers 7
const-class v0, Lcom/spotify/mobile/android/ui/stuff/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/f;->a:Landroid/content/Context;
invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;
move-result-object v1
invoke-interface {v1, p1}, Lcom/spotify/mobile/android/util/dg;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/f;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0022
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/f;->a:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0b0021
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/a;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method