.class final Lcom/instagram/android/creation/a/q;
.super Lcom/instagram/ui/widget/searchedittext/b;
.source "DirectShareFragment.java"
.field final synthetic a:Lcom/instagram/android/creation/a/d;
.method private constructor <init>(Lcom/instagram/android/creation/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;
invoke-direct {p0}, Lcom/instagram/ui/widget/searchedittext/b;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/creation/a/d;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/q;-><init>(Lcom/instagram/android/creation/a/d;)V
return-void
.end method
.method public final a(Lcom/instagram/ui/widget/searchedittext/SearchEditText;Ljava/lang/CharSequence;)V
.registers 5
invoke-virtual {p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v1}, Lcom/instagram/android/creation/a/d;->f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/i;->getFilter()Landroid/widget/Filter;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2e
iget-object v1, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v1, v0}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->b(Lcom/instagram/android/creation/a/d;)V
:goto_2d
:cond_2d
return-void
:cond_2e
iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->e(Lcom/instagram/android/creation/a/d;)V
goto :goto_2d
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/a/q;->a:Lcom/instagram/android/creation/a/d;
invoke-virtual {v0, p1}, Lcom/instagram/android/creation/a/d;->a(Ljava/lang/String;)V
return-void
.end method