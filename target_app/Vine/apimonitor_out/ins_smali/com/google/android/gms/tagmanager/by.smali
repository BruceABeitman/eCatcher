.class  Lcom/google/android/gms/tagmanager/by;
.super Ljava/lang/Object;
.field private final agl:Ljava/lang/Object;
.field private final agm:Z
.method constructor <init>(Ljava/lang/Object;Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/by;->agl:Ljava/lang/Object;
iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/by;->agm:Z
return-void
.end method
.method public getObject()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/by;->agl:Ljava/lang/Object;
return-object v0
.end method
.method public lV()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/by;->agm:Z
return v0
.end method