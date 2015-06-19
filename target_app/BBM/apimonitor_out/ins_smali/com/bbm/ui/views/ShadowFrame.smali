.class public Lcom/bbm/ui/views/ShadowFrame;
.super Landroid/widget/RelativeLayout;
.source "ShadowFrame.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;->a(Landroid/content/Context;)V
return-void
.end method
.method protected a(Landroid/content/Context;)V
.registers 4
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f0300fd
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
return-void
.end method
.method public setViewStub(I)V
.registers 4
const v1, 0x7f0a04e8
invoke-virtual {p0, v1}, Lcom/bbm/ui/views/ShadowFrame;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewStub;
check-cast v0, Landroid/view/ViewStub;
invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V
invoke-virtual {p0, v1}, Lcom/bbm/ui/views/ShadowFrame;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewStub;
check-cast v0, Landroid/view/ViewStub;
invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
return-void
.end method