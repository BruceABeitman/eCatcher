.class  Lcom/google/android/gms/dynamic/a$4;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/dynamic/a$a;
.field final synthetic Ft:Lcom/google/android/gms/dynamic/a;
.field final synthetic Fw:Landroid/os/Bundle;
.field final synthetic Fx:Landroid/widget/FrameLayout;
.field final synthetic Fy:Landroid/view/LayoutInflater;
.field final synthetic Fz:Landroid/view/ViewGroup;
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/dynamic/a$4;->Ft:Lcom/google/android/gms/dynamic/a;
iput-object p2, p0, Lcom/google/android/gms/dynamic/a$4;->Fx:Landroid/widget/FrameLayout;
iput-object p3, p0, Lcom/google/android/gms/dynamic/a$4;->Fy:Landroid/view/LayoutInflater;
iput-object p4, p0, Lcom/google/android/gms/dynamic/a$4;->Fz:Landroid/view/ViewGroup;
iput-object p5, p0, Lcom/google/android/gms/dynamic/a$4;->Fw:Landroid/os/Bundle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/dynamic/a$4;->Fx:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V
iget-object v0, p0, Lcom/google/android/gms/dynamic/a$4;->Fx:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/google/android/gms/dynamic/a$4;->Ft:Lcom/google/android/gms/dynamic/a;
invoke-static {v1}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/dynamic/a$4;->Fy:Landroid/view/LayoutInflater;
iget-object v3, p0, Lcom/google/android/gms/dynamic/a$4;->Fz:Landroid/view/ViewGroup;
iget-object v4, p0, Lcom/google/android/gms/dynamic/a$4;->Fw:Landroid/os/Bundle;
invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method public getState()I
.registers 2
const/4 v0, 0x2
return v0
.end method