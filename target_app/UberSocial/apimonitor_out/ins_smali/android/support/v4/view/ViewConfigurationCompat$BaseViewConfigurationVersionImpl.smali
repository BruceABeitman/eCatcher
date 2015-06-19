.class  Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
.registers 3
invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v0
return v0
.end method