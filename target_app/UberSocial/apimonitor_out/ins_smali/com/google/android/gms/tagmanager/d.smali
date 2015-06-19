.class  Lcom/google/android/gms/tagmanager/d;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/ez;
.field final synthetic a:Lcom/google/android/gms/tagmanager/a;
.method private constructor <init>(Lcom/google/android/gms/tagmanager/a;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/d;->a:Lcom/google/android/gms/tagmanager/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/a$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/d;-><init>(Lcom/google/android/gms/tagmanager/a;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->a:Lcom/google/android/gms/tagmanager/a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/a;->f(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/b;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
move-result-object v0
goto :goto_9
.end method