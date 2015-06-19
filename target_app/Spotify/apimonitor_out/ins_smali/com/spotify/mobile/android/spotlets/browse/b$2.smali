.class final Lcom/spotify/mobile/android/spotlets/browse/b$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
.registers 13
const/4 v6, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->o()Z
move-result v0
if-nez v0, :cond_a
:cond_9
:goto_9
return-void
:cond_a
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->c:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_9
if-eqz p1, :cond_b0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_b0
invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;
invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/b$2$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b$2;Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;)V
new-instance v3, Lcom/spotify/mobile/android/spotlets/browse/b$2$2;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/browse/b$2$2;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b$2;)V
const-class v1, Lcom/spotify/mobile/android/util/df;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v1
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/browse/b;->j(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/browse/b;->j(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/browse/b;->j(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v4, Lcom/spotify/mobile/android/ui/c/a;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-direct {v4, v5, v6}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V
invoke-virtual {v1, v4}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/browse/b;->k(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ImageView;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/b;->l(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/b;->l(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/b;->l(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/b;->m(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->m(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->m(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto/16 :goto_9
:cond_b0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$2;->a:Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->n(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/ViewGroup;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
goto/16 :goto_9
.end method