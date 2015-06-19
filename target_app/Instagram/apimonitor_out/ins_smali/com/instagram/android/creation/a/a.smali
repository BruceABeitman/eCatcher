.class final Lcom/instagram/android/creation/a/a;
.super Ljava/lang/Object;
.source "ChildFragmentShareModeSelectorDelegate.java"
.field private final a:Landroid/widget/TextView;
.field private final b:Landroid/widget/TextView;
.method constructor <init>(Landroid/view/View;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Lcom/facebook/av;->view_switcher_button_left:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->followers:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/facebook/av;->view_switcher_button_right:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->direct:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;
invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->view_switcher_text_selected_green:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
return-void
.end method
.method static synthetic b(I)V
.registers 1
invoke-static {p0}, Lcom/instagram/android/creation/a/a;->c(I)V
return-void
.end method
.method private static c(I)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v3, Landroid/content/Intent;
const-string v0, "MetadataFragment.INTENT_ACTION_SHARE_MODE_CHANGE"
invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v4, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"
if-nez p0, :cond_1c
move v0, v1
:goto_e
invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"
if-ne p0, v1, :cond_1e
:goto_15
invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-static {v3}, Lcom/instagram/common/u/d;->b(Landroid/content/Intent;)V
return-void
:cond_1c
move v0, v2
goto :goto_e
:cond_1e
move v1, v2
goto :goto_15
.end method
.method final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/android/creation/a/b;
invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/b;-><init>(Lcom/instagram/android/creation/a/a;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/android/creation/a/c;
invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/c;-><init>(Lcom/instagram/android/creation/a/a;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method final a(I)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v3, p0, Lcom/instagram/android/creation/a/a;->a:Landroid/widget/TextView;
if-nez p1, :cond_12
move v0, v1
:goto_7
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/android/creation/a/a;->b:Landroid/widget/TextView;
if-ne p1, v1, :cond_14
:goto_e
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V
return-void
:cond_12
move v0, v2
goto :goto_7
:cond_14
move v1, v2
goto :goto_e
.end method