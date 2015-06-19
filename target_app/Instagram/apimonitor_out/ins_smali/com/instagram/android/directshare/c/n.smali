.class public final Lcom/instagram/android/directshare/c/n;
.super Ljava/lang/Object;
.source "InboxRowViewBinder.java"
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_inbox:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/directshare/c/q;
invoke-direct {v2}, Lcom/instagram/android/directshare/c/q;-><init>()V
sget v0, Lcom/facebook/av;->directshare_inbox_row_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->a:Landroid/view/View;
sget v0, Lcom/facebook/av;->row_inbox_thumbnail_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->b:Landroid/widget/FrameLayout;
sget v0, Lcom/facebook/av;->row_inbox_thumbnail:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;
sget v0, Lcom/facebook/av;->row_inbox_user_profile:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->d:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
sget v0, Lcom/facebook/av;->row_inbox_username:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->e:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_inbox_fullname:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->f:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_inbox_time:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->g:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_inbox_video_overlay:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->h:Landroid/widget/ImageView;
sget v0, Lcom/facebook/av;->row_inbox_tap_to_open:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->directshare_inbox_row_content_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/instagram/android/directshare/c/q;->j:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public static a(Landroid/content/Context;Lcom/instagram/android/directshare/c/q;Lcom/instagram/feed/d/l;)V
.registers 10
const/4 v6, 0x0
const/16 v5, 0x8
const/4 v4, 0x0
invoke-static {p2}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/feed/d/l;)I
move-result v0
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->g()Z
move-result v2
if-eqz v2, :cond_6b
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;
new-instance v3, Lcom/instagram/android/directshare/c/o;
invoke-direct {v3, p1}, Lcom/instagram/android/directshare/c/o;-><init>(Lcom/instagram/android/directshare/c/q;)V
invoke-virtual {v2, v3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V
:goto_1c
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->e()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->d:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->e:Landroid/widget/TextView;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_76
iget-object v1, p1, Lcom/instagram/android/directshare/c/q;->f:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
:goto_46
iget-object v1, p1, Lcom/instagram/android/directshare/c/q;->g:Landroid/widget/TextView;
invoke-virtual {p2, p0}, Lcom/instagram/feed/d/l;->c(Landroid/content/Context;)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget-object v1, Lcom/instagram/android/directshare/c/p;->a:[I
add-int/lit8 v0, v0, -0x1
aget v0, v1, v0
packed-switch v0, :pswitch_data_102
invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/n;->a(Lcom/instagram/android/directshare/c/q;Z)V
invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/n;->a(Lcom/instagram/android/directshare/c/q;I)V
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->g:Landroid/widget/TextView;
sget v1, Lcom/facebook/au;->feed_clock:I
invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
:goto_6a
return-void
:cond_6b
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;
invoke-virtual {v2, v6}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->h:Landroid/widget/ImageView;
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_1c
:cond_76
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->f:Landroid/widget/TextView;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p1, Lcom/instagram/android/directshare/c/q;->f:Landroid/widget/TextView;
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_46
:pswitch_85
const/4 v0, 0x1
invoke-static {p1, v0}, Lcom/instagram/android/directshare/c/n;->a(Lcom/instagram/android/directshare/c/q;Z)V
invoke-static {p1, v5}, Lcom/instagram/android/directshare/c/n;->a(Lcom/instagram/android/directshare/c/q;I)V
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->g()Z
move-result v0
if-eqz v0, :cond_d0
sget v0, Lcom/facebook/az;->video:I
:goto_9b
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->directshare_inbox_thumbnail_size:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iget-object v1, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
move-result-object v1
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
move-result v1
float-to-int v1, v1
if-le v1, v0, :cond_d3
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v1, -0x2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
goto :goto_6a
:cond_d0
sget v0, Lcom/facebook/az;->photo:I
goto :goto_9b
:cond_d3
iget-object v1, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
iget-object v2, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget v3, Lcom/facebook/au;->bg_row_pending_direct_share_thumbnail:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
goto/16 :goto_6a
:pswitch_ee
invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/n;->a(Lcom/instagram/android/directshare/c/q;Z)V
invoke-static {p1, v4}, Lcom/instagram/android/directshare/c/n;->a(Lcom/instagram/android/directshare/c/q;I)V
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->i:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p1, Lcom/instagram/android/directshare/c/q;->g:Landroid/widget/TextView;
sget v1, Lcom/facebook/au;->inbox_glyph_activity:I
invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
goto/16 :goto_6a
:pswitch_data_102
.packed-switch 0x1
:pswitch_85
:pswitch_ee
.end packed-switch
.end method
.method private static a(Lcom/instagram/android/directshare/c/q;I)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/q;->b:Landroid/widget/FrameLayout;
invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/q;->g:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V
return-void
.end method
.method private static a(Lcom/instagram/android/directshare/c/q;Z)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/directshare/c/q;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz p1, :cond_26
iget-object v1, p0, Lcom/instagram/android/directshare/c/q;->a:Landroid/view/View;
sget v2, Lcom/facebook/au;->bg_row_inbox_unread:I
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v1, p0, Lcom/instagram/android/directshare/c/q;->e:Landroid/widget/TextView;
sget v2, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, p0, Lcom/instagram/android/directshare/c/q;->f:Landroid/widget/TextView;
sget v2, Lcom/facebook/as;->accent_blue_light:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
:goto_25
return-void
:cond_26
iget-object v1, p0, Lcom/instagram/android/directshare/c/q;->a:Landroid/view/View;
sget v2, Lcom/facebook/au;->bg_simple_row:I
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v1, p0, Lcom/instagram/android/directshare/c/q;->e:Landroid/widget/TextView;
sget v2, Lcom/facebook/as;->grey_medium:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, p0, Lcom/instagram/android/directshare/c/q;->f:Landroid/widget/TextView;
sget v2, Lcom/facebook/as;->grey_light:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_25
.end method