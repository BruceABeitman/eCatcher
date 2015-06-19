.class public final Lcom/instagram/android/nux/a;
.super Ljava/lang/Object;
.source "FacebookHelper.java"
.field private static a:Ljava/lang/String;
.field private b:Lcom/instagram/common/a/a/m;
.field private c:Lcom/instagram/android/nux/e;
.field private d:Landroid/app/Activity;
.field private e:Landroid/app/ProgressDialog;
.field private f:Z
.method static constructor <clinit>()V
.registers 1
const-string v0, "FacebookHelper"
sput-object v0, Lcom/instagram/android/nux/a;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Lcom/instagram/android/nux/e;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/common/a/a/q;
invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V
iput-object v0, p0, Lcom/instagram/android/nux/a;->b:Lcom/instagram/common/a/a/m;
iput-object p2, p0, Lcom/instagram/android/nux/a;->c:Lcom/instagram/android/nux/e;
iput-object p1, p0, Lcom/instagram/android/nux/a;->d:Landroid/app/Activity;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/nux/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/a;->d()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/nux/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/a;->e()V
return-void
.end method
.method private c()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/nux/a;->d:Landroid/app/Activity;
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->error:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->request_error:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dismiss:I
new-instance v2, Lcom/instagram/android/nux/b;
invoke-direct {v2, p0}, Lcom/instagram/android/nux/b;-><init>(Lcom/instagram/android/nux/a;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/nux/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/nux/a;->f:Z
return v0
.end method
.method static synthetic d(Lcom/instagram/android/nux/a;)Lcom/instagram/android/nux/e;
.registers 2
iget-object v0, p0, Lcom/instagram/android/nux/a;->c:Lcom/instagram/android/nux/e;
return-object v0
.end method
.method private d()V
.registers 9
const/4 v7, 0x1
iget-object v0, p0, Lcom/instagram/android/nux/a;->c:Lcom/instagram/android/nux/e;
if-eqz v0, :cond_41
new-instance v0, Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/instagram/android/nux/a;->d:Landroid/app/Activity;
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/instagram/android/nux/a;->d:Landroid/app/Activity;
sget v2, Lcom/facebook/az;->connecting_to_x:I
new-array v3, v7, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/instagram/android/nux/a;->d:Landroid/app/Activity;
sget v6, Lcom/facebook/az;->facebook:I
invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
iget-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
new-instance v1, Lcom/instagram/android/nux/c;
invoke-direct {v1, p0}, Lcom/instagram/android/nux/c;-><init>(Lcom/instagram/android/nux/a;)V
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
iget-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_41
return-void
.end method
.method private e()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/nux/a;->e:Landroid/app/ProgressDialog;
:cond_c
return-void
.end method
.method static synthetic e(Lcom/instagram/android/nux/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/nux/a;->c()V
return-void
.end method
.method static synthetic f(Lcom/instagram/android/nux/a;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/nux/a;->f:Z
return v0
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/nux/a;->c:Lcom/instagram/android/nux/e;
iput-object v0, p0, Lcom/instagram/android/nux/a;->d:Landroid/app/Activity;
return-void
.end method
.method public final b()V
.registers 4
new-instance v0, Lcom/instagram/android/nux/h;
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/android/nux/h;-><init>(Ljava/lang/String;)V
new-instance v1, Lcom/instagram/android/nux/d;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/instagram/android/nux/d;-><init>(Lcom/instagram/android/nux/a;B)V
invoke-virtual {v0, v1}, Lcom/instagram/android/nux/h;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
iget-object v1, p0, Lcom/instagram/android/nux/a;->b:Lcom/instagram/common/a/a/m;
invoke-interface {v1, v0}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method