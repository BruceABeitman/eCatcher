.class public Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;
.field private a:Landroid/widget/ImageView;
.field private b:Landroid/widget/TextView;
.field private c:Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03009a
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
const v0, 0x7f0a01f8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->a:Landroid/widget/ImageView;
const v0, 0x7f0a0258
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->a:Landroid/widget/ImageView;
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->c:Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;
return-object v0
.end method
.method public final a(I)V
.registers 2
return-void
.end method
.method public final b()I
.registers 2
const/4 v0, 0x0
return v0
.end method