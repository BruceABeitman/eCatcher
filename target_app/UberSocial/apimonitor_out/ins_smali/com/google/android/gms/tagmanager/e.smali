.class  Lcom/google/android/gms/tagmanager/e;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/ez;
.field final synthetic a:Lcom/google/android/gms/tagmanager/a;
.method private constructor <init>(Lcom/google/android/gms/tagmanager/a;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/e;->a:Lcom/google/android/gms/tagmanager/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/a$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/e;-><init>(Lcom/google/android/gms/tagmanager/a;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/e;->a:Lcom/google/android/gms/tagmanager/a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/a;->h(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/c;
move-result-object v0
if-eqz v0, :cond_b
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/c;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_b
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->f()Ljava/lang/String;
move-result-object v0
return-object v0
.end method