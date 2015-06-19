.class  Lcom/google/android/gms/tagmanager/Container$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/s$a;
.field final synthetic TT:Lcom/google/android/gms/tagmanager/Container;
.method private constructor <init>(Lcom/google/android/gms/tagmanager/Container;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container$b;->TT:Lcom/google/android/gms/tagmanager/Container;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/Container$b;-><init>(Lcom/google/android/gms/tagmanager/Container;)V
return-void
.end method
.method public b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container$b;->TT:Lcom/google/android/gms/tagmanager/Container;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->aZ(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
move-result-object v0
if-eqz v0, :cond_b
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;->execute(Ljava/lang/String;Ljava/util/Map;)V
:cond_b
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kt()Ljava/lang/String;
move-result-object v0
return-object v0
.end method