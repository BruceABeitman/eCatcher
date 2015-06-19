.class public final Lcom/spotify/mobile/android/ui/fragments/o;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private static final b:[Ljava/lang/String;
.field private static f:Z
.field private static g:Z
.field private Y:Landroid/os/Handler;
.field private Z:Ljava/lang/Runnable;
.field  a:Landroid/support/v4/app/z;
.field private c:Landroid/view/View;
.field private d:Landroid/widget/TextView;
.field private e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
.field private h:I
.field private i:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "connected"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "can_connect"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/o;->b:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/o$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/o$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/o;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->i:Ljava/lang/Runnable;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Y:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/o$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/o$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/o;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Z:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/o$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/o$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/o;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->a:Landroid/support/v4/app/z;
return-void
.end method
.method static synthetic D()Z
.registers 1
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/o;->g:Z
return v0
.end method
.method static synthetic E()Z
.registers 1
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/o;->f:Z
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/o;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
:cond_a
return-void
.end method
.method public static a()Z
.registers 1
sget-boolean v0, Lcom/spotify/mobile/android/ui/fragments/o;->f:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/o;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Y:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/o;->i:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
:cond_11
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/o;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->d:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic c()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/o;->b:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/o;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->i:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic d(Z)Z
.registers 1
sput-boolean p0, Lcom/spotify/mobile/android/ui/fragments/o;->f:Z
return p0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/o;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->h:I
return v0
.end method
.method static synthetic e(Z)Z
.registers 1
sput-boolean p0, Lcom/spotify/mobile/android/ui/fragments/o;->g:Z
return p0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/o;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Y:Landroid/os/Handler;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/o;->c:Landroid/view/View;
const v0, 0x7f03006e
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/o;->k()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0d0012
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->h:I
const v0, 0x7f0a021e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->d:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
invoke-interface {v0, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
:cond_2b
return-object v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
if-nez p1, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Y:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Z:Ljava/lang/Runnable;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/o;->k()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0d0003
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I
move-result v2
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_18
return-void
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Y:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Z:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_18
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/snackbar/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/o;->e:Lcom/spotify/mobile/android/ui/view/snackbar/f;
return-void
.end method
.method public final z()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Y:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Z:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o;->Y:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/o;->i:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V
return-void
.end method