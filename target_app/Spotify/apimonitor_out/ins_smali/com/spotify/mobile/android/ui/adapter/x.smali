.class public Lcom/spotify/mobile/android/ui/adapter/x;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/adapter/v;
.field private final a:Landroid/content/Context;
.field private final b:Landroid/util/SparseArray;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/x;->b:Landroid/util/SparseArray;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/x;->a:Landroid/content/Context;
return-void
.end method
.method public a(I)Landroid/view/View;
.registers 4
new-instance v0, Lcom/spotify/android/paste/widget/SectionHeaderView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/x;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method public a(ILandroid/view/View;Ljava/lang/String;)V
.registers 6
check-cast p2, Lcom/spotify/android/paste/widget/SectionHeaderView;
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a()V
invoke-virtual {p2, p3}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/x;->b:Landroid/util/SparseArray;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/w;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/x;->a:Landroid/content/Context;
:cond_15
return-void
.end method