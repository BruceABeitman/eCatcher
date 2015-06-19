.class public Lcom/facebook/widget/c;
.super Lcom/facebook/widget/af;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.UserId"
.field public static final b:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.MultiSelect"
.field private static final j:Ljava/lang/String; = "id"
.field private static final k:Ljava/lang/String; = "name"
.field private l:Ljava/lang/String;
.field private m:Z
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/facebook/widget/c;-><init>(Landroid/os/Bundle;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 4
const-class v0, Lcom/facebook/c/j;
sget v1, Lcom/facebook/a/s;->com_facebook_friendpickerfragment:I
invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/af;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/c;->m:Z
invoke-direct {p0, p1}, Lcom/facebook/widget/c;->c(Landroid/os/Bundle;)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/aw;)Lcom/facebook/ai;
.registers 9
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/friends"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {p3, v0, v1}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Ljava/lang/String;Lcom/facebook/aj;)Lcom/facebook/ai;
move-result-object v0
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "id"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "name"
aput-object v4, v2, v3
invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
iget-object v2, p0, Lcom/facebook/widget/c;->i:Lcom/facebook/widget/e;
invoke-virtual {v2}, Lcom/facebook/widget/e;->j()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3c
invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_3c
invoke-virtual {v0}, Lcom/facebook/ai;->d()Landroid/os/Bundle;
move-result-object v2
const-string v3, "fields"
const-string v4, ","
invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/facebook/ai;->a(Landroid/os/Bundle;)V
return-object v0
.end method
.method private c(Landroid/os/Bundle;)V
.registers 4
if-eqz p1, :cond_1e
const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_13
const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/widget/c;->a(Ljava/lang/String;)V
:cond_13
const-string v0, "com.facebook.widget.FriendPickerFragment.MultiSelect"
iget-boolean v1, p0, Lcom/facebook/widget/c;->m:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
invoke-virtual {p0, v0}, Lcom/facebook/widget/c;->a(Z)V
:cond_1e
return-void
.end method
.method  a(Lcom/facebook/aw;)Lcom/facebook/ai;
.registers 4
iget-object v0, p0, Lcom/facebook/widget/c;->i:Lcom/facebook/widget/e;
if-nez v0, :cond_c
new-instance v0, Lcom/facebook/t;
const-string v1, "Can\'t issue requests until Fragment has been created."
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/facebook/widget/c;->l:Ljava/lang/String;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/facebook/widget/c;->l:Ljava/lang/String;
:goto_12
iget-object v1, p0, Lcom/facebook/widget/c;->h:Ljava/util/HashSet;
invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/c;->a(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/aw;)Lcom/facebook/ai;
move-result-object v0
return-object v0
:cond_19
const-string v0, "me"
goto :goto_12
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->l:Ljava/lang/String;
return-object v0
.end method
.method public a(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/widget/af;->a(Landroid/os/Bundle;)V
invoke-direct {p0, p1}, Lcom/facebook/widget/c;->c(Landroid/os/Bundle;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/c;->l:Ljava/lang/String;
return-void
.end method
.method public a(Z)V
.registers 3
iget-boolean v0, p0, Lcom/facebook/widget/c;->m:Z
if-eq v0, p1, :cond_d
iput-boolean p1, p0, Lcom/facebook/widget/c;->m:Z
invoke-virtual {p0}, Lcom/facebook/widget/c;->f()Lcom/facebook/widget/ao;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/widget/c;->a(Lcom/facebook/widget/ao;)V
:cond_d
return-void
.end method
.method  b(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/facebook/widget/af;->b(Landroid/os/Bundle;)V
const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"
iget-object v1, p0, Lcom/facebook/widget/c;->l:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "com.facebook.widget.FriendPickerFragment.MultiSelect"
iget-boolean v1, p0, Lcom/facebook/widget/c;->m:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/c;->m:Z
return v0
.end method
.method public c()Ljava/util/List;
.registers 2
invoke-virtual {p0}, Lcom/facebook/widget/c;->s()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method  d()Lcom/facebook/widget/an;
.registers 5
const/4 v2, 0x1
new-instance v0, Lcom/facebook/widget/c$1;
invoke-virtual {p0}, Lcom/facebook/widget/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/facebook/widget/c$1;-><init>(Lcom/facebook/widget/c;Landroid/content/Context;)V
invoke-virtual {v0, v2}, Lcom/facebook/widget/an;->b(Z)V
invoke-virtual {p0}, Lcom/facebook/widget/c;->n()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/facebook/widget/an;->a(Z)V
new-array v1, v2, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "name"
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/widget/an;->a(Ljava/util/List;)V
const-string v1, "name"
invoke-virtual {v0, v1}, Lcom/facebook/widget/an;->a(Ljava/lang/String;)V
return-object v0
.end method
.method  e()Lcom/facebook/widget/ah;
.registers 3
new-instance v0, Lcom/facebook/widget/d;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/widget/d;-><init>(Lcom/facebook/widget/c;Lcom/facebook/widget/c$1;)V
return-object v0
.end method
.method  f()Lcom/facebook/widget/ao;
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/c;->m:Z
if-eqz v0, :cond_a
new-instance v0, Lcom/facebook/widget/ai;
invoke-direct {v0, p0}, Lcom/facebook/widget/ai;-><init>(Lcom/facebook/widget/af;)V
:goto_9
return-object v0
:cond_a
new-instance v0, Lcom/facebook/widget/ap;
invoke-direct {v0, p0}, Lcom/facebook/widget/ap;-><init>(Lcom/facebook/widget/af;)V
goto :goto_9
.end method
.method  g()Ljava/lang/String;
.registers 2
sget v0, Lcom/facebook/a/t;->com_facebook_choose_friends:I
invoke-virtual {p0, v0}, Lcom/facebook/widget/c;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/af;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
sget-object v0, Lcom/facebook/a/v;->com_facebook_friend_picker_fragment:[I
invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/facebook/widget/c;->m:Z
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {p0, v1}, Lcom/facebook/widget/c;->a(Z)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method