.class public Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;
.super Lcom/spotify/mobile/android/ui/view/AlbumHeaderView;
.source "SourceFile"
.field  a:Lcom/spotify/mobile/android/ui/view/ListHeaderView;
.field  b:Lcom/spotify/android/paste/widget/HeaderView;
.field  c:Landroid/widget/ImageView;
.field private d:Landroid/widget/Button;
.field private e:Landroid/widget/LinearLayout;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v2, -0x2
const/4 v3, 0x1
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/view/AlbumHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/spotify/mobile/android/ui/view/ListHeaderView;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->a:Lcom/spotify/mobile/android/ui/view/ListHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->a:Lcom/spotify/mobile/android/ui/view/ListHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->b:Lcom/spotify/android/paste/widget/HeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->a:Lcom/spotify/mobile/android/ui/view/ListHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a()Landroid/widget/ImageView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->c:Landroid/widget/ImageView;
new-instance v0, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getContext()Landroid/content/Context;
move-result-object v0
const v2, 0x7f01019a
invoke-static {v0, v1, v2}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getContext()Landroid/content/Context;
move-result-object v0
const v2, 0x7f0f002f
invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->d:Landroid/widget/Button;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->d:Landroid/widget/Button;
new-instance v2, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;-><init>(Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->d:Landroid/widget/Button;
invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v2, 0x4080
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v2
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->d:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->a:Lcom/spotify/mobile/android/ui/view/ListHeaderView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->e:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/ListHeaderView;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->a:Lcom/spotify/mobile/android/ui/view/ListHeaderView;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->addView(Landroid/view/View;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->f:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->g:Ljava/lang/String;
return-object v0
.end method