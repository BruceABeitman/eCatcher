.class public final Lcom/instagram/android/widget/e;
.super Ljava/lang/Object;
.source "FindPeopleButtonsHelper.java"
.field private final a:Lcom/instagram/android/widget/g;
.field private b:Landroid/view/View$OnClickListener;
.field private c:Landroid/view/View$OnClickListener;
.field private d:Landroid/content/Context;
.field private e:Landroid/support/v4/app/Fragment;
.field private f:Landroid/widget/BaseAdapter;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/widget/BaseAdapter;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/android/widget/g;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/widget/g;-><init>(Lcom/instagram/android/widget/e;B)V
iput-object v0, p0, Lcom/instagram/android/widget/e;->a:Lcom/instagram/android/widget/g;
iput-object p1, p0, Lcom/instagram/android/widget/e;->d:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/widget/e;->e:Landroid/support/v4/app/Fragment;
iput-object p3, p0, Lcom/instagram/android/widget/e;->f:Landroid/widget/BaseAdapter;
new-instance v0, Lcom/instagram/android/widget/h;
invoke-direct {v0, p0}, Lcom/instagram/android/widget/h;-><init>(Lcom/instagram/android/widget/e;)V
iput-object v0, p0, Lcom/instagram/android/widget/e;->b:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/instagram/android/widget/f;
invoke-direct {v0, p0}, Lcom/instagram/android/widget/f;-><init>(Lcom/instagram/android/widget/e;)V
iput-object v0, p0, Lcom/instagram/android/widget/e;->c:Landroid/view/View$OnClickListener;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/widget/e;)Landroid/widget/BaseAdapter;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/e;->f:Landroid/widget/BaseAdapter;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/widget/e;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/widget/e;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
new-instance v0, Lcom/instagram/android/fragment/fj;
invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V
iget-object v0, p0, Lcom/instagram/android/widget/e;->e:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p1, v1, v2, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/widget/e;)Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/e;->e:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method public static b()Z
.registers 1
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v0
return v0
.end method
.method static synthetic c(Lcom/instagram/android/widget/e;)Lcom/instagram/android/widget/g;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/e;->a:Lcom/instagram/android/widget/g;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/widget/e;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/e;->d:Landroid/content/Context;
return-object v0
.end method
.method public static f()Z
.registers 1
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->H()Z
move-result v0
return v0
.end method
.method public final a()Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/e;->b:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 7
invoke-static {}, Lcom/instagram/share/b/a;->i()I
move-result v0
if-gtz v0, :cond_f
iget-object v0, p0, Lcom/instagram/android/widget/e;->d:Landroid/content/Context;
sget v1, Lcom/facebook/az;->subtitle_default_people_facebook:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v1, p0, Lcom/instagram/android/widget/e;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/ax;->x_facebook_friends:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public final d()Lcom/instagram/android/widget/g;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/e;->a:Lcom/instagram/android/widget/g;
return-object v0
.end method
.method public final e()Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/e;->c:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 7
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->I()I
move-result v0
if-gtz v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/widget/e;->d:Landroid/content/Context;
sget v1, Lcom/facebook/az;->subtitle_default_people_contacts:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v1, p0, Lcom/instagram/android/widget/e;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/ax;->x_contacts:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_12
.end method