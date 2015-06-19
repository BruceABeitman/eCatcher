.class public final Lcom/google/android/gms/internal/bo;
.super Landroid/widget/FrameLayout;
.implements Landroid/view/View$OnClickListener;
.field private final a:Landroid/app/Activity;
.field private final b:Landroid/widget/ImageButton;
.method public constructor <init>(Landroid/app/Activity;I)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object p1, p0, Lcom/google/android/gms/internal/bo;->a:Landroid/app/Activity;
invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/bo;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Landroid/widget/ImageButton;
invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/internal/bo;->b:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/google/android/gms/internal/bo;->b:Landroid/widget/ImageButton;
const v1, 0x1080017
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/bo;->b:Landroid/widget/ImageButton;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/bo;->b:Landroid/widget/ImageButton;
invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/google/android/gms/internal/bo;->b:Landroid/widget/ImageButton;
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V
invoke-static {p1, p2}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;I)I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/bo;->b:Landroid/widget/ImageButton;
new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
const/16 v3, 0x11
invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/bo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public a(Z)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/bo;->b:Landroid/widget/ImageButton;
if-eqz p1, :cond_9
const/4 v0, 0x4
:goto_5
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/bo; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/bo;->a:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
const-string v1, " - Lcom/google/android/gms/internal/bo; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method