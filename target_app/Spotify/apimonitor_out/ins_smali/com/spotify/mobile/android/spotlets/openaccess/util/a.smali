.class public final Lcom/spotify/mobile/android/spotlets/openaccess/util/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 5
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
invoke-static {p0, v0}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
const v2, 0x7f0a025a
invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V
const v2, 0x7f0f029f
invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/Button;->setSingleLine(Z)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v0
.end method