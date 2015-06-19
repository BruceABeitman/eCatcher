.class public final Lcom/spotify/mobile/android/ui/page/a/g;
.super Lcom/spotify/mobile/android/ui/page/a/f;
.source "SourceFile"
.field private b:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/page/a/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
const v0, 0x7f0300a8
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a/g;->b(I)V
const v0, 0x7f0a021e
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a/g;->c(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iput-object p3, p0, Lcom/spotify/mobile/android/ui/page/a/g;->b:Ljava/lang/String;
return-void
.end method
.method protected final c()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "progress:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/g;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method