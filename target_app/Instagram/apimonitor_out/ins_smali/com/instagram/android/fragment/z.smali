.class public final Lcom/instagram/android/fragment/z;
.super Lcom/instagram/ui/widget/searchedittext/b;
.source "CompositeSearchFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/y;
.method protected constructor <init>(Lcom/instagram/android/fragment/y;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/b;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-virtual {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/y;Ljava/lang/String;)Ljava/lang/String;
if-eqz p2, :cond_25
invoke-interface {p2}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_25
const/4 v0, 0x0
invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
const/16 v1, 0x40
if-ne v0, v1, :cond_44
iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
sget v1, Lcom/instagram/android/fragment/ei;->b:I
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/y;->a(I)V
:goto_25
:cond_25
iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-static {v0}, Lcom/instagram/android/fragment/y;->d(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/em;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-static {v1}, Lcom/instagram/android/fragment/y;->c(Lcom/instagram/android/fragment/y;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/em;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-static {v0}, Lcom/instagram/android/fragment/y;->e(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ek;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-static {v1}, Lcom/instagram/android/fragment/y;->c(Lcom/instagram/android/fragment/y;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ek;->c(Ljava/lang/String;)V
return-void
:cond_44
const/16 v1, 0x23
if-ne v0, v1, :cond_25
iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
sget v1, Lcom/instagram/android/fragment/ei;->a:I
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/y;->a(I)V
goto :goto_25
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-static {v0}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/y;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V
iget-object v0, p0, Lcom/instagram/android/fragment/z;->a:Lcom/instagram/android/fragment/y;
invoke-static {v0}, Lcom/instagram/android/fragment/y;->b(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ee;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/ee;->b(Ljava/lang/String;)V
return-void
.end method