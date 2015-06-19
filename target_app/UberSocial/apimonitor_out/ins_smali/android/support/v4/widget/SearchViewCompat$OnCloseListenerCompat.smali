.class public abstract Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;
.super Ljava/lang/Object;
.source "SourceFile"
.field final mListener:Ljava/lang/Object;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Landroid/support/v4/widget/SearchViewCompat;->access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
move-result-object v0
invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;->mListener:Ljava/lang/Object;
return-void
.end method
.method public onClose()Z
.registers 2
const/4 v0, 0x0
return v0
.end method