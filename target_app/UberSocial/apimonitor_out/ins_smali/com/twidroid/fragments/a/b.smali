.class public Lcom/twidroid/fragments/a/b;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"
.implements Lcom/viewpagerindicator/i;
.field private a:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V
new-instance v0, Ljava/util/ArrayList;
const/16 v1, 0x28
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
return-void
.end method
.method public a(Ljava/lang/String;)I
.registers 4
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
:goto_20
return v1
:cond_21
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_25
const/4 v1, -0x1
goto :goto_20
.end method
.method public a(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->S()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/fragments/base/o;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-virtual {p1, v0}, Lcom/twidroid/fragments/base/o;->c(I)V
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Landroid/support/v4/app/Fragment;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method public getItemPosition(Ljava/lang/Object;)I
.registers 4
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/fragments/a/b;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
invoke-virtual {v0, p1}, Lcom/twidroid/fragments/base/o;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
:goto_18
return v1
:cond_19
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_1d
const/4 v1, -0x2
goto :goto_18
.end method