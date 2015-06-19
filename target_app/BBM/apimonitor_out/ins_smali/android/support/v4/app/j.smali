.class final Landroid/support/v4/app/j;
.super Ljava/lang/Object;
.source "FragmentActivity.java"
.implements Landroid/support/v4/app/m;
.field final synthetic a:Landroid/support/v4/app/h;
.method constructor <init>(Landroid/support/v4/app/h;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/j;->a:Landroid/support/v4/app/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)Landroid/view/View;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/support/v4/app/h;
invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->findViewById(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method