.class public Lcom/spotify/mobile/android/ui/page/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Lcom/spotify/mobile/android/ui/page/c;
.field private b:Landroid/content/Context;
.field private c:Landroid/view/ViewGroup;
.field private d:Landroid/view/View;
.field private e:I
.field private f:Z
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/page/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/page/c;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/page/b;->a:Lcom/spotify/mobile/android/ui/page/c;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/b;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/page/b;->c:Landroid/view/ViewGroup;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/page/b;->f:Z
return-void
.end method
.method public a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/page/b;->f:Z
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/page/b;->e:I
return-void
.end method
.method public b()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/page/b;->f:Z
return-void
.end method
.method public final b(I)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/page/b;->f()Landroid/view/LayoutInflater;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/b;->c:Landroid/view/ViewGroup;
const/4 v2, 0x0
invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/b;->c(Landroid/view/View;)V
return-void
.end method
.method public final c(I)Landroid/view/View;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/b;->d:Landroid/view/View;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/b;->d:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final c(Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/b;->d:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/b;->d:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getId()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/page/b;->e:I
return-void
.end method
.method public final d()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/b;->b:Landroid/content/Context;
return-object v0
.end method
.method public final e()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/b;->d:Landroid/view/View;
return-object v0
.end method
.method public final f()Landroid/view/LayoutInflater;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/b;->b:Landroid/content/Context;
const-string v1, "layout_inflater"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
return-object v0
.end method