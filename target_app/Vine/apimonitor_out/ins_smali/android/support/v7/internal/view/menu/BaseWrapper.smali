.class  Landroid/support/v7/internal/view/menu/BaseWrapper;
.super Ljava/lang/Object;
.source "BaseWrapper.java"
.field final mWrappedObject:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Wrapped Object can not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;
return-void
.end method
.method public getWrappedObject()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;
return-object v0
.end method