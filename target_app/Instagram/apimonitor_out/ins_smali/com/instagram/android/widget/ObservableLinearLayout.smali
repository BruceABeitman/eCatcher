.class public Lcom/instagram/android/widget/ObservableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ObservableLinearLayout.java"
.field private a:Lcom/instagram/android/widget/p;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onSizeChanged(IIII)V
.registers 6
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V
iget-object v0, p0, Lcom/instagram/android/widget/ObservableLinearLayout;->a:Lcom/instagram/android/widget/p;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/widget/ObservableLinearLayout;->a:Lcom/instagram/android/widget/p;
invoke-interface {v0, p2, p4}, Lcom/instagram/android/widget/p;->a(II)V
:cond_c
return-void
.end method
.method public setOnSizeChangedListener(Lcom/instagram/android/widget/p;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/ObservableLinearLayout;->a:Lcom/instagram/android/widget/p;
return-void
.end method