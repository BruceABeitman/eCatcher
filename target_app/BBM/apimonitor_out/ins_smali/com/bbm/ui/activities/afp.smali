.class final Lcom/bbm/ui/activities/afp;
.super Landroid/widget/BaseAdapter;
.source "SetChannelAvatarActivity.java"
.implements Landroid/widget/ListAdapter;
.field final synthetic a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
.field private final b:Landroid/view/LayoutInflater;
.method public constructor <init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/afp;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/afp;->b:Landroid/view/LayoutInflater;
return-void
.end method
.method public final a(I)Lcom/bbm/ui/activities/afo;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/afp;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/afo;
return-object v0
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/afp;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/afp;->a(I)Lcom/bbm/ui/activities/afo;
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
if-nez p2, :cond_40
new-instance v1, Lcom/bbm/ui/activities/afr;
iget-object v0, p0, Lcom/bbm/ui/activities/afp;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
invoke-direct {v1, v0}, Lcom/bbm/ui/activities/afr;-><init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/afp;->b:Landroid/view/LayoutInflater;
const v2, 0x7f0300ab
const/4 v3, 0x0
invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
const v0, 0x7f0a0413
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/bbm/ui/activities/afr;->a:Landroid/widget/ImageView;
const v0, 0x7f0a0414
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/bbm/ui/activities/afr;->b:Landroid/widget/TextView;
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v0, v1
:goto_2d
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/afp;->a(I)Lcom/bbm/ui/activities/afo;
move-result-object v1
iget-object v2, v0, Lcom/bbm/ui/activities/afr;->a:Landroid/widget/ImageView;
iget v3, v1, Lcom/bbm/ui/activities/afo;->a:I
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, v0, Lcom/bbm/ui/activities/afr;->b:Landroid/widget/TextView;
iget-object v1, v1, Lcom/bbm/ui/activities/afo;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
:cond_40
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/afr;
goto :goto_2d
.end method