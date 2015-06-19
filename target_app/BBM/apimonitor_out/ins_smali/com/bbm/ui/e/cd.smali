.class public final Lcom/bbm/ui/e/cd;
.super Ljava/lang/Object;
.source "SystemMessageListAdapter.java"
.implements Landroid/widget/ExpandableListAdapter;
.field public static final a:[I
.field public b:Ljava/util/List;
.field private c:Ljava/util/List;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x1
new-array v0, v0, [I
aput v1, v0, v1
sput-object v0, Lcom/bbm/ui/e/cd;->a:[I
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/e/cd;->c:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/e/cd;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/DataSetObserver;
invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V
goto :goto_6
:cond_16
return-void
.end method
.method public final areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final getChild(II)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/cd;->getGroup(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_e
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_d
return-object v0
:cond_e
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
goto :goto_d
.end method
.method public final getChildId(II)J
.registers 6
const-wide/16 v1, -0x1
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/cd;->getGroup(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_c
move-wide v0, v1
:goto_b
return-wide v0
:cond_c
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gl;
if-nez v0, :cond_16
move-wide v0, v1
goto :goto_b
:cond_16
iget-object v0, v0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
int-to-long v0, v0
goto :goto_b
.end method
.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 12
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p4, :cond_13
invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300f5
invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p4
:cond_13
const v0, 0x7f0a04e6
invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0a04e5
invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iget-object v2, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/gl;
invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
invoke-static {v2, v5}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;Z)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:try_start_3b
invoke-static {v2, v1}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;Landroid/widget/ImageView;)V
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_47
:goto_3e
iget-boolean v1, v2, Lcom/bbm/d/gl;->c:Z
if-eqz v1, :cond_4f
const/4 v1, 0x0
invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_46
return-object p4
:catch_47
move-exception v3
const v3, 0x7f0203fe
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_3e
:cond_4f
invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_46
.end method
.method public final getChildrenCount(I)I
.registers 6
const/4 v1, 0x0
invoke-virtual {p0, p1}, Lcom/bbm/ui/e/cd;->getGroup(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_b
move v0, v1
:goto_a
return v0
:cond_b
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
const/4 v3, 0x1
if-gt v2, v3, :cond_14
move v0, v1
goto :goto_a
:cond_14
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_a
.end method
.method public final getCombinedChildId(JJ)J
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public final getCombinedGroupId(J)J
.registers 3
return-wide p1
.end method
.method public final getGroup(I)Ljava/lang/Object;
.registers 3
if-nez p1, :cond_5
iget-object v0, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
:goto_4
return-object v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method
.method public final getGroupCount()I
.registers 2
sget-object v0, Lcom/bbm/ui/e/cd;->a:[I
array-length v0, v0
return v0
.end method
.method public final getGroupId(I)J
.registers 4
sget-object v0, Lcom/bbm/ui/e/cd;->a:[I
array-length v0, v0
if-ge p1, v0, :cond_b
sget-object v0, Lcom/bbm/ui/e/cd;->a:[I
aget v0, v0, p1
int-to-long v0, v0
:goto_a
return-wide v0
:cond_b
const-wide/16 v0, -0x1
goto :goto_a
.end method
.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
const/4 v8, 0x0
const/4 v4, 0x1
const/4 v5, 0x0
if-nez p3, :cond_14
invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300f5
invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p3
:cond_14
invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v0, 0x7f0a04e6
invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0a04e5
invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
const v2, 0x7f0a04e7
invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iget-object v6, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
if-le v6, v4, :cond_a7
if-eqz p2, :cond_86
const v6, 0x7f0e06f2
invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
new-array v6, v4, [Ljava/lang/Object;
iget-object v7, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v5
invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_5d
const v3, 0x7f020400
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setActivated(Z)V
iget-object v1, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_6f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_d2
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/gl;
iget-boolean v1, v1, Lcom/bbm/d/gl;->c:Z
if-nez v1, :cond_6f
move v1, v4
:goto_80
if-eqz v1, :cond_a3
invoke-virtual {v0, v8, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_85
return-object p3
:cond_86
const v6, 0x7f0e06f1
invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
new-array v6, v4, [Ljava/lang/Object;
iget-object v7, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v5
invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_5d
:cond_a3
invoke-virtual {v0, v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_85
:cond_a7
iget-object v3, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/bbm/d/gl;
invoke-static {v3, v4}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;Z)Ljava/lang/String;
move-result-object v6
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:try_start_b6
invoke-static {v3, v1}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;Landroid/widget/ImageView;)V
:try_end_b9
.catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_c6
:goto_b9
iget-boolean v1, v3, Lcom/bbm/d/gl;->c:Z
if-eqz v1, :cond_ce
invoke-virtual {v0, v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_c0
const/16 v0, 0x8
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_85
:catch_c6
move-exception v6
const v6, 0x7f0203fe
invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_b9
:cond_ce
invoke-virtual {v0, v8, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_c0
:cond_d2
move v1, v5
goto :goto_80
.end method
.method public final hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isChildSelectable(II)Z
.registers 4
const/4 v0, 0x1
return v0
.end method
.method public final isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method
.method public final onGroupCollapsed(I)V
.registers 2
return-void
.end method
.method public final onGroupExpanded(I)V
.registers 2
return-void
.end method
.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/bbm/ui/e/cd;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lcom/bbm/ui/e/cd;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_f
return-void
.end method
.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/bbm/ui/e/cd;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/bbm/ui/e/cd;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_f
return-void
.end method