.class public final Lcom/instagram/android/widget/a;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"
.field public static a:Ljava/lang/String;
.field private final b:Landroid/content/Context;
.field private final c:Landroid/support/v4/app/Fragment;
.field private d:Ljava/lang/String;
.field private e:Z
.method static constructor <clinit>()V
.registers 1
const-string v0, "http://help.instagram.com/227486307449481"
sput-object v0, Lcom/instagram/android/widget/a;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/widget/a;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/widget/a;->c:Landroid/support/v4/app/Fragment;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/widget/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/widget/a;->c()V
return-void
.end method
.method private c()V
.registers 4
new-instance v0, Lcom/instagram/android/fragment/fj;
invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V
iget-object v0, p0, Lcom/instagram/android/widget/a;->c:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/widget/a;->d:Ljava/lang/String;
iget-boolean v2, p0, Lcom/instagram/android/widget/a;->e:Z
invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final a()Lcom/instagram/android/widget/a;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/widget/a;->e:Z
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/android/widget/a;
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/a;->d:Ljava/lang/String;
return-object p0
.end method
.method public final b()V
.registers 6
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->H()Z
move-result v1
if-eqz v1, :cond_e
invoke-direct {p0}, Lcom/instagram/android/widget/a;->c()V
:goto_d
return-void
:cond_e
new-instance v1, Lcom/instagram/ui/dialog/b;
iget-object v2, p0, Lcom/instagram/android/widget/a;->b:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v2, Lcom/facebook/az;->confirm_find_friends_title:I
invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v1
sget v2, Lcom/facebook/az;->confirm_find_friends_msg:I
invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v1
sget v2, Lcom/facebook/az;->learn_more:I
sget v3, Lcom/facebook/az;->learn_more:I
sget-object v4, Lcom/instagram/android/widget/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/ui/dialog/b;->a(IILjava/lang/String;)Lcom/instagram/ui/dialog/b;
move-result-object v1
sget v2, Lcom/facebook/az;->allow:I
new-instance v3, Lcom/instagram/android/widget/d;
invoke-direct {v3, p0, v0}, Lcom/instagram/android/widget/d;-><init>(Lcom/instagram/android/widget/a;Lcom/instagram/k/b/a;)V
invoke-virtual {v1, v2, v3}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
new-instance v2, Lcom/instagram/android/widget/b;
invoke-direct {v2, p0}, Lcom/instagram/android/widget/b;-><init>(Lcom/instagram/android/widget/a;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto :goto_d
.end method