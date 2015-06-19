.class public abstract Lcom/spotify/mobile/android/service/flow/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c(I)V
.registers 2
return-void
.end method
.method public x()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;
const-string v1, "A FlowLogicFragment must be set before the FlowFragment can be used."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method