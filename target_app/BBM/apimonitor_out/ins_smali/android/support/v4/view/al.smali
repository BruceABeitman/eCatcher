.class final Landroid/support/v4/view/al;
.super Ljava/lang/Object;
.source "PagerTitleStrip.java"
.implements Landroid/support/v4/view/aj;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/widget/TextView;)V
.registers 4
new-instance v0, Landroid/support/v4/view/an;
invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/view/an;-><init>(Landroid/content/Context;)V
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return-void
.end method