.class public Lcom/spotify/mobile/android/ui/cell/NavigationCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public hasFocusable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V
const v0, 0x7f0a01fc
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/NavigationCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/NavigationCell;->a:Landroid/widget/TextView;
const v0, 0x7f0a01f8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/NavigationCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/NavigationCell;->b:Landroid/widget/ImageView;
return-void
.end method