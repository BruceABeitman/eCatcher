.class public final Lcom/spotify/mobile/android/ui/contextmenu/a;
.super Landroid/support/v4/app/n;
.source "SourceFile"
.field private Y:Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
.field private Z:Lcom/spotify/mobile/android/ui/contextmenu/c;
.field private aa:Lcom/spotify/mobile/android/util/z;
.field private ab:Z
.field private ac:Landroid/os/Handler;
.field private ad:Lcom/spotify/mobile/android/util/aa;
.field private ae:Ljava/lang/Runnable;
.field private af:Landroid/support/v4/app/z;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/n;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ab:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ac:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/contextmenu/a$1;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ad:Lcom/spotify/mobile/android/util/aa;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/contextmenu/a$2;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ae:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/contextmenu/a$3;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->af:Landroid/support/v4/app/z;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/a;)Lcom/spotify/mobile/android/ui/contextmenu/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Z:Lcom/spotify/mobile/android/ui/contextmenu/c;
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
.registers 6
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;-><init>()V
invoke-interface {p1, v0, p2}, Lcom/spotify/mobile/android/ui/contextmenu/f;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
check-cast p0, Landroid/support/v4/app/FragmentActivity;
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->k()I
move-result v2
if-eqz v2, :cond_20
new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-direct {v2}, Lcom/spotify/mobile/android/ui/contextmenu/a;-><init>()V
iput-object v0, v2, Lcom/spotify/mobile/android/ui/contextmenu/a;->Y:Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
const-string v0, "ContextMenuFragment"
invoke-virtual {v2, v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/support/v4/app/r;Ljava/lang/String;)V
:cond_20
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ab:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/contextmenu/a;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Y:Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/contextmenu/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ab:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/contextmenu/a;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ae:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/contextmenu/a;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ac:Landroid/os/Handler;
return-object v0
.end method
.method public final D()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Z:Lcom/spotify/mobile/android/ui/contextmenu/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Y:Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ab:Z
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Z)V
return-void
.end method
.method public final c()Landroid/app/Dialog;
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Y:Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/c;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/contextmenu/c;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/a;)V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Z:Lcom/spotify/mobile/android/ui/contextmenu/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Z:Lcom/spotify/mobile/android/ui/contextmenu/c;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Y:Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ab:Z
invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;Z)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->Y:Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->i()Z
move-result v1
if-eqz v1, :cond_3f
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->u()Landroid/support/v4/app/y;
move-result-object v1
const v2, 0x7f0a0186
iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->af:Landroid/support/v4/app/z;
invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_3f
new-instance v1, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->ad:Lcom/spotify/mobile/android/util/aa;
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->aa:Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->u()Landroid/support/v4/app/y;
move-result-object v1
const v2, 0x7f0a0152
iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/a;->aa:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-object v0
.end method
.method public final y()V
.registers 1
invoke-super {p0}, Landroid/support/v4/app/n;->y()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a()V
return-void
.end method