.class final Lit/sephiroth/android/library/widget/am;
.super Ljava/lang/Object;
.source "HListView.java"
.implements Ljava/lang/Runnable;
.field  a:I
.field  b:I
.field final synthetic c:Lit/sephiroth/android/library/widget/HListView;
.method private constructor <init>(Lit/sephiroth/android/library/widget/HListView;)V
.registers 2
iput-object p1, p0, Lit/sephiroth/android/library/widget/am;->c:Lit/sephiroth/android/library/widget/HListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/HListView;B)V
.registers 3
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/am;-><init>(Lit/sephiroth/android/library/widget/HListView;)V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lit/sephiroth/android/library/widget/am;->c:Lit/sephiroth/android/library/widget/HListView;
iget v1, p0, Lit/sephiroth/android/library/widget/am;->a:I
iget v2, p0, Lit/sephiroth/android/library/widget/am;->b:I
invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V
return-void
.end method