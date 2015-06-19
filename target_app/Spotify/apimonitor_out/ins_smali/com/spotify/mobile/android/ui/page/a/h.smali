.class public final Lcom/spotify/mobile/android/ui/page/a/h;
.super Lcom/spotify/mobile/android/ui/page/a/f;
.source "SourceFile"
.field private b:I
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
.registers 7
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/page/a/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
const v0, 0x7f0300a9
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a/h;->b(I)V
iput p3, p0, Lcom/spotify/mobile/android/ui/page/a/h;->b:I
const v0, 0x7f0a033b
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a/h;->c(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0a00fd
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/page/a/h;->c(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
if-lez p3, :cond_33
const/4 v2, 0x0
:goto_27
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
if-gtz p3, :cond_36
const v0, 0x7f0f02da
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
:goto_32
return-void
:cond_33
const/16 v2, 0x8
goto :goto_27
:cond_36
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e000f
invoke-virtual {v0, v2, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_32
.end method
.method protected final c()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "skips:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/spotify/mobile/android/ui/page/a/h;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method