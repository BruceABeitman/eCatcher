.class  Lcom/google/android/gms/tagmanager/ad;
.super Lcom/google/android/gms/tagmanager/dc;
.field private static final ID:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->ai:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ad;->ID:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/google/android/gms/tagmanager/ad;->ID:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dc;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
.registers 5
invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method