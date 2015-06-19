.class final Lcom/spotify/mobile/android/ui/adapter/l;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/picasso/ai;
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/k;
.field private final b:Lcom/spotify/mobile/android/ui/b/c;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/adapter/k;Lcom/spotify/mobile/android/ui/b/c;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/l;->a:Lcom/spotify/mobile/android/ui/adapter/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/l;->b:Lcom/spotify/mobile/android/ui/b/c;
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/adapter/k;Lcom/spotify/mobile/android/ui/b/c;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/adapter/l;-><init>(Lcom/spotify/mobile/android/ui/adapter/k;Lcom/spotify/mobile/android/ui/b/c;)V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/l;->b:Lcom/spotify/mobile/android/ui/b/c;
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/l;->a:Lcom/spotify/mobile/android/ui/adapter/k;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/adapter/k;->a(Lcom/spotify/mobile/android/ui/adapter/k;)Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/drawable/Drawable;Z)V
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/l;->b:Lcom/spotify/mobile/android/ui/b/c;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/drawable/Drawable;Z)V
return-void
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)V
.registers 2
return-void
.end method