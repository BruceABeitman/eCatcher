.class public final Lcom/bbm/ui/activities/dg;
.super Lcom/bbm/ui/ef;
.source "ChannelPickerActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/ChannelPickerActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/ChannelPickerActivity;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/dg;->b:Lcom/bbm/ui/activities/ChannelPickerActivity;
invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/dg;->b:Lcom/bbm/ui/activities/ChannelPickerActivity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300b5
invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/dh;
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/dh;-><init>(Lcom/bbm/ui/activities/dg;B)V
const v0, 0x7f0a0429
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/dh;->b:Landroid/widget/TextView;
const v0, 0x7f0a042a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/dh;->c:Landroid/widget/TextView;
const v0, 0x7f0a0428
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/dh;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/bbm/d/ec;
iget-object v0, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
return-object v0
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 6
check-cast p2, Lcom/bbm/d/ec;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/dh;
iget-object v1, v0, Lcom/bbm/ui/activities/dh;->b:Landroid/widget/TextView;
iget-object v2, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/bbm/ui/activities/dh;->c:Landroid/widget/TextView;
iget-object v2, p2, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/bbm/ui/activities/dh;->a:Lcom/bbm/ui/ObservingImageView;
iget-object v2, p0, Lcom/bbm/ui/activities/dg;->b:Lcom/bbm/ui/activities/ChannelPickerActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ChannelPickerActivity;->b(Lcom/bbm/ui/activities/ChannelPickerActivity;)Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2, p2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v1, v0, Lcom/bbm/ui/activities/dh;->c:Landroid/widget/TextView;
iget-object v0, p2, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_33
iget-object v0, p2, Lcom/bbm/d/ec;->j:Ljava/lang/String;
if-nez v0, :cond_39
:cond_33
const/16 v0, 0x8
:goto_35
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
return-void
:cond_39
const/4 v0, 0x0
goto :goto_35
.end method