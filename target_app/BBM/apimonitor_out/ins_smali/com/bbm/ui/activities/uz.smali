.class public final Lcom/bbm/ui/activities/uz;
.super Landroid/widget/ArrayAdapter;
.source "InviteActivity.java"
.implements Landroid/widget/ListAdapter;
.field final synthetic a:Lcom/bbm/ui/activities/InviteActivity;
.field private final b:Landroid/view/LayoutInflater;
.method public constructor <init>(Lcom/bbm/ui/activities/InviteActivity;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
const v0, 0x7f0300ec
invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V
invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/uz;->b:Landroid/view/LayoutInflater;
return-void
.end method
.method public final a(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->w(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;
move-result-object v0
aget-object v0, v0, p1
return-object v0
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->w(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;
move-result-object v0
array-length v0, v0
return v0
.end method
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
const/4 v2, 0x0
if-nez p2, :cond_6b
new-instance v1, Lcom/bbm/ui/activities/va;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/va;-><init>(Lcom/bbm/ui/activities/uz;)V
iget-object v0, p0, Lcom/bbm/ui/activities/uz;->b:Landroid/view/LayoutInflater;
const v3, 0x7f0300eb
invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
const v0, 0x7f0a04ca
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/bbm/ui/activities/va;->a:Landroid/widget/TextView;
const v0, 0x7f0a04cb
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/bbm/ui/activities/va;->b:Landroid/widget/TextView;
const v0, 0x7f0a04cc
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/bbm/ui/activities/va;->c:Landroid/widget/ImageView;
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v0, v1
:goto_36
iget-object v1, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/InviteActivity;->w(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;
move-result-object v1
aget-object v1, v1, p1
iget-object v3, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/InviteActivity;->n(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;
move-result-object v3
aget-object v3, v3, p1
iget-object v4, v0, Lcom/bbm/ui/activities/va;->a:Landroid/widget/TextView;
invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/bbm/ui/activities/va;->b:Landroid/widget/TextView;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/bbm/ui/activities/va;->c:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->x(Lcom/bbm/ui/activities/InviteActivity;)I
move-result v0
if-ne v0, p1, :cond_72
move v0, v2
:goto_5b
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->x(Lcom/bbm/ui/activities/InviteActivity;)I
move-result v0
if-ne v0, p1, :cond_67
const/4 v2, 0x1
:cond_67
invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V
return-object p2
:cond_6b
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/va;
goto :goto_36
:cond_72
const/4 v0, 0x4
goto :goto_5b
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/uz;->a(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
if-nez p2, :cond_39
new-instance v1, Lcom/bbm/ui/activities/va;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/va;-><init>(Lcom/bbm/ui/activities/uz;)V
iget-object v0, p0, Lcom/bbm/ui/activities/uz;->b:Landroid/view/LayoutInflater;
const v2, 0x7f0300ec
const/4 v3, 0x0
invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
const v0, 0x7f0a04ce
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/bbm/ui/activities/va;->b:Landroid/widget/TextView;
const v0, 0x7f0a04cf
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/bbm/ui/activities/va;->c:Landroid/widget/ImageView;
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v0, v1
:goto_2b
iget-object v1, p0, Lcom/bbm/ui/activities/uz;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/InviteActivity;->w(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;
move-result-object v1
aget-object v1, v1, p1
iget-object v0, v0, Lcom/bbm/ui/activities/va;->b:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
:cond_39
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/va;
goto :goto_2b
.end method