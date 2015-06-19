.class final Lcom/instagram/android/fragment/ax;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.field final synthetic a:Lcom/instagram/android/fragment/av;
.method constructor <init>(Lcom/instagram/android/fragment/av;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/av;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
.registers 7
if-nez p2, :cond_11
new-instance v0, Lcom/instagram/share/b/g;
const-string v1, ""
const-string v2, ""
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/share/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/instagram/share/b/a;->a(Lcom/instagram/share/b/g;)V
:goto_10
:cond_10
return-void
:cond_11
if-lez p2, :cond_10
add-int/lit8 v0, p2, -0x1
iget-object v1, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/av;
invoke-static {v1}, Lcom/instagram/android/fragment/av;->c(Lcom/instagram/android/fragment/av;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_10
iget-object v0, p0, Lcom/instagram/android/fragment/ax;->a:Lcom/instagram/android/fragment/av;
invoke-static {v0}, Lcom/instagram/android/fragment/av;->c(Lcom/instagram/android/fragment/av;)Ljava/util/List;
move-result-object v0
add-int/lit8 v1, p2, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/share/b/g;
invoke-static {v0}, Lcom/instagram/share/b/a;->a(Lcom/instagram/share/b/g;)V
goto :goto_10
.end method