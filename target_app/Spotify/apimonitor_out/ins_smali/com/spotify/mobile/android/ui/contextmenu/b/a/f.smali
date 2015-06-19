.class public final Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;
.super Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.source "SourceFile"
.field private a:I
.field private b:Landroid/graphics/drawable/Drawable;
.field private c:I
.field private d:Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
.field private e:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->e:Z
return-void
.end method
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->e:Z
iput p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->a:I
iput p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->c:I
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->a:I
return v0
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->b:Landroid/graphics/drawable/Drawable;
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->d:Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
return-object p0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->c:I
return v0
.end method
.method public final c()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->b:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->e:Z
return v0
.end method
.method public final e()Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->e:Z
return-object p0
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->d:Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;->d:Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;->a()V
:cond_9
return-void
.end method