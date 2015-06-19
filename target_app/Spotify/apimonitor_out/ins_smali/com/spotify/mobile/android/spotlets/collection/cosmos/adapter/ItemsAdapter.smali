.class public abstract Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private static final b:I
.field protected final a:Landroid/content/Context;
.field private c:Ljava/util/List;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Z
.field private g:Z
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->values()[Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;
move-result-object v0
array-length v0, v0
sput v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->b:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->a:Landroid/content/Context;
return-void
.end method
.method protected final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->d:Ljava/lang/String;
return-object v0
.end method
.method protected abstract a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;Lcom/spotify/android/paste/widget/e;)V
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->d:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Ljava/lang/String;Z)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->e:Ljava/lang/String;
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->f:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->g:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public final a([Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;)V
.registers 4
if-nez p1, :cond_d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->notifyDataSetInvalidated()V
:goto_c
return-void
:cond_d
new-instance v0, Ljava/util/ArrayList;
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->notifyDataSetChanged()V
goto :goto_c
.end method
.method protected final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->e:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b
const-string v0, ""
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->e:Ljava/lang/String;
goto :goto_a
.end method
.method protected final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->f:Z
return v0
.end method
.method protected final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->g:Z
return v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;->getItemId()I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;->isHeader()Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->ordinal()I
move-result v0
:goto_14
return v0
:cond_15
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->ordinal()I
move-result v0
goto :goto_14
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->values()[Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->getItemViewType(I)I
move-result v1
aget-object v1, v0, v1
if-nez p2, :cond_6a
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;
if-ne v1, v0, :cond_4c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->a:Landroid/content/Context;
const v2, 0x7f0101c5
invoke-static {v0, p3, v2}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->a:Landroid/content/Context;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v2
:goto_26
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;
sget-object v3, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$1;->a:[I
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter$Type;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_6c
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "Unknown type "
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_4b
return-object v2
:cond_4c
new-instance v2, Lcom/spotify/android/paste/widget/SectionHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->a:Landroid/content/Context;
invoke-direct {v2, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V
goto :goto_26
:pswitch_54
invoke-static {v2}, Lcom/spotify/android/paste/widget/e;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/e;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;Lcom/spotify/android/paste/widget/e;)V
goto :goto_4b
:pswitch_5c
move-object v1, v2
check-cast v1, Lcom/spotify/android/paste/widget/SectionHeaderView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a()V
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;->getHeader()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Ljava/lang/String;)V
goto :goto_4b
:cond_6a
move-object v2, p2
goto :goto_26
:pswitch_data_6c
.packed-switch 0x1
:pswitch_54
:pswitch_5c
.end packed-switch
.end method
.method public getViewTypeCount()I
.registers 2
sget v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->b:I
return v0
.end method
.method public isEnabled(I)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/ItemsAdapter;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;->isHeader()Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method