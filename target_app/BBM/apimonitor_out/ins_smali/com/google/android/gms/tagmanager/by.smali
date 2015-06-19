.class  Lcom/google/android/gms/tagmanager/by;
.super Ljava/lang/Object;
.field private final VI:Ljava/lang/Object;
.field private final VJ:Z
.method constructor <init>(Ljava/lang/Object;Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/by;->VI:Ljava/lang/Object;
iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/by;->VJ:Z
return-void
.end method
.method public getObject()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->VI:Ljava/lang/Object;
return-object v0
.end method
.method public jr()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/by;->VJ:Z
return v0
.end method