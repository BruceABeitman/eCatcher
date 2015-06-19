.class public Landroid/support/v7/internal/widget/CompatTextView;
.super Landroid/widget/TextView;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Landroid/support/v7/a/n;->CompatTextView:[I
invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
if-eqz v1, :cond_1b
new-instance v0, Landroid/support/v7/internal/widget/v;
invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/v;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/CompatTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
:cond_1b
return-void
.end method