.class  Lcom/google/android/gms/tagmanager/Container$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/s$a;
.field final synthetic aex:Lcom/google/android/gms/tagmanager/Container;
.method private constructor <init>(Lcom/google/android/gms/tagmanager/Container;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container$a;->aex:Lcom/google/android/gms/tagmanager/Container;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/Container$a;-><init>(Lcom/google/android/gms/tagmanager/Container;)V
return-void
.end method
.method public b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container$a;->aex:Lcom/google/android/gms/tagmanager/Container;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->bF(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
move-result-object v0
goto :goto_9
.end method