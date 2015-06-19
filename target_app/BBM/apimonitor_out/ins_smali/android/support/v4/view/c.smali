.class final Landroid/support/v4/view/c;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"
.implements Landroid/support/v4/view/j;
.field final synthetic a:Landroid/support/v4/view/a;
.field final synthetic b:Landroid/support/v4/view/b;
.method constructor <init>(Landroid/support/v4/view/b;Landroid/support/v4/view/a;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/c;->b:Landroid/support/v4/view/b;
iput-object p2, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/View;I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
invoke-static {p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;I)V
return-void
.end method
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
new-instance v1, Landroid/support/v4/view/a/a;
invoke-direct {v1, p2}, Landroid/support/v4/view/a/a;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
invoke-static {p1, p2}, Landroid/support/v4/view/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/a;
invoke-static {p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method