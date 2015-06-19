.class final Lit/sephiroth/android/library/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lit/sephiroth/android/library/widget/HListView;
.field private b:I
.field private c:I
.method private constructor <init>(Lit/sephiroth/android/library/widget/HListView;)V
.registers 2
iput-object p1, p0, Lit/sephiroth/android/library/widget/v;->a:Lit/sephiroth/android/library/widget/HListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/HListView;B)V
.registers 3
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/v;-><init>(Lit/sephiroth/android/library/widget/HListView;)V
return-void
.end method
.method public final a(II)Lit/sephiroth/android/library/widget/v;
.registers 3
iput p1, p0, Lit/sephiroth/android/library/widget/v;->b:I
iput p2, p0, Lit/sephiroth/android/library/widget/v;->c:I
return-object p0
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lit/sephiroth/android/library/widget/v;->a:Lit/sephiroth/android/library/widget/HListView;
iget v1, p0, Lit/sephiroth/android/library/widget/v;->b:I
iget v2, p0, Lit/sephiroth/android/library/widget/v;->c:I
invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->b(II)V
return-void
.end method