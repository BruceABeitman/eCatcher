.class public final Lcom/instagram/android/d/n;
.super Lcom/instagram/android/d/f;
.source "UpdateAvatarHelper.java"
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/d/f;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
return-void
.end method
.method private a()Lcom/instagram/android/d/o;
.registers 5
new-instance v0, Lcom/instagram/android/d/o;
iget-object v1, p0, Lcom/instagram/android/d/n;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/d/n;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/d/j;
invoke-direct {v3, p0}, Lcom/instagram/android/d/j;-><init>(Lcom/instagram/android/d/f;)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/d/o;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
return-object v0
.end method
.method protected final a(Landroid/net/Uri;)V
.registers 4
invoke-direct {p0}, Lcom/instagram/android/d/n;->a()Lcom/instagram/android/d/o;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/d/o;->a(Landroid/net/Uri;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/instagram/android/d/o;->a(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/d/n;->a:[Ljava/lang/CharSequence;
return-void
.end method
.method protected final b()V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/d/n;->a()Lcom/instagram/android/d/o;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/d/o;->e()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/d/n;->a:[Ljava/lang/CharSequence;
return-void
.end method
.method public final b(Landroid/content/Context;)[Ljava/lang/CharSequence;
.registers 4
iget-object v0, p0, Lcom/instagram/android/d/n;->a:[Ljava/lang/CharSequence;
if-nez v0, :cond_54
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v1
if-eqz v1, :cond_22
invoke-virtual {v1}, Lcom/instagram/user/c/a;->e()Z
move-result v1
if-nez v1, :cond_22
sget v1, Lcom/facebook/az;->remove_current_picture:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_22
sget v1, Lcom/facebook/az;->take_picture:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget v1, Lcom/facebook/az;->choose_from_library:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget v1, Lcom/facebook/az;->import_from_facebook:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget v1, Lcom/facebook/az;->import_from_twitter:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Ljava/lang/CharSequence;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/CharSequence;
iput-object v0, p0, Lcom/instagram/android/d/n;->a:[Ljava/lang/CharSequence;
:cond_54
iget-object v0, p0, Lcom/instagram/android/d/n;->a:[Ljava/lang/CharSequence;
return-object v0
.end method
.method protected final e()V
.registers 3
invoke-direct {p0}, Lcom/instagram/android/d/n;->a()Lcom/instagram/android/d/o;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/d/o;->a(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/d/n;->a:[Ljava/lang/CharSequence;
return-void
.end method
.method protected final f()V
.registers 3
invoke-direct {p0}, Lcom/instagram/android/d/n;->a()Lcom/instagram/android/d/o;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/android/d/o;->a(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/d/n;->a:[Ljava/lang/CharSequence;
return-void
.end method
.method protected final i()Z
.registers 2
const/4 v0, 0x0
return v0
.end method