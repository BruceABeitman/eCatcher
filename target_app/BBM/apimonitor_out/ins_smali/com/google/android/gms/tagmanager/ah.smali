.class  Lcom/google/android/gms/tagmanager/ah;
.super Lcom/google/android/gms/tagmanager/aj;
.field private static final ID:Ljava/lang/String;
.field private final TO:Lcom/google/android/gms/tagmanager/ct;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->T:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ah;->ID:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/tagmanager/ct;)V
.registers 4
sget-object v0, Lcom/google/android/gms/tagmanager/ah;->ID:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ah;->TO:Lcom/google/android/gms/tagmanager/ct;
return-void
.end method
.method public iy()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public u(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ah;->TO:Lcom/google/android/gms/tagmanager/ct;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ct;->jY()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_d
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
move-result-object v0
goto :goto_c
.end method