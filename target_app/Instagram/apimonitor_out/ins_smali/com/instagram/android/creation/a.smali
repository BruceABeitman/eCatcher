.class public final Lcom/instagram/android/creation/a;
.super Ljava/lang/Object;
.source "CaptionBoxHelper.java"
.field private a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
.field private b:Lcom/instagram/creation/b/a/b;
.field private c:Landroid/view/View;
.field private d:Landroid/support/v4/app/Fragment;
.method public constructor <init>(Lcom/instagram/creation/b/a/b;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/creation/a;->b:Lcom/instagram/creation/b/a/b;
iput-object p2, p0, Lcom/instagram/android/creation/a;->c:Landroid/view/View;
iput-object p3, p0, Lcom/instagram/android/creation/a;->d:Landroid/support/v4/app/Fragment;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/creation/a;)Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a;->d:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method public static a(Landroid/view/View;)Ljava/lang/String;
.registers 2
sget v0, Lcom/facebook/av;->caption_text_view:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;
invoke-virtual {v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/view/View;Ljava/lang/String;)V
.registers 4
sget v0, Lcom/facebook/av;->caption_text_view:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;
invoke-virtual {v0, p1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setSelection(I)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/creation/a;)Lcom/instagram/creation/b/a/b;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a;->b:Lcom/instagram/creation/b/a/b;
return-object v0
.end method
.method public static b(Landroid/view/View;)V
.registers 2
sget v0, Lcom/facebook/av;->caption_text_view:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/creation/a;->c:Landroid/view/View;
sget v1, Lcom/facebook/av;->caption_text_view:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;
iput-object v0, p0, Lcom/instagram/android/creation/a;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
iget-object v0, p0, Lcom/instagram/android/creation/a;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->o()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->metadata_imageview_size:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/creation/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0, v0}, Lcom/instagram/n/c/a;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v1
iget-object v0, p0, Lcom/instagram/android/creation/a;->c:Landroid/view/View;
sget v2, Lcom/facebook/av;->metadata_imageview:I
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setImageBitmapAsLoaded(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/instagram/android/creation/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;
move-result-object v1
sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
if-ne v1, v2, :cond_65
new-instance v1, Lcom/instagram/android/creation/b;
invoke-direct {v1, p0}, Lcom/instagram/android/creation/b;-><init>(Lcom/instagram/android/creation/a;)V
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_41
:goto_41
iget-object v0, p0, Lcom/instagram/android/creation/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/instagram/android/creation/a;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
iget-object v1, p0, Lcom/instagram/android/creation/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
:cond_54
iget-object v0, p0, Lcom/instagram/android/creation/a;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
new-instance v1, Lcom/instagram/android/a/a;
iget-object v2, p0, Lcom/instagram/android/creation/a;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/android/a/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
:cond_65
iget-object v1, p0, Lcom/instagram/android/creation/a;->b:Lcom/instagram/creation/b/a/b;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->N()Z
move-result v1
if-eqz v1, :cond_41
iget-object v1, p0, Lcom/instagram/android/creation/a;->c:Landroid/view/View;
sget v2, Lcom/facebook/av;->caption_video_overlay:I
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v1, v2, :cond_41
new-instance v1, Lcom/instagram/android/creation/c;
invoke-direct {v1, p0}, Lcom/instagram/android/creation/c;-><init>(Lcom/instagram/android/creation/a;)V
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_41
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
invoke-virtual {v0}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method