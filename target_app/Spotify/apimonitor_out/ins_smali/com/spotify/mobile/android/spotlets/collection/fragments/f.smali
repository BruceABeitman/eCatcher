.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
.super Landroid/support/v4/app/u;
.source "SourceFile"
.field  a:Landroid/support/v4/app/r;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
.field private c:Landroid/util/SparseArray;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;Landroid/support/v4/app/r;Landroid/os/Bundle;)V
.registers 9
const/4 v0, 0x0
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-direct {p0, p2}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/r;)V
new-instance v1, Landroid/util/SparseArray;
invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->a:Landroid/support/v4/app/r;
if-eqz p3, :cond_47
const-string v1, "pager_size"
invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
:goto_17
if-ge v0, v1, :cond_47
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "pager_key"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "pager_value"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_47
return-void
.end method
.method public final a(I)Landroid/support/v4/app/Fragment;
.registers 4
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$2;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-static {v1, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;I)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_3e
const-string v0, "Invalid page requested from page adapter"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_17
return-object v0
:pswitch_18
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->E()Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
move-result-object v0
goto :goto_17
:pswitch_1d
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->E()Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
move-result-object v0
goto :goto_17
:pswitch_22
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->E()Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
move-result-object v0
goto :goto_17
:pswitch_27
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
move-result-object v0
goto :goto_17
:pswitch_38
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->E()Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
move-result-object v0
goto :goto_17
nop
:pswitch_data_3e
.packed-switch 0x1
:pswitch_18
:pswitch_1d
:pswitch_22
:pswitch_27
:pswitch_38
.end packed-switch
.end method
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 6
invoke-super {p0, p1, p2}, Landroid/support/v4/app/u;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p_()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-ge v1, v0, :cond_40
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "pager_key"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I
move-result v2
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "pager_value"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_40
const-string v0, "pager_size"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
move-result-object v0
array-length v0, v0
return v0
.end method
.method public final b(I)Ljava/lang/CharSequence;
.registers 4
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$2;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-static {v1, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;I)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4c
const-string v0, "Invalid page provided to getPageTitle in page adapter"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
const-string v0, ""
:goto_18
return-object v0
:pswitch_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
const v1, 0x7f0f0114
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(I)Ljava/lang/String;
move-result-object v0
goto :goto_18
:pswitch_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
const v1, 0x7f0f0113
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(I)Ljava/lang/String;
move-result-object v0
goto :goto_18
:pswitch_2d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
const v1, 0x7f0f010f
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(I)Ljava/lang/String;
move-result-object v0
goto :goto_18
:pswitch_37
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
const v1, 0x7f0f0115
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(I)Ljava/lang/String;
move-result-object v0
goto :goto_18
:pswitch_41
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
const v1, 0x7f0f010c
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(I)Ljava/lang/String;
move-result-object v0
goto :goto_18
nop
:pswitch_data_4c
.packed-switch 0x1
:pswitch_19
:pswitch_23
:pswitch_37
:pswitch_41
:pswitch_2d
.end packed-switch
.end method
.method public final d(I)Landroid/support/v4/app/Fragment;
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->a:Landroid/support/v4/app/r;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->c:Landroid/util/SparseArray;
invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
return-object v0
.end method