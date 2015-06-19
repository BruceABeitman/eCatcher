.class  Lcom/google/android/gms/tagmanager/db$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/ej;
.field final synthetic a:Lcom/google/android/gms/tagmanager/db;
.method constructor <init>(Lcom/google/android/gms/tagmanager/db;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/db$2;->a:Lcom/google/android/gms/tagmanager/db;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Lcom/google/android/gms/tagmanager/dd;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/db$2;->a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/dd;)I
move-result v0
return v0
.end method
.method public a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/dd;)I
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/dd;->c()I
move-result v1
add-int/2addr v0, v1
return v0
.end method